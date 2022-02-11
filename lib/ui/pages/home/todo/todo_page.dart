import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/fundation/extensions/async_snapshot.dart';
import '/ui/pages/home/todo/todo_form.dart';
import '/ui/pages/home/todo/todo_item.dart';
import '/ui/view_model/loading_state_view_model.dart';
import 'todo_view_model.dart';

class TodoPage extends HookConsumerWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoViewModelProvider);
    final snapshot = useFuture<void>(
      useMemoized(
        () {
          ref.read(loadingStateViewModelProvider).loadingWhile(
                () => ref.read(todoViewModelProvider.notifier).getTodos(),
              );
        },
        [todos?.toString()],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('TODOリスト'),
      ),
      body: snapshot.isWaiting || todos == null
          ? SizedBox.shrink()
          : todos.when(
              success: (todos) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        TodoForm(),
                        SizedBox(
                          height: 40,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) =>
                              TodoItem(item: todos[index]),
                          itemCount: todos.length,
                        )
                      ],
                    ),
                  ),
                );
              },
              failure: (e) => SizedBox.shrink(),
            ),
    );
  }
}
