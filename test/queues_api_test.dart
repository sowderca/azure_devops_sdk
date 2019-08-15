import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for QueuesApi
void main() {
  var instance = QueuesApi();

  group('tests for QueuesApi', () {
    // Create a new agent queue to connect a project to an agent pool.
    //
    //Future<TaskAgentQueue> add(String organization, String project, String apiVersion, TaskAgentQueue body, { bool authorizePipelines }) async 
    test('test add', () async {
      // TODO
    });

    // Get information about an agent queue.
    //
    //Future<TaskAgentQueue> callGet(String organization, int queueId, String project, String apiVersion, { String actionFilter }) async 
    test('test callGet', () async {
      // TODO
    });

    // Removes an agent queue from a project.
    //
    //Future delete(String organization, int queueId, String project, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a list of agent queues by their names
    //
    //Future<List<TaskAgentQueue>> get Agent Queues By Names(String organization, String queueNames, String project, String apiVersion, { String actionFilter }) async 
    test('test get Agent Queues By Names', () async {
      // TODO
    });

  });
}
