import 'package:flutter/material.dart';
import 'package:frontend/backend.dart';

import 'package:frontend/graphql/__generated__/getTasks.data.gql.dart';
import 'package:frontend/graphql/__generated__/getTasks.req.gql.dart';
import 'package:frontend/graphql/__generated__/getTasks.var.gql.dart';
import 'package:provider/provider.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:built_collection/built_collection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
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
    Widget page;
    switch (currentIndex) {
      case 0:
        page = AddPage();
      case 1:
        page = TodoListPage();
      default:
        throw UnimplementedError("No widget for $currentIndex");
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.task),
                      label: Text('Todo Items'),
                    ),
                  ],
                  selectedIndex: currentIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    final icon = Icons.favorite;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(icon),
                label: Text('Like'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  () {};
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonPanel extends StatelessWidget {
  const ButtonPanel({
    super.key,
    required this.appState,
    required this.likeButtonIcon,
  });

  final MyAppState appState;
  final IconData likeButtonIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton.icon(
          label: Text("Like"),
          onPressed: () {},
          icon: Icon(likeButtonIcon),
        ),
        SizedBox(width: 20),
        ElevatedButton(onPressed: () {}, child: Text('Add')),
      ],
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

class TodoListPage extends StatelessWidget {
  //TODO: Use Riverpod for dependency
  final client = graphClient;

  TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Tasks')),
      body: Operation<GgetTasksData, GgetTasksVars>(
        client: client,
        operationRequest: GgetTasksReq((b) => b),
        builder: (context, response, error) {
          if (response!.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          final tasks = response.data?.tasks.toBuiltList() ?? BuiltList();

          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) => TodoItemCard(task: tasks[index]),
          );
        },
      ),
    );
  }
}
