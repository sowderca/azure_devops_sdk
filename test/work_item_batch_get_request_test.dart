import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for WorkItemBatchGetRequest
void main() {
  var instance = WorkItemBatchGetRequest();

  group('test WorkItemBatchGetRequest', () {
    // The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All }
    // String $expand (default value: null)
    test('to test the property `$expand`', () async {
      // TODO
    });

    // AsOf UTC date time string
    // DateTime asOf (default value: null)
    test('to test the property `asOf`', () async {
      // TODO
    });

    // The flag to control error policy in a bulk get work items request. Possible options are {Fail, Omit}.
    // String errorPolicy (default value: null)
    test('to test the property `errorPolicy`', () async {
      // TODO
    });

    // The requested fields
    // List<String> fields (default value: [])
    test('to test the property `fields`', () async {
      // TODO
    });

    // The requested work item ids
    // List<int> ids (default value: [])
    test('to test the property `ids`', () async {
      // TODO
    });


  });

}
