import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for AceExtendedInformation
void main() {
  var instance = AceExtendedInformation();

  group('test AceExtendedInformation', () {
    // This is the combination of all of the explicit and inherited permissions for this identity on this token.  These are the permissions used when determining if a given user has permission to perform an action.
    // int effectiveAllow (default value: null)
    test('to test the property `effectiveAllow`', () async {
      // TODO
    });

    // This is the combination of all of the explicit and inherited permissions for this identity on this token.  These are the permissions used when determining if a given user has permission to perform an action.
    // int effectiveDeny (default value: null)
    test('to test the property `effectiveDeny`', () async {
      // TODO
    });

    // These are the permissions that are inherited for this identity on this token.  If the token does not inherit permissions this will be 0.  Note that any permissions that have been explicitly set on this token for this identity, or any groups that this identity is a part of, are not included here.
    // int inheritedAllow (default value: null)
    test('to test the property `inheritedAllow`', () async {
      // TODO
    });

    // These are the permissions that are inherited for this identity on this token.  If the token does not inherit permissions this will be 0.  Note that any permissions that have been explicitly set on this token for this identity, or any groups that this identity is a part of, are not included here.
    // int inheritedDeny (default value: null)
    test('to test the property `inheritedDeny`', () async {
      // TODO
    });


  });

}
