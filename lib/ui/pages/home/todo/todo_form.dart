import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/ui/pages/home/todo/todo_view_model.dart';
import '/ui/view_model/loading_state_view_model.dart';

// final _inputTitle = StateProvider((_) => '');

class TodoForm extends HookConsumerWidget {
  const TodoForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        useTextEditingController.fromValue(TextEditingValue.empty);
    final valid = useState<bool>(false);
    useEffect(
      () {
        controller.addListener(() {
          valid.value = controller.text.isNotEmpty;
        });
      },
      [controller],
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextFormField(
            maxLines: 1,
            decoration: InputDecoration(labelText: 'タスク名', hintText: '○○する'),
            controller: controller,
            // onChanged: (t) => title.state = t,
          ),
        ),
        SizedBox(width: 8),
        ElevatedButton(
          onPressed: !valid.value
              ? null
              : () async {
                  await ref.read(loadingStateViewModelProvider).loadingWhile(
                        () => ref
                            .read(todoViewModelProvider.notifier)
                            .create(controller.text),
                      );
                  FocusScope.of(context).unfocus();
                  controller.text = '';
                },
          child: Text('追加'),
        ),
      ],
    );
  }
}
