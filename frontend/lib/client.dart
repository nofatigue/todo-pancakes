import 'package:ferry/ferry.dart';
import 'package:frontend/__generated__/schema.schema.gql.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';

const graphQLURI = "localhost:8000/graphql";

final httpLink = HttpLink("http://$graphQLURI");

final wsLink = TransportWebSocketLink(
  TransportWsClientOptions(
    socketMaker: WebSocketMaker.url(() => "ws://$graphQLURI"),
  ),
);

final link = Link.from([httpLink, wsLink]);

final cache = Cache(possibleTypes: possibleTypesMap);

final graphClient = Client(link: link, cache: cache);
