import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TestCaseResult
void main() {
  var instance = TestCaseResult();

  group('test TestCaseResult', () {
    // Test attachment ID of action recording.
    // int afnStripId (default value: null)
    test('to test the property `afnStripId`', () async {
      // TODO
    });

    // ShallowReference area (default value: null)
    test('to test the property `area`', () async {
      // TODO
    });

    // Reference to bugs linked to test result.
    // List<ShallowReference> associatedBugs (default value: [])
    test('to test the property `associatedBugs`', () async {
      // TODO
    });

    // ID representing test method in a dll.
    // String automatedTestId (default value: null)
    test('to test the property `automatedTestId`', () async {
      // TODO
    });

    // Fully qualified name of test executed.
    // String automatedTestName (default value: null)
    test('to test the property `automatedTestName`', () async {
      // TODO
    });

    // Container to which test belongs.
    // String automatedTestStorage (default value: null)
    test('to test the property `automatedTestStorage`', () async {
      // TODO
    });

    // Type of automated test.
    // String automatedTestType (default value: null)
    test('to test the property `automatedTestType`', () async {
      // TODO
    });

    // TypeId of automated test.
    // String automatedTestTypeId (default value: null)
    test('to test the property `automatedTestTypeId`', () async {
      // TODO
    });

    // ShallowReference build (default value: null)
    test('to test the property `build`', () async {
      // TODO
    });

    // BuildReference buildReference (default value: null)
    test('to test the property `buildReference`', () async {
      // TODO
    });

    // Comment in a test result with maxSize= 1000 chars.
    // String comment (default value: null)
    test('to test the property `comment`', () async {
      // TODO
    });

    // Time when test execution completed. Completed date should be greater than StartedDate.
    // DateTime completedDate (default value: null)
    test('to test the property `completedDate`', () async {
      // TODO
    });

    // Machine name where test executed.
    // String computerName (default value: null)
    test('to test the property `computerName`', () async {
      // TODO
    });

    // ShallowReference configuration (default value: null)
    test('to test the property `configuration`', () async {
      // TODO
    });

    // Timestamp when test result created.
    // DateTime createdDate (default value: null)
    test('to test the property `createdDate`', () async {
      // TODO
    });

    // Additional properties of test result.
    // List<CustomTestField> customFields (default value: [])
    test('to test the property `customFields`', () async {
      // TODO
    });

    // Duration of test execution in milliseconds. If not provided value will be set as CompletedDate - StartedDate
    // double durationInMs (default value: null)
    test('to test the property `durationInMs`', () async {
      // TODO
    });

    // Error message in test execution.
    // String errorMessage (default value: null)
    test('to test the property `errorMessage`', () async {
      // TODO
    });

    // FailingSince failingSince (default value: null)
    test('to test the property `failingSince`', () async {
      // TODO
    });

    // Failure type of test result. Valid Value= (Known Issue, New Issue, Regression, Unknown, None)
    // String failureType (default value: null)
    test('to test the property `failureType`', () async {
      // TODO
    });

    // ID of a test result.
    // int id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Test result details of test iterations used only for Manual Testing.
    // List<TestIterationDetailsModel> iterationDetails (default value: [])
    test('to test the property `iterationDetails`', () async {
      // TODO
    });

    // IdentityRef lastUpdatedBy (default value: null)
    test('to test the property `lastUpdatedBy`', () async {
      // TODO
    });

    // Last updated datetime of test result.
    // DateTime lastUpdatedDate (default value: null)
    test('to test the property `lastUpdatedDate`', () async {
      // TODO
    });

    // Test outcome of test result. Valid values = (Unspecified, None, Passed, Failed, Inconclusive, Timeout, Aborted, Blocked, NotExecuted, Warning, Error, NotApplicable, Paused, InProgress, NotImpacted)
    // String outcome (default value: null)
    test('to test the property `outcome`', () async {
      // TODO
    });

    // IdentityRef owner (default value: null)
    test('to test the property `owner`', () async {
      // TODO
    });

    // Priority of test executed.
    // int priority (default value: null)
    test('to test the property `priority`', () async {
      // TODO
    });

    // ShallowReference project (default value: null)
    test('to test the property `project`', () async {
      // TODO
    });

    // ShallowReference release (default value: null)
    test('to test the property `release`', () async {
      // TODO
    });

    // ReleaseReference releaseReference (default value: null)
    test('to test the property `releaseReference`', () async {
      // TODO
    });

    // ResetCount.
    // int resetCount (default value: null)
    test('to test the property `resetCount`', () async {
      // TODO
    });

    // Resolution state of test result.
    // String resolutionState (default value: null)
    test('to test the property `resolutionState`', () async {
      // TODO
    });

    // ID of resolution state.
    // int resolutionStateId (default value: null)
    test('to test the property `resolutionStateId`', () async {
      // TODO
    });

    // Hierarchy type of the result, default value of None means its leaf node.
    // String resultGroupType (default value: null)
    test('to test the property `resultGroupType`', () async {
      // TODO
    });

    // Revision number of test result.
    // int revision (default value: null)
    test('to test the property `revision`', () async {
      // TODO
    });

    // IdentityRef runBy (default value: null)
    test('to test the property `runBy`', () async {
      // TODO
    });

    // Stacktrace with maxSize= 1000 chars.
    // String stackTrace (default value: null)
    test('to test the property `stackTrace`', () async {
      // TODO
    });

    // Time when test execution started.
    // DateTime startedDate (default value: null)
    test('to test the property `startedDate`', () async {
      // TODO
    });

    // State of test result. Type TestRunState.
    // String state (default value: null)
    test('to test the property `state`', () async {
      // TODO
    });

    // List of sub results inside a test result, if ResultGroupType is not None, it holds corresponding type sub results.
    // List<TestSubResult> subResults (default value: [])
    test('to test the property `subResults`', () async {
      // TODO
    });

    // ShallowReference testCase (default value: null)
    test('to test the property `testCase`', () async {
      // TODO
    });

    // Reference ID of test used by test result. Type TestResultMetaData
    // int testCaseReferenceId (default value: null)
    test('to test the property `testCaseReferenceId`', () async {
      // TODO
    });

    // TestCaseRevision Number.
    // int testCaseRevision (default value: null)
    test('to test the property `testCaseRevision`', () async {
      // TODO
    });

    // Name of test.
    // String testCaseTitle (default value: null)
    test('to test the property `testCaseTitle`', () async {
      // TODO
    });

    // ShallowReference testPlan (default value: null)
    test('to test the property `testPlan`', () async {
      // TODO
    });

    // ShallowReference testPoint (default value: null)
    test('to test the property `testPoint`', () async {
      // TODO
    });

    // ShallowReference testRun (default value: null)
    test('to test the property `testRun`', () async {
      // TODO
    });

    // ShallowReference testSuite (default value: null)
    test('to test the property `testSuite`', () async {
      // TODO
    });

    // Url of test result.
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });


  });

}
