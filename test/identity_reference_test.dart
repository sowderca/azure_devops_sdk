import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for IdentityReference
void main() {
  var instance = IdentityReference();

  group('test IdentityReference', () {
    // ReferenceLinks links (default value: null)
    test('to test the property `links`', () async {
      // TODO
    });

    // The descriptor is the primary way to reference the graph subject while the system is running. This field will uniquely identify the same graph subject across both Accounts and Organizations.
    // String descriptor (default value: null)
    test('to test the property `descriptor`', () async {
      // TODO
    });

    // This is the non-unique display name of the graph subject. To change this field, you must alter its value in the source provider.
    // String displayName (default value: null)
    test('to test the property `displayName`', () async {
      // TODO
    });

    // This url is the full route to the source resource of this graph subject.
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });


  });

}
