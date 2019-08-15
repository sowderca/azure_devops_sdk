import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for PredefinedQuery
void main() {
  var instance = PredefinedQuery();

  group('test PredefinedQuery', () {
    // Whether or not the query returned the complete set of data or if the data was truncated.
    // bool hasMore (default value: null)
    test('to test the property `hasMore`', () async {
      // TODO
    });

    // Id of the query
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Localized name of the query
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // The results of the query.  This will be a set of WorkItem objects with only the 'id' set.  The client is responsible for paging in the data as needed.
    // List<WorkItem> results (default value: [])
    test('to test the property `results`', () async {
      // TODO
    });

    // REST API Url to use to retrieve results for this query
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });

    // Url to use to display a page in the browser with the results of this query
    // String webUrl (default value: null)
    test('to test the property `webUrl`', () async {
      // TODO
    });


  });

}
