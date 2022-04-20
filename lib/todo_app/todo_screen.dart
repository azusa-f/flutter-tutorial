import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/todo_app/todo_state_notifier.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(todoStateNotifier);
    final _notifier = ref.watch(todoStateNotifier.notifier);

    return Scaffold();
  }
}
