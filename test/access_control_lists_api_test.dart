import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for AccessControlListsApi
void main() {
  var instance = AccessControlListsApi();

  group('tests for AccessControlListsApi', () {
    // Return a list of access control lists for the specified security namespace and token. All ACLs in the security namespace will be retrieved if no optional parameters are provided.
    //
    //Future<List<AccessControlList>> query(String securityNamespaceId, String organization, String apiVersion, { String token, String descriptors, bool includeExtendedInfo, bool recurse }) async 
    test('test query', () async {
      // TODO
    });

    // Remove access control lists under the specfied security namespace.
    //
    //Future<bool> remove Access Control Lists(String securityNamespaceId, String organization, String apiVersion, { String tokens, bool recurse }) async 
    test('test remove Access Control Lists', () async {
      // TODO
    });

    // Create or update one or more access control lists. All data that currently exists for the ACLs supplied will be overwritten.
    //
    //Future set Access Control Lists(String securityNamespaceId, String organization, String apiVersion, VssJsonCollectionWrapper body) async 
    test('test set Access Control Lists', () async {
      // TODO
    });

  });
}
