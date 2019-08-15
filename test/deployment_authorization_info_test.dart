import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for DeploymentAuthorizationInfo
void main() {
  var instance = DeploymentAuthorizationInfo();

  group('test DeploymentAuthorizationInfo', () {
    // Authorization header type, typically either RevalidateApproverIdentity or OnBehalfOf.
    // String authorizationHeaderFor (default value: null)
    test('to test the property `authorizationHeaderFor`', () async {
      // TODO
    });

    // List of resources.
    // List<String> resources (default value: [])
    test('to test the property `resources`', () async {
      // TODO
    });

    // ID of the tenant.
    // String tenantId (default value: null)
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // Access token key.
    // String vstsAccessTokenKey (default value: null)
    test('to test the property `vstsAccessTokenKey`', () async {
      // TODO
    });


  });

}
