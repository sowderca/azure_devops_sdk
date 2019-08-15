import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TargetsApi
void main() {
  var instance = TargetsApi();

  group('tests for TargetsApi', () {
    // Get a deployment target by its ID in a deployment group
    //
    //Future<DeploymentMachine> callGet(String organization, String project, int deploymentGroupId, int targetId, String apiVersion, { String $expand }) async 
    test('test callGet', () async {
      // TODO
    });

    // Delete a deployment target in a deployment group. This deletes the agent from associated deployment pool too.
    //
    //Future delete(String organization, String project, int deploymentGroupId, int targetId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a list of deployment targets in a deployment group.
    //
    //Future<List<DeploymentMachine>> list(String organization, String project, int deploymentGroupId, String apiVersion, { String tags, String name, bool partialNameMatch, String $expand, String agentStatus, String agentJobResult, String continuationToken, int $top, bool enabled, String propertyFilters }) async 
    test('test list', () async {
      // TODO
    });

    // Update tags of a list of deployment targets in a deployment group.
    //
    //Future<List<DeploymentMachine>> update(String organization, String project, int deploymentGroupId, String apiVersion, List<DeploymentTargetUpdateParameter> body) async 
    test('test update', () async {
      // TODO
    });

  });
}
