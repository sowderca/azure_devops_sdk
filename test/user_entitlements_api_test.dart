import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for UserEntitlementsApi
void main() {
  var instance = UserEntitlementsApi();

  group('tests for UserEntitlementsApi', () {
    // Add a user, assign license and extensions and make them a member of a project group in an account.
    //
    //Future<UserEntitlementsPostResponse> add(String organization, String apiVersion, UserEntitlement body) async 
    test('test add', () async {
      // TODO
    });

    // Delete a user from the account.  The delete operation includes unassigning Extensions and Licenses and removing the user from all project memberships. The user would continue to have access to the account if she is member of an AAD group, that is added directly to the account.
    //
    //Future delete(String organization, String userId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get User Entitlement for a user.
    //
    //Future<UserEntitlement> get User Entitlement(String organization, String userId, String apiVersion) async 
    test('test get User Entitlement', () async {
      // TODO
    });

    // Get a paged set of user entitlements matching the filter criteria. If no filter is is passed, a page from all the account users is returned.
    //
    //Future<PagedGraphMemberList> get User Entitlements(String organization, String apiVersion, { int top, int skip, String filter, String sortOption }) async 
    test('test get User Entitlements', () async {
      // TODO
    });

    // Edit the entitlements (License, Extensions, Projects, Teams etc) for a user.
    //
    //Future<UserEntitlementsPatchResponse> update User Entitlement(String organization, String userId, String apiVersion, JsonPatchDocument body) async 
    test('test update User Entitlement', () async {
      // TODO
    });

    // Edit the entitlements (License, Extensions, Projects, Teams etc) for one or more users.
    //
    //Future<UserEntitlementOperationReference> update User Entitlements(String organization, String apiVersion, JsonPatchDocument body, { bool doNotSendInviteForNewUsers }) async 
    test('test update User Entitlements', () async {
      // TODO
    });

  });
}
