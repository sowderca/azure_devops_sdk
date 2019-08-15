import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PermissionsApi
void main() {
  var instance = PermissionsApi();

  group('tests for PermissionsApi', () {
    // Evaluates whether the caller has the specified permissions on the specified set of security tokens.
    //
    //Future<List<bool>> has Permissions(String securityNamespaceId, String organization, int permissions, String apiVersion, { String tokens, bool alwaysAllowAdministrators, String delimiter }) async 
    test('test has Permissions', () async {
      // TODO
    });

    // Evaluates multiple permissions for the calling user.  Note: This method does not aggregate the results, nor does it short-circuit if one of the permissions evaluates to false.
    //
    //Future<PermissionEvaluationBatch> has Permissions Batch(String organization, String apiVersion, PermissionEvaluationBatch body) async 
    test('test has Permissions Batch', () async {
      // TODO
    });

    // Removes the specified permissions on a security token for a user or group.
    //
    //Future<AccessControlEntry> remove Permission(String securityNamespaceId, String descriptor, String organization, int permissions, String apiVersion, { String token }) async 
    test('test remove Permission', () async {
      // TODO
    });

  });
}
