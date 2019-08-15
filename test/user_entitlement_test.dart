import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for UserEntitlement
void main() {
  var instance = UserEntitlement();

  group('test UserEntitlement', () {
    // AccessLevel accessLevel (default value: null)
    test('to test the property `accessLevel`', () async {
      // TODO
    });

    // [Readonly] Date the user was added to the collection.
    // DateTime dateCreated (default value: null)
    test('to test the property `dateCreated`', () async {
      // TODO
    });

    // User's extensions.
    // List<Extension> extensions (default value: [])
    test('to test the property `extensions`', () async {
      // TODO
    });

    // [Readonly] GroupEntitlements that this user belongs to.
    // List<GroupEntitlement> groupAssignments (default value: [])
    test('to test the property `groupAssignments`', () async {
      // TODO
    });

    // The unique identifier which matches the Id of the Identity associated with the GraphMember.
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // [Readonly] Date the user last accessed the collection.
    // DateTime lastAccessedDate (default value: null)
    test('to test the property `lastAccessedDate`', () async {
      // TODO
    });

    // Relation between a project and the user's effective permissions in that project.
    // List<ProjectEntitlement> projectEntitlements (default value: [])
    test('to test the property `projectEntitlements`', () async {
      // TODO
    });

    // GraphUser user (default value: null)
    test('to test the property `user`', () async {
      // TODO
    });


  });

}
