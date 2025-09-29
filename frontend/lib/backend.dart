import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:frontend/__generated__/schema.schema.gql.dart'
    show possibleTypesMap;

final link = HttpLink("http://localhost:8000/graphql");

final cache = Cache(possibleTypes: possibleTypesMap);

final graphClient = Client(link: link, cache: cache);
