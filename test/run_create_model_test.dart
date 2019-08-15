import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for RunCreateModel
void main() {
  var instance = RunCreateModel();

  group('test RunCreateModel', () {
    // true if test run is automated, false otherwise. By default it will be false.
    // bool automated (default value: null)
    test('to test the property `automated`', () async {
      // TODO
    });

    // ShallowReference build (default value: null)
    test('to test the property `build`', () async {
      // TODO
    });

    // Drop location of the build used for test run.
    // String buildDropLocation (default value: null)
    test('to test the property `buildDropLocation`', () async {
      // TODO
    });

    // Flavor of the build used for test run. (E.g: Release, Debug)
    // String buildFlavor (default value: null)
    test('to test the property `buildFlavor`', () async {
      // TODO
    });

    // Platform of the build used for test run. (E.g.: x86, amd64)
    // String buildPlatform (default value: null)
    test('to test the property `buildPlatform`', () async {
      // TODO
    });

    // BuildConfiguration buildReference (default value: null)
    test('to test the property `buildReference`', () async {
      // TODO
    });

    // Comments entered by those analyzing the run.
    // String comment (default value: null)
    test('to test the property `comment`', () async {
      // TODO
    });

    // Completed date time of the run.
    // String completeDate (default value: null)
    test('to test the property `completeDate`', () async {
      // TODO
    });

    // IDs of the test configurations associated with the run.
    // List<int> configurationIds (default value: [])
    test('to test the property `configurationIds`', () async {
      // TODO
    });

    // Name of the test controller used for automated run.
    // String controller (default value: null)
    test('to test the property `controller`', () async {
      // TODO
    });

    // Additional properties of test Run.
    // List<CustomTestField> customTestFields (default value: [])
    test('to test the property `customTestFields`', () async {
      // TODO
    });

    // ShallowReference dtlAutEnvironment (default value: null)
    test('to test the property `dtlAutEnvironment`', () async {
      // TODO
    });

    // ShallowReference dtlTestEnvironment (default value: null)
    test('to test the property `dtlTestEnvironment`', () async {
      // TODO
    });

    // Due date and time for test run.
    // String dueDate (default value: null)
    test('to test the property `dueDate`', () async {
      // TODO
    });

    // DtlEnvironmentDetails environmentDetails (default value: null)
    test('to test the property `environmentDetails`', () async {
      // TODO
    });

    // Error message associated with the run.
    // String errorMessage (default value: null)
    test('to test the property `errorMessage`', () async {
      // TODO
    });

    // RunFilter filter (default value: null)
    test('to test the property `filter`', () async {
      // TODO
    });

    // The iteration in which to create the run. Root iteration of the team project will be default
    // String iteration (default value: null)
    test('to test the property `iteration`', () async {
      // TODO
    });

    // Name of the test run.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // IdentityRef owner (default value: null)
    test('to test the property `owner`', () async {
      // TODO
    });

    // PipelineReference pipelineReference (default value: null)
    test('to test the property `pipelineReference`', () async {
      // TODO
    });

    // ShallowReference plan (default value: null)
    test('to test the property `plan`', () async {
      // TODO
    });

    // IDs of the test points to use in the run.
    // List<int> pointIds (default value: [])
    test('to test the property `pointIds`', () async {
      // TODO
    });

    // URI of release environment associated with the run.
    // String releaseEnvironmentUri (default value: null)
    test('to test the property `releaseEnvironmentUri`', () async {
      // TODO
    });

    // ReleaseReference releaseReference (default value: null)
    test('to test the property `releaseReference`', () async {
      // TODO
    });

    // URI of release associated with the run.
    // String releaseUri (default value: null)
    test('to test the property `releaseUri`', () async {
      // TODO
    });

    // Run summary for run Type = NoConfigRun.
    // List<RunSummaryModel> runSummary (default value: [])
    test('to test the property `runSummary`', () async {
      // TODO
    });

    // Timespan till the run times out.
    // String runTimeout (default value: null)
    test('to test the property `runTimeout`', () async {
      // TODO
    });

    // SourceWorkFlow(CI/CD) of the test run.
    // String sourceWorkflow (default value: null)
    test('to test the property `sourceWorkflow`', () async {
      // TODO
    });

    // Start date time of the run.
    // String startDate (default value: null)
    test('to test the property `startDate`', () async {
      // TODO
    });

    // The state of the run. Type TestRunState Valid states - Unspecified ,NotStarted, InProgress, Completed, Waiting, Aborted, NeedsInvestigation
    // String state (default value: null)
    test('to test the property `state`', () async {
      // TODO
    });

    // Tags to attach with the test run, maximum of 5 tags can be added to run.
    // List<TestTag> tags (default value: [])
    test('to test the property `tags`', () async {
      // TODO
    });

    // TestConfigurationMapping of the test run.
    // String testConfigurationsMapping (default value: null)
    test('to test the property `testConfigurationsMapping`', () async {
      // TODO
    });

    // ID of the test environment associated with the run.
    // String testEnvironmentId (default value: null)
    test('to test the property `testEnvironmentId`', () async {
      // TODO
    });

    // ShallowReference testSettings (default value: null)
    test('to test the property `testSettings`', () async {
      // TODO
    });

    // Type of the run(RunType) Valid Values : (Unspecified, Normal, Blocking, Web, MtrRunInitiatedFromWeb, RunWithDtlEnv, NoConfigRun)
    // String type (default value: null)
    test('to test the property `type`', () async {
      // TODO
    });


  });

}
