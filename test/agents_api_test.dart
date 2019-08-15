import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for AgentsApi
void main() {
  var instance = AgentsApi();

  group('tests for AgentsApi', () {
    // Adds an agent to a pool.  You probably don't want to call this endpoint directly. Instead, [configure an agent](https://docs.microsoft.com/azure/devops/pipelines/agents/agents) using the agent download package.
    //
    //Future<TaskAgent> add(String organization, int poolId, String apiVersion, TaskAgent body) async 
    test('test add', () async {
      // TODO
    });

    //Future<Object> callGet(String organization, String agentGroupId, String apiVersion, { String agentName }) async 
    test('test callGet', () async {
      // TODO
    });

    // Get information about an agent.
    //
    //Future<TaskAgent> callGet_0(String organization, int poolId, int agentId, String apiVersion, { bool includeCapabilities, bool includeAssignedRequest, bool includeLastCompletedRequest, String propertyFilters }) async 
    test('test callGet_0', () async {
      // TODO
    });

    //Future<String> delete(String organization, String agentGroupId, String agentName, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Delete an agent.  You probably don't want to call this endpoint directly. Instead, [use the agent configuration script](https://docs.microsoft.com/azure/devops/pipelines/agents/agents) to remove an agent from your organization.
    //
    //Future delete_0(String organization, int poolId, int agentId, String apiVersion) async 
    test('test delete_0', () async {
      // TODO
    });

    // Get a list of agents.
    //
    //Future<List<TaskAgent>> list(String organization, int poolId, String apiVersion, { String agentName, bool includeCapabilities, bool includeAssignedRequest, bool includeLastCompletedRequest, String propertyFilters, String demands }) async 
    test('test list', () async {
      // TODO
    });

    // Replace an agent.  You probably don't want to call this endpoint directly. Instead, [use the agent configuration script](https://docs.microsoft.com/azure/devops/pipelines/agents/agents) to remove and reconfigure an agent from your organization.
    //
    //Future<TaskAgent> replace Agent(String organization, int poolId, int agentId, String apiVersion, TaskAgent body) async 
    test('test replace Agent', () async {
      // TODO
    });

    // Update agent details.
    //
    //Future<TaskAgent> update(String organization, int poolId, int agentId, String apiVersion, TaskAgent body) async 
    test('test update', () async {
      // TODO
    });

  });
}
