import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/client.dart';
import 'package:frontend/graphql/__generated__/subscribeUpdates.data.gql.dart';
import 'package:frontend/graphql/__generated__/subscribeUpdates.req.gql.dart';
import 'package:frontend/graphql/__generated__/subscribeUpdates.var.gql.dart';
import 'package:frontend/utils.dart';

typedef TodoItem = GsubscribeTasksUpdatesData_tasksUpdates_tasks;
typedef TodoItemList = List<TodoItem>;
typedef TasksUpdate = GsubscribeTasksUpdatesData_tasksUpdates;

final tasksUpdatesProvider = StreamProvider<TodoItemList>((ref) async* {
  final request = GsubscribeTasksUpdatesReq();
  try {
    final resultStream = subsGraphClient
        .request<GsubscribeTasksUpdatesData, GsubscribeTasksUpdatesVars>(
          request,
        );
    await for (final res in resultStream) {
      final tasks = res.data!.tasksUpdates.tasks.toList();

      if (kDebugMode) {
        myDebugPrint(res);
        myDebugPrint(tasks);
      }
      yield tasks;
    }

    myDebugPrint("finished");
  } catch (e) {
    myDebugPrint("Failed to get task updates: $e");
    rethrow;
  }
});

class TasksUpdatesTypes {
  static const String add = 'add';
}
