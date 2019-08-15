import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for DeploymentgroupsApi
void main() {
  var instance = DeploymentgroupsApi();

  group('tests for DeploymentgroupsApi', () {
    // Create a deployment group.
    //
    //Future<DeploymentGroup> add(String organization, String project, String apiVersion, DeploymentGroupCreateParameter body) async 
    test('test add', () async {
      // TODO
    });

    // Get a deployment group by its ID.
    //
    //Future<DeploymentGroup> callGet(String organization, String project, int deploymentGroupId, String apiVersion, { String actionFilter, String $expand }) async 
    test('test callGet', () async {
      // TODO
    });

    // Delete a deployment group.
    //
    //Future delete(String organization, String project, int deploymentGroupId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a list of deployment groups by name or IDs.
    //
    //Future<List<DeploymentGroup>> list(String organization, String project, String apiVersion, { String name, String actionFilter, String $expand, String continuationToken, int $top, String ids }) async 
    test('test list', () async {
      // TODO
    });

    // Update a deployment group.
    //
    //Future<DeploymentGroup> update(String organization, String project, int deploymentGroupId, String apiVersion, DeploymentGroupUpdateParameter body) async 
    test('test update', () async {
      // TODO
    });

  });
}
