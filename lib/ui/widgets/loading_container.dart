import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/ui/hooks/use_color_scheme.dart';
import '/ui/view_model/loading_state_view_model.dart';

class LoadingContainer extends HookConsumerWidget {
  const LoadingContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = useCS();
    final state = ref.watch(loadingStateViewModelProvider);
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Stack(
        children: [
          child,
          state.isLoading
              ? Container(
                  color: Colors.black26,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: cs.primary,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
