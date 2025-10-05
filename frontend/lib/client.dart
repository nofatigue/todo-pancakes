import 'package:ferry/ferry.dart';
import 'package:frontend/__generated__/schema.schema.gql.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';

const graphQLURI = "localhost:8000/graphql";


// this stupid empty parameter is needed!!!!
final connectionParamsMap = <String, Object>{};

final seperateWsLink = Link.from([
  TransportWebSocketLink(
    TransportWsClientOptions(
      socketMaker: WebSocketMaker.url(() => "ws://$graphQLURI"),
      connectionParams: () => connectionParamsMap,
    ),
  ),
]);

final wsCache = Cache(possibleTypes: possibleTypesMap);
final subsGraphClient = Client(link: seperateWsLink, cache: wsCache);

