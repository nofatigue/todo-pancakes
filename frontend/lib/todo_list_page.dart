import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/backend.dart';
import 'package:frontend/graphql/__generated__/taskDetails.data.gql.dart';

class TodoItemCard extends StatelessWidget {
  const TodoItemCard({super.key, required this.task});

  final GTaskDetails task;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Card(
      color: theme.colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          task.text,
          style: theme.textTheme.displayMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}

class TodoListPage extends ConsumerWidget {
  TodoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureTaskList = ref.watch(tasksUpdatesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('All Tasks')),

      body: Column(
        children: [
          Expanded(
            child: futureTaskList.when(
              data:
                  (data) => ListView.builder(
                    itemCount: data.length,
                    itemBuilder:
                        (context, index) => TodoItemCard(task: data[index]),
                  ),

              error: (error, stackTrace) => Text("Couldn't fetch tasks!"),
              loading: () => const CircularProgressIndicator(),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(tasksUpdatesProvider);
                },
                child: Text('Subscribe'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
