import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GroupEntitlement
void main() {
  var instance = GroupEntitlement();

  group('test GroupEntitlement', () {
    // Extension Rules.
    // List<Extension> extensionRules (default value: [])
    test('to test the property `extensionRules`', () async {
      // TODO
    });

    // GraphGroup group (default value: null)
    test('to test the property `group`', () async {
      // TODO
    });

    // The unique identifier which matches the Id of the GraphMember.
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // [Readonly] The last time the group licensing rule was executed (regardless of whether any changes were made).
    // DateTime lastExecuted (default value: null)
    test('to test the property `lastExecuted`', () async {
      // TODO
    });

    // AccessLevel licenseRule (default value: null)
    test('to test the property `licenseRule`', () async {
      // TODO
    });

    // Group members. Only used when creating a new group.
    // List<UserEntitlement> members (default value: [])
    test('to test the property `members`', () async {
      // TODO
    });

    // Relation between a project and the member's effective permissions in that project.
    // List<ProjectEntitlement> projectEntitlements (default value: [])
    test('to test the property `projectEntitlements`', () async {
      // TODO
    });

    // The status of the group rule.
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });


  });

}
