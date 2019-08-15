import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for GroupEntitlementsApi
void main() {
  var instance = GroupEntitlementsApi();

  group('tests for GroupEntitlementsApi', () {
    // Create a group entitlement with license rule, extension rule.
    //
    //Future<GroupEntitlementOperationReference> add(String organization, String apiVersion, GroupEntitlement body, { String ruleOption }) async 
    test('test add', () async {
      // TODO
    });

    // Get a group entitlement.  If the group entitlement does not exist, returns null.
    //
    //Future<GroupEntitlement> callGet(String organization, String groupId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Delete a group entitlement.
    //
    //Future<GroupEntitlementOperationReference> delete(String organization, String groupId, String apiVersion, { String ruleOption, bool removeGroupMembership }) async 
    test('test delete', () async {
      // TODO
    });

    // Get the group entitlements for an account.
    //
    //Future<List<GroupEntitlement>> list(String organization, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Update entitlements (License Rule, Extensions Rule, Project memberships etc.) for a group.
    //
    //Future<GroupEntitlementOperationReference> update(String organization, String groupId, String apiVersion, JsonPatchDocument body, { String ruleOption }) async 
    test('test update', () async {
      // TODO
    });

  });
}
