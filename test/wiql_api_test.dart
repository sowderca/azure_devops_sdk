import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WiqlApi
void main() {
  var instance = WiqlApi();

  group('tests for WiqlApi', () {
    // Gets the results of the query given the query ID.
    //
    //Future<int> callGet(String organization, String id, String project, String team, String apiVersion, { bool timePrecision, int $top }) async 
    test('test callGet', () async {
      // TODO
    });

    // Gets the results of the query given the query ID.
    //
    //Future<WorkItemQueryResult> query By Id(String organization, String id, String project, String team, String apiVersion, { bool timePrecision, int $top }) async 
    test('test query By Id', () async {
      // TODO
    });

    // Gets the results of the query given its WIQL.
    //
    //Future<WorkItemQueryResult> query By Wiql(String organization, String project, String team, String apiVersion, Wiql body, { bool timePrecision, int $top }) async 
    test('test query By Wiql', () async {
      // TODO
    });

  });
}
