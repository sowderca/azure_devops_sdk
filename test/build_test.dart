import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for Build
void main() {
  var instance = Build();

  group('test Build', () {
    // ReferenceLinks links (default value: null)
    test('to test the property `links`', () async {
      // TODO
    });

    // AgentSpecification agentSpecification (default value: null)
    test('to test the property `agentSpecification`', () async {
      // TODO
    });

    // The build number/name of the build.
    // String buildNumber (default value: null)
    test('to test the property `buildNumber`', () async {
      // TODO
    });

    // The build number revision.
    // int buildNumberRevision (default value: null)
    test('to test the property `buildNumberRevision`', () async {
      // TODO
    });

    // BuildController controller (default value: null)
    test('to test the property `controller`', () async {
      // TODO
    });

    // DefinitionReference definition (default value: null)
    test('to test the property `definition`', () async {
      // TODO
    });

    // Indicates whether the build has been deleted.
    // bool deleted (default value: null)
    test('to test the property `deleted`', () async {
      // TODO
    });

    // IdentityRef deletedBy (default value: null)
    test('to test the property `deletedBy`', () async {
      // TODO
    });

    // The date the build was deleted.
    // DateTime deletedDate (default value: null)
    test('to test the property `deletedDate`', () async {
      // TODO
    });

    // The description of how the build was deleted.
    // String deletedReason (default value: null)
    test('to test the property `deletedReason`', () async {
      // TODO
    });

    // A list of demands that represents the agent capabilities required by this build.
    // List<Demand> demands (default value: [])
    test('to test the property `demands`', () async {
      // TODO
    });

    // The time that the build was completed.
    // DateTime finishTime (default value: null)
    test('to test the property `finishTime`', () async {
      // TODO
    });

    // The ID of the build.
    // int id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Indicates whether the build should be skipped by retention policies.
    // bool keepForever (default value: null)
    test('to test the property `keepForever`', () async {
      // TODO
    });

    // IdentityRef lastChangedBy (default value: null)
    test('to test the property `lastChangedBy`', () async {
      // TODO
    });

    // The date the build was last changed.
    // DateTime lastChangedDate (default value: null)
    test('to test the property `lastChangedDate`', () async {
      // TODO
    });

    // BuildLogReference logs (default value: null)
    test('to test the property `logs`', () async {
      // TODO
    });

    // TaskOrchestrationPlanReference orchestrationPlan (default value: null)
    test('to test the property `orchestrationPlan`', () async {
      // TODO
    });

    // The parameters for the build.
    // String parameters (default value: null)
    test('to test the property `parameters`', () async {
      // TODO
    });

    // Orchestration plans associated with the build (build, cleanup)
    // List<TaskOrchestrationPlanReference> plans (default value: [])
    test('to test the property `plans`', () async {
      // TODO
    });

    // The build's priority.
    // String priority (default value: null)
    test('to test the property `priority`', () async {
      // TODO
    });

    // TeamProjectReference project (default value: null)
    test('to test the property `project`', () async {
      // TODO
    });

    // PropertiesCollection properties (default value: null)
    test('to test the property `properties`', () async {
      // TODO
    });

    // The quality of the xaml build (good, bad, etc.)
    // String quality (default value: null)
    test('to test the property `quality`', () async {
      // TODO
    });

    // AgentPoolQueue queue (default value: null)
    test('to test the property `queue`', () async {
      // TODO
    });

    // Additional options for queueing the build.
    // String queueOptions (default value: null)
    test('to test the property `queueOptions`', () async {
      // TODO
    });

    // The current position of the build in the queue.
    // int queuePosition (default value: null)
    test('to test the property `queuePosition`', () async {
      // TODO
    });

    // The time that the build was queued.
    // DateTime queueTime (default value: null)
    test('to test the property `queueTime`', () async {
      // TODO
    });

    // The reason that the build was created.
    // String reason (default value: null)
    test('to test the property `reason`', () async {
      // TODO
    });

    // BuildRepository repository (default value: null)
    test('to test the property `repository`', () async {
      // TODO
    });

    // IdentityRef requestedBy (default value: null)
    test('to test the property `requestedBy`', () async {
      // TODO
    });

    // IdentityRef requestedFor (default value: null)
    test('to test the property `requestedFor`', () async {
      // TODO
    });

    // The build result.
    // String result (default value: null)
    test('to test the property `result`', () async {
      // TODO
    });

    // Indicates whether the build is retained by a release.
    // bool retainedByRelease (default value: null)
    test('to test the property `retainedByRelease`', () async {
      // TODO
    });

    // The source branch.
    // String sourceBranch (default value: null)
    test('to test the property `sourceBranch`', () async {
      // TODO
    });

    // The source version.
    // String sourceVersion (default value: null)
    test('to test the property `sourceVersion`', () async {
      // TODO
    });

    // The time that the build was started.
    // DateTime startTime (default value: null)
    test('to test the property `startTime`', () async {
      // TODO
    });

    // The status of the build.
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // List<String> tags (default value: [])
    test('to test the property `tags`', () async {
      // TODO
    });

    // Build triggeredByBuild (default value: null)
    test('to test the property `triggeredByBuild`', () async {
      // TODO
    });

    // Sourceprovider-specific information about what triggered the build
    // Map<String, String> triggerInfo (default value: {})
    test('to test the property `triggerInfo`', () async {
      // TODO
    });

    // The URI of the build.
    // String uri (default value: null)
    test('to test the property `uri`', () async {
      // TODO
    });

    // The REST URL of the build.
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });

    // List<BuildRequestValidationResult> validationResults (default value: [])
    test('to test the property `validationResults`', () async {
      // TODO
    });


  });

}
