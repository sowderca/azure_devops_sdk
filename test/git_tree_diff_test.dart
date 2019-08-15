import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitTreeDiff
void main() {
  var instance = GitTreeDiff();

  group('test GitTreeDiff', () {
    // ObjectId of the base tree of this diff.
    // String baseTreeId (default value: null)
    test('to test the property `baseTreeId`', () async {
      // TODO
    });

    // List of tree entries that differ between the base and target tree.  Renames and object type changes are returned as a delete for the old object and add for the new object.  If a continuation token is returned in the response header, some tree entries are yet to be processed and may yeild more diff entries. If the continuation token is not returned all the diff entries have been included in this response.
    // List<GitTreeDiffEntry> diffEntries (default value: [])
    test('to test the property `diffEntries`', () async {
      // TODO
    });

    // ObjectId of the target tree of this diff.
    // String targetTreeId (default value: null)
    test('to test the property `targetTreeId`', () async {
      // TODO
    });

    // REST Url to this resource.
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });


  });

}
