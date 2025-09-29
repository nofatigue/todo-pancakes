import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/backend.dart';

import 'package:frontend/graphql/__generated__/getTasks.data.gql.dart';
import 'package:frontend/graphql/__generated__/getTasks.req.gql.dart';

import 'package:built_collection/built_collection.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namer App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: MyHomePage(),
    );
  }
}

class MyAppState extends ChangeNotifier {}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: TodoListPage(),
            ),
          ),
        );
      },
    );
  }
}

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

final tasksProvider = FutureProvider<BuiltList<GgetTasksData_tasks>>((
  ref,
) async {
  final tasksReq = GgetTasksReq((b) => b);

  return (await graphClient.request(tasksReq).first).data!.tasks;
});

class TodoListPage extends ConsumerWidget {
  final client = graphClient;

  TodoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureTaskList = ref.watch(tasksProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('All Tasks')),

      body: Column(
        children: [
          Expanded(
            child: switch (futureTaskList) {
              AsyncValue(:final value?, hasValue: true) => ListView.builder(
                itemCount: value.length,
                itemBuilder:
                    (context, index) => TodoItemCard(task: value[index]),
              ),
              AsyncValue(error: != null) => const Text("Couldn't fetch tasks!"),
              AsyncValue() => const CircularProgressIndicator(),
            },
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  //ref.invalidate(tasksProvider);
                },
                child: Text('Add'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
