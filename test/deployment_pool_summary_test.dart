import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for DeploymentPoolSummary
void main() {
  var instance = DeploymentPoolSummary();

  group('test DeploymentPoolSummary', () {
    // List of deployment groups referring to the deployment pool.
    // List<DeploymentGroupReference> deploymentGroups (default value: [])
    test('to test the property `deploymentGroups`', () async {
      // TODO
    });

    // Number of deployment agents that are offline.
    // int offlineAgentsCount (default value: null)
    test('to test the property `offlineAgentsCount`', () async {
      // TODO
    });

    // Number of deployment agents that are online.
    // int onlineAgentsCount (default value: null)
    test('to test the property `onlineAgentsCount`', () async {
      // TODO
    });

    // TaskAgentPoolReference pool (default value: null)
    test('to test the property `pool`', () async {
      // TODO
    });

    // EnvironmentResourceReference resource (default value: null)
    test('to test the property `resource`', () async {
      // TODO
    });


  });

}
