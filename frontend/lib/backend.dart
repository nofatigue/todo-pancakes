import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/client.dart';
import 'package:frontend/graphql/__generated__/getTasks.data.gql.dart';
import 'package:frontend/graphql/__generated__/subscribeUpdates.data.gql.dart';
import 'package:frontend/graphql/__generated__/subscribeUpdates.req.gql.dart';
import 'package:frontend/graphql/__generated__/subscribeUpdates.var.gql.dart';
import 'package:frontend/utils.dart';

typedef TodoItem = GgetTasksData_tasks;
typedef TodoItemList = List<TodoItem>;
typedef TasksUpdate = GsubscribeTasksUpdatesData_tasksUpdates;

final tasksUpdatesProvider = StreamProvider<TodoItemList>((ref) {
  final request = GsubscribeTasksUpdatesReq();
  try {
    final resultStream = subsGraphClient
        .request<GsubscribeTasksUpdatesData, GsubscribeTasksUpdatesVars>(
          request,
        );

    final newStream = resultStream
        .where((e) => e.data?.tasksUpdates != null)
        .asyncMap((e) => e.data?.tasksUpdates.tasks)
        .where((e) => e != null)
        .map(
          (taskList) =>
              taskList!
                  .map(
                    (p0) => TodoItem((b) {
                      b.id = p0.id;
                      b.text = p0.text;
                      b.completed = p0.completed;
                    }),
                  )
                  .toList(),
        );

    myDebugPrint("finished");

    newStream.listen(myDebugPrint); // A StreamSubscription<int>.

    return newStream;
  } catch (e) {
    myDebugPrint("Failed to get task updates: $e");
    rethrow;
  }
});

class TasksUpdatesTypes {
  static const String add = 'add';
}
