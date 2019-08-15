import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for AccessControlList
void main() {
  var instance = AccessControlList();

  group('test AccessControlList', () {
    // Storage of permissions keyed on the identity the permission is for.
    // Map<String, AccessControlEntry> acesDictionary (default value: {})
    test('to test the property `acesDictionary`', () async {
      // TODO
    });

    // True if this ACL holds ACEs that have extended information.
    // bool includeExtendedInfo (default value: null)
    test('to test the property `includeExtendedInfo`', () async {
      // TODO
    });

    // True if the given token inherits permissions from parents.
    // bool inheritPermissions (default value: null)
    test('to test the property `inheritPermissions`', () async {
      // TODO
    });

    // The token that this AccessControlList is for.
    // String token (default value: null)
    test('to test the property `token`', () async {
      // TODO
    });


  });

}
