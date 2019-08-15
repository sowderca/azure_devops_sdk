import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TaskAgentJobRequest
void main() {
  var instance = TaskAgentJobRequest();

  group('test TaskAgentJobRequest', () {
    // List<TaskAgentDelaySource> agentDelays (default value: [])
    test('to test the property `agentDelays`', () async {
      // TODO
    });

    // JObject agentSpecification (default value: null)
    test('to test the property `agentSpecification`', () async {
      // TODO
    });

    // The date/time this request was assigned.
    // DateTime assignTime (default value: null)
    test('to test the property `assignTime`', () async {
      // TODO
    });

    // Additional data about the request.
    // Map<String, String> data (default value: {})
    test('to test the property `data`', () async {
      // TODO
    });

    // TaskOrchestrationOwner definition (default value: null)
    test('to test the property `definition`', () async {
      // TODO
    });

    // A list of demands required to fulfill this request.
    // List<Demand> demands (default value: [])
    test('to test the property `demands`', () async {
      // TODO
    });

    // String expectedDuration (default value: null)
    test('to test the property `expectedDuration`', () async {
      // TODO
    });

    // The date/time this request was finished.
    // DateTime finishTime (default value: null)
    test('to test the property `finishTime`', () async {
      // TODO
    });

    // The host which triggered this request.
    // String hostId (default value: null)
    test('to test the property `hostId`', () async {
      // TODO
    });

    // ID of the job resulting from this request.
    // String jobId (default value: null)
    test('to test the property `jobId`', () async {
      // TODO
    });

    // Name of the job resulting from this request.
    // String jobName (default value: null)
    test('to test the property `jobName`', () async {
      // TODO
    });

    // The deadline for the agent to renew the lock.
    // DateTime lockedUntil (default value: null)
    test('to test the property `lockedUntil`', () async {
      // TODO
    });

    // List<TaskAgentReference> matchedAgents (default value: [])
    test('to test the property `matchedAgents`', () async {
      // TODO
    });

    // bool matchesAllAgentsInPool (default value: null)
    test('to test the property `matchesAllAgentsInPool`', () async {
      // TODO
    });

    // String orchestrationId (default value: null)
    test('to test the property `orchestrationId`', () async {
      // TODO
    });

    // TaskOrchestrationOwner owner (default value: null)
    test('to test the property `owner`', () async {
      // TODO
    });

    // String planGroup (default value: null)
    test('to test the property `planGroup`', () async {
      // TODO
    });

    // Internal ID for the orchestration plan connected with this request.
    // String planId (default value: null)
    test('to test the property `planId`', () async {
      // TODO
    });

    // Internal detail representing the type of orchestration plan.
    // String planType (default value: null)
    test('to test the property `planType`', () async {
      // TODO
    });

    // The ID of the pool this request targets
    // int poolId (default value: null)
    test('to test the property `poolId`', () async {
      // TODO
    });

    // The ID of the queue this request targets
    // int queueId (default value: null)
    test('to test the property `queueId`', () async {
      // TODO
    });

    // The date/time this request was queued.
    // DateTime queueTime (default value: null)
    test('to test the property `queueTime`', () async {
      // TODO
    });

    // The date/time this request was receieved by an agent.
    // DateTime receiveTime (default value: null)
    test('to test the property `receiveTime`', () async {
      // TODO
    });

    // ID of the request.
    // int requestId (default value: null)
    test('to test the property `requestId`', () async {
      // TODO
    });

    // TaskAgentReference reservedAgent (default value: null)
    test('to test the property `reservedAgent`', () async {
      // TODO
    });

    // The result of this request.
    // String result (default value: null)
    test('to test the property `result`', () async {
      // TODO
    });

    // Scope of the pipeline; matches the project ID.
    // String scopeId (default value: null)
    test('to test the property `scopeId`', () async {
      // TODO
    });

    // The service which owns this request.
    // String serviceOwner (default value: null)
    test('to test the property `serviceOwner`', () async {
      // TODO
    });

    // String statusMessage (default value: null)
    test('to test the property `statusMessage`', () async {
      // TODO
    });

    // bool userDelayed (default value: null)
    test('to test the property `userDelayed`', () async {
      // TODO
    });


  });

}
