import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for IdentityBase
void main() {
  var instance = IdentityBase();

  group('test IdentityBase', () {
    // The custom display name for the identity (if any). Setting this property to an empty string will clear the existing custom display name. Setting this property to null will not affect the existing persisted value (since null values do not get sent over the wire or to the database)
    // String customDisplayName (default value: null)
    test('to test the property `customDisplayName`', () async {
      // TODO
    });

    // IdentityDescriptor descriptor (default value: null)
    test('to test the property `descriptor`', () async {
      // TODO
    });

    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // bool isActive (default value: null)
    test('to test the property `isActive`', () async {
      // TODO
    });

    // bool isContainer (default value: null)
    test('to test the property `isContainer`', () async {
      // TODO
    });

    // String masterId (default value: null)
    test('to test the property `masterId`', () async {
      // TODO
    });

    // List<String> memberIds (default value: [])
    test('to test the property `memberIds`', () async {
      // TODO
    });

    // List<IdentityDescriptor> memberOf (default value: [])
    test('to test the property `memberOf`', () async {
      // TODO
    });

    // List<IdentityDescriptor> members (default value: [])
    test('to test the property `members`', () async {
      // TODO
    });

    // int metaTypeId (default value: null)
    test('to test the property `metaTypeId`', () async {
      // TODO
    });

    // PropertiesCollection properties (default value: null)
    test('to test the property `properties`', () async {
      // TODO
    });

    // The display name for the identity as specified by the source identity provider.
    // String providerDisplayName (default value: null)
    test('to test the property `providerDisplayName`', () async {
      // TODO
    });

    // int resourceVersion (default value: null)
    test('to test the property `resourceVersion`', () async {
      // TODO
    });

    // String socialDescriptor (default value: null)
    test('to test the property `socialDescriptor`', () async {
      // TODO
    });

    // String subjectDescriptor (default value: null)
    test('to test the property `subjectDescriptor`', () async {
      // TODO
    });

    // int uniqueUserId (default value: null)
    test('to test the property `uniqueUserId`', () async {
      // TODO
    });


  });

}
