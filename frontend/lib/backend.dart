import 'dart:async';

import 'package:built_collection/built_collection.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/client.dart';
import 'package:frontend/graphql/__generated__/getTasks.data.gql.dart';
import 'package:frontend/graphql/__generated__/getTasks.req.gql.dart';
import 'package:frontend/graphql/__generated__/subscribeUpdates.data.gql.dart';
import 'package:frontend/graphql/__generated__/subscribeUpdates.req.gql.dart';
import 'package:frontend/graphql/__generated__/subscribeUpdates.var.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:frontend/__generated__/schema.schema.gql.dart'
    show possibleTypesMap;

typedef TodoItem = GgetTasksData_tasks;
typedef TodoItemList = BuiltList<TodoItem>;
typedef TaskUpdate = GsubscribeTasksUpdatesData_tasksUpdates;

//// Websocket link, then use ferry client to send subscription request._link
//// Receieve a stream of responses, map to stream of todo updates. Then I need to
///  listen() on this stream and invalidate the tasks list. maybe have 2 futures: 1 for query result and one for tasks

final tasksQueryProvider = FutureProvider<BuiltList<TodoItem>>((ref) async {
  final tasksReq = GgetTasksReq(
    (b) => b..fetchPolicy = FetchPolicy.NetworkOnly,
  );
  print("hello");
  return (await graphClient.request(tasksReq).first).data!.tasks;
});

// final tasksProvider = FutureProvider<BuiltList<TodoItem>>((ref) async {
//   final tasks = ref.watch(tasksQueryProvider);

//   final tasksReq = GgetTasksReq(
//     (b) => b..fetchPolicy = FetchPolicy.NetworkOnly,
//   );

//   final test = (await graphClient.request(tasksReq).first).data!.tasks;

//   return test;
//   //return tasks;
// });

final tasksUpdatesProvider = StreamProvider<TaskUpdate?>((ref) {
  final request = GsubscribeTasksUpdatesReq();

  try {
    final resultStream = graphClient
        .request<GsubscribeTasksUpdatesData, GsubscribeTasksUpdatesVars>(
          request,
        );

    final newStream = resultStream
        .where((e) => e.data?.tasksUpdates != null)
        .asyncMap((e) => e.data?.tasksUpdates);

    print("finished");
    return newStream;
  } catch (e) {
    print("Failed to get task updates: $e");
    rethrow;
  }
});

Future<StreamSubscription> initTasksUpdatesStream() async {
  final request = GsubscribeTasksUpdatesReq();

  try {
    final resultStream = graphClient
        .request<GsubscribeTasksUpdatesData, GsubscribeTasksUpdatesVars>(
          request,
        );

    final new_stream = resultStream
        .where((e) => e.data?.tasksUpdates != null)
        .asyncMap((e) => e.data?.tasksUpdates);

    // final updatesStream = resultStream.asyncMap((response) {
    //   final data = response.data?.tasksUpdates;
    //   if (data != null) {
    //     return data;
    //   }
    final subscription = new_stream.listen(print);

    print("finished");
    return subscription;
  } catch (e) {
    print("Failed to get task updates: $e");
    rethrow;
  }
}

class TasksListNotifier extends AsyncNotifier<TodoItemList> {
  @override
  Future<TodoItemList> build() async {
    final tasks = ref.watch(tasksQueryProvider.future);
    // final tasksUpdates = ref.watch(tasksUpdatesProvider.future);
    // print(tasksUpdates);
    return tasks;
  }
}

final tasksListNotifierProvider =
    AsyncNotifierProvider<TasksListNotifier, TodoItemList>(
      TasksListNotifier.new,
    );
