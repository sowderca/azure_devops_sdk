import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PoolsApi
void main() {
  var instance = PoolsApi();

  group('tests for PoolsApi', () {
    // Create an agent pool.
    //
    //Future<TaskAgentPool> add(String organization, String apiVersion, TaskAgentPool body) async 
    test('test add', () async {
      // TODO
    });

    // Get information about an agent pool.
    //
    //Future<TaskAgentPool> callGet(String organization, int poolId, String apiVersion, { String properties, String actionFilter }) async 
    test('test callGet', () async {
      // TODO
    });

    // Delete an agent pool.
    //
    //Future delete(String organization, int poolId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a list of agent pools.
    //
    //Future<List<TaskAgentPool>> get Agent Pools By Ids(String organization, String poolIds, String apiVersion, { String actionFilter }) async 
    test('test get Agent Pools By Ids', () async {
      // TODO
    });

    // Update properties on an agent pool
    //
    //Future<TaskAgentPool> update(String organization, int poolId, String apiVersion, TaskAgentPool body) async 
    test('test update', () async {
      // TODO
    });

  });
}
