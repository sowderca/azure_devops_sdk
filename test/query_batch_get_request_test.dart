import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for QueryBatchGetRequest
void main() {
  var instance = QueryBatchGetRequest();

  group('test QueryBatchGetRequest', () {
    // The expand parameters for queries. Possible options are { None, Wiql, Clauses, All, Minimal }
    // String $expand (default value: null)
    test('to test the property `$expand`', () async {
      // TODO
    });

    // The flag to control error policy in a query batch request. Possible options are { Fail, Omit }.
    // String errorPolicy (default value: null)
    test('to test the property `errorPolicy`', () async {
      // TODO
    });

    // The requested query ids
    // List<String> ids (default value: [])
    test('to test the property `ids`', () async {
      // TODO
    });


  });

}
