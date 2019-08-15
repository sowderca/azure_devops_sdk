import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for AccessControlEntriesApi
void main() {
  var instance = AccessControlEntriesApi();

  group('tests for AccessControlEntriesApi', () {
    // Remove the specified ACEs from the ACL belonging to the specified token.
    //
    //Future<bool> remove Access Control Entries(String securityNamespaceId, String organization, String apiVersion, { String token, String descriptors }) async 
    test('test remove Access Control Entries', () async {
      // TODO
    });

    // Add or update ACEs in the ACL for the provided token. The request body contains the target token, a list of [ACEs](https://docs.microsoft.com/en-us/rest/api/azure/devops/security/access%20control%20entries/set%20access%20control%20entries?#accesscontrolentry) and a optional merge parameter. In the case of a collision (by identity descriptor) with an existing ACE in the ACL, the \"merge\" parameter determines the behavior. If set, the existing ACE has its allow and deny merged with the incoming ACE's allow and deny. If unset, the existing ACE is displaced.
    //
    //Future<List<AccessControlEntry>> set Access Control Entries(String securityNamespaceId, String organization, String apiVersion, JObject body) async 
    test('test set Access Control Entries', () async {
      // TODO
    });

  });
}
