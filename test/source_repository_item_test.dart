import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for SourceRepositoryItem
void main() {
  var instance = SourceRepositoryItem();

  group('test SourceRepositoryItem', () {
    // Whether the item is able to have sub-items (e.g., is a folder).
    // bool isContainer (default value: null)
    test('to test the property `isContainer`', () async {
      // TODO
    });

    // The full path of the item, relative to the root of the repository.
    // String path (default value: null)
    test('to test the property `path`', () async {
      // TODO
    });

    // The type of the item (folder, file, etc).
    // String type (default value: null)
    test('to test the property `type`', () async {
      // TODO
    });

    // The URL of the item.
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });


  });

}
