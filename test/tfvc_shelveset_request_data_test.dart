import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TfvcShelvesetRequestData
void main() {
  var instance = TfvcShelvesetRequestData();

  group('test TfvcShelvesetRequestData', () {
    // Whether to include policyOverride and notes Only applies when requesting a single deep shelveset
    // bool includeDetails (default value: null)
    test('to test the property `includeDetails`', () async {
      // TODO
    });

    // Whether to include the _links field on the shallow references. Does not apply when requesting a single deep shelveset object. Links will always be included in the deep shelveset.
    // bool includeLinks (default value: null)
    test('to test the property `includeLinks`', () async {
      // TODO
    });

    // Whether to include workItems
    // bool includeWorkItems (default value: null)
    test('to test the property `includeWorkItems`', () async {
      // TODO
    });

    // Max number of changes to include
    // int maxChangeCount (default value: null)
    test('to test the property `maxChangeCount`', () async {
      // TODO
    });

    // Max length of comment
    // int maxCommentLength (default value: null)
    test('to test the property `maxCommentLength`', () async {
      // TODO
    });

    // Shelveset's name
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Owner's ID. Could be a name or a guid.
    // String owner (default value: null)
    test('to test the property `owner`', () async {
      // TODO
    });


  });

}
