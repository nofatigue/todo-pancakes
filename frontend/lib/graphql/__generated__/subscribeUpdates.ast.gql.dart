// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:frontend/graphql/__generated__/taskDetails.ast.gql.dart' as _i2;
import 'package:gql/ast.dart' as _i1;

const subscribeTasksUpdates = _i1.OperationDefinitionNode(
  type: _i1.OperationType.subscription,
  name: _i1.NameNode(value: 'subscribeTasksUpdates'),
  variableDefinitions: [],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'tasksUpdates'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'TaskDetails'),
          directives: [],
        )
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  subscribeTasksUpdates,
  _i2.TaskDetails,
]);
