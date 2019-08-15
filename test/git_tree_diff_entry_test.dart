import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitTreeDiffEntry
void main() {
  var instance = GitTreeDiffEntry();

  group('test GitTreeDiffEntry', () {
    // SHA1 hash of the object in the base tree, if it exists. Will be null in case of adds.
    // String baseObjectId (default value: null)
    test('to test the property `baseObjectId`', () async {
      // TODO
    });

    // Type of change that affected this entry.
    // String changeType (default value: null)
    test('to test the property `changeType`', () async {
      // TODO
    });

    // Object type of the tree entry. Blob, Tree or Commit(\"submodule\")
    // String objectType (default value: null)
    test('to test the property `objectType`', () async {
      // TODO
    });

    // Relative path in base and target trees.
    // String path (default value: null)
    test('to test the property `path`', () async {
      // TODO
    });

    // SHA1 hash of the object in the target tree, if it exists. Will be null in case of deletes.
    // String targetObjectId (default value: null)
    test('to test the property `targetObjectId`', () async {
      // TODO
    });


  });

}
