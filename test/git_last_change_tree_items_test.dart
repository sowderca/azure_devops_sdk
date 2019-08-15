import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitLastChangeTreeItems
void main() {
  var instance = GitLastChangeTreeItems();

  group('test GitLastChangeTreeItems', () {
    // The list of commits referenced by Items, if they were requested.
    // List<GitCommitRef> commits (default value: [])
    test('to test the property `commits`', () async {
      // TODO
    });

    // The last change of items.
    // List<GitLastChangeItem> items (default value: [])
    test('to test the property `items`', () async {
      // TODO
    });

    // The last explored time, in case the result is not comprehensive. Null otherwise.
    // DateTime lastExploredTime (default value: null)
    test('to test the property `lastExploredTime`', () async {
      // TODO
    });


  });

}
