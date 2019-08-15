import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for UpdatesApi
void main() {
  var instance = UpdatesApi();

  group('tests for UpdatesApi', () {
    // Returns a single update for a work item
    //
    //Future<WorkItemUpdate> callGet(String organization, int id, int updateNumber, String project, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Returns a the deltas between work item revisions
    //
    //Future<List<WorkItemUpdate>> list(String organization, int id, String project, String apiVersion, { int $top, int $skip }) async 
    test('test list', () async {
      // TODO
    });

  });
}
