import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for UsersApi
void main() {
  var instance = UsersApi();

  group('tests for UsersApi', () {
    // Get a user by its descriptor.
    //
    //Future<GraphUser> callGet(String organization, String userDescriptor, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Materialize an existing AAD or MSA user into the VSTS account.  NOTE: Created users are not active in an account unless they have been explicitly assigned a parent group at creation time or have signed in   and been autolicensed through AAD group memberships.   Adding a user to an account is required before the user can be added to VSTS groups or assigned an asset.   The body of the request must be a derived type of GraphUserCreationContext:   * GraphUserMailAddressCreationContext - Create a new user using the mail address as a reference to an existing user from an external AD or AAD backed provider.   * GraphUserOriginIdCreationContext - Create a new user using the OriginID as a reference to an existing user from an external AD or AAD backed provider.   * GraphUserPrincipalNameCreationContext - Create a new user using the principal name as a reference to an existing user from an external AD or AAD backed provider.   If the user to be added corresponds to a user that was previously deleted, then that user will be restored.   Optionally, you can add the newly created user as a member of an existing VSTS group and/or specify a custom storage key for the user.
    //
    //Future<GraphUser> create(String organization, String apiVersion, GraphUserCreationContext body, { String groupDescriptors }) async 
    test('test create', () async {
      // TODO
    });

    // Disables a user.  The user will still be visible, but membership checks for the user will return false.â
    //
    //Future delete(String organization, String userDescriptor, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a list of all users in a given scope.  Since the list of users may be large, results are returned in pages of users.  If there are more results  than can be returned in a single page, the result set will contain a continuation token for retrieval of the  next set of results.
    //
    //Future<List<GraphUser>> list(String organization, String apiVersion, { String subjectTypes, String continuationToken }) async 
    test('test list', () async {
      // TODO
    });

    // Map an existing user to a different identity
    //
    //Future<GraphUser> update(String organization, String userDescriptor, String apiVersion, Object body) async 
    test('test update', () async {
      // TODO
    });

  });
}
