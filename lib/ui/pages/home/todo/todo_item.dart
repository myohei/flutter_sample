import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/models/todo/todo.dart';
import '/ui/hooks/use_color_scheme.dart';
import '/ui/pages/home/todo/todo_view_model.dart';
import '/ui/view_model/loading_state_view_model.dart';

class TodoItem extends HookConsumerWidget {
  const TodoItem({Key? key, required this.item}) : super(key: key);

  final Todo item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = useCS();
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            Checkbox(
              value: item.isCompleted,
              onChanged: (bool? value) async {
                if (value == null) {
                  return;
                }
                await ref.read(loadingStateViewModelProvider).loadingWhile(
                      () => ref
                          .read(todoViewModelProvider.notifier)
                          .completed(item.id, completed: value),
                    );
              },
            ),
            Expanded(
              child: Text(
                item.title,
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: cs.onSurface),
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.delete,
              ),
              onPressed: () async {
                await ref.read(loadingStateViewModelProvider).loadingWhile(
                      () => ref
                          .read(todoViewModelProvider.notifier)
                          .delete(item.id),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
