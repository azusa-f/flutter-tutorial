import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/todo_app/state/todo_client_state.dart';
import 'package:tutorial/todo_app/todo_db.dart';
import 'package:tutorial/todo_app/todo_state_notifier.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:drift/drift.dart' as drift;

class TodoScreen extends ConsumerWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(todoStateNotifier);
    final _notifier = ref.watch(todoStateNotifier.notifier);
    return Scaffold(
      body: _state.todoItems.isEmpty
          ? _buildEmptyTodo()
          : _buildTodoList(_state, _notifier),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showEditDialog(context, _notifier);
        },
        child: const Icon(Icons.edit),
      ),
    );
  }

  _showEditDialog(BuildContext context, TodoStateNotifier _notifier) {
    final _formKey = GlobalKey<FormState>();
    final _addDate = DateTime.now();
    final _title = TextEditingController();
    final _description = TextEditingController();
    var _limitData = TextEditingController();
    final _format = DateFormat('yyyy-MM-dd');

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: 250,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _title,
                    decoration: const InputDecoration(
                      hintText: "タイトルを入力してください",
                      icon: Icon(Icons.text_fields_outlined),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '入力してください';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _description,
                    decoration: const InputDecoration(
                      hintText: "内容を入力してください",
                      icon: Icon(Icons.notes),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '入力してください';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '入力してください';
                      }
                      return null;
                    },
                    controller: _limitData,
                    onTap: () async {
                      final _date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2022),
                        lastDate: DateTime(2023),
                        helpText: '日付を選択',
                        cancelText: 'キャンセル',
                        confirmText: '決定',
                      );
                      final _formatDate = _format.format(_date!);
                      _limitData.text = _formatDate;
                    },
                    decoration: const InputDecoration(
                      hintText: '期限を選択してください',
                      icon: Icon(Icons.calendar_today),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("キャンセル"),
            ),
            ElevatedButton(
              onPressed: () async {
                final _limitDate = _format.parseStrict(_limitData.text);
                if (_formKey.currentState!.validate()) {
                  final _newTodo = TodosCompanion(
                    title: drift.Value(_title.text),
                    description: drift.Value(_description.text),
                    addDate: drift.Value(_addDate),
                    limitDate: drift.Value(_limitDate),
                  );
                  _notifier.insertTodoData(_newTodo);
                  Navigator.pop(context);
                }
              },
              child: const Text("保存"),
            )
          ],
        );
      },
    );
  }

  Widget _buildTodoList(TodoClientState _state, TodoStateNotifier _notifier) {
    return Stack(
      children: [
        Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: _state.todoItems.length,
              itemBuilder: ((context, index) {
                final _todoData = _state.todoItems[index];
                return Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          _notifier.deleteTodoData(_todoData.id);
                        },
                        backgroundColor: Colors.red,
                        icon: Icons.delete,
                        label: 'Delete',
                      )
                    ],
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        _buildToDo(_todoData),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildEmptyTodo() {
    return Padding(
      padding: const EdgeInsets.only(top: 300),
      child: Column(
        children: const [
          Center(
            child: Text(
              "登録されていません。",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToDo(Todo todoItems) {
    DateFormat outputFormat = DateFormat('yyyy-MM-dd');
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('タイトル：${todoItems.title}'),
              Text(todoItems.description, style: const TextStyle(fontSize: 24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('作成日：${outputFormat.format(todoItems.addDate)}'),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    '期日：${outputFormat.format(todoItems.limitDate)}',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 211, 127, 17)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
