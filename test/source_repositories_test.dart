import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for SourceRepositories
void main() {
  var instance = SourceRepositories();

  group('test SourceRepositories', () {
    // A token used to continue this paged request; 'null' if the request is complete
    // String continuationToken (default value: null)
    test('to test the property `continuationToken`', () async {
      // TODO
    });

    // The number of repositories requested for each page
    // int pageLength (default value: null)
    test('to test the property `pageLength`', () async {
      // TODO
    });

    // A list of repositories
    // List<SourceRepository> repositories (default value: [])
    test('to test the property `repositories`', () async {
      // TODO
    });

    // The total number of pages, or '-1' if unknown
    // int totalPageCount (default value: null)
    test('to test the property `totalPageCount`', () async {
      // TODO
    });


  });

}
