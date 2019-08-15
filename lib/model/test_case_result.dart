part of azure_devops_sdk.api;

class TestCaseResult {
  /* Test attachment ID of action recording. */
  int afnStripId = null;
  
  ShallowReference area = null;
  /* Reference to bugs linked to test result. */
  List<ShallowReference> associatedBugs = [];
  /* ID representing test method in a dll. */
  String automatedTestId = null;
  /* Fully qualified name of test executed. */
  String automatedTestName = null;
  /* Container to which test belongs. */
  String automatedTestStorage = null;
  /* Type of automated test. */
  String automatedTestType = null;
  /* TypeId of automated test. */
  String automatedTestTypeId = null;
  
  ShallowReference build = null;
  
  BuildReference buildReference = null;
  /* Comment in a test result with maxSize= 1000 chars. */
  String comment = null;
  /* Time when test execution completed. Completed date should be greater than StartedDate. */
  DateTime completedDate = null;
  /* Machine name where test executed. */
  String computerName = null;
  
  ShallowReference configuration = null;
  /* Timestamp when test result created. */
  DateTime createdDate = null;
  /* Additional properties of test result. */
  List<CustomTestField> customFields = [];
  /* Duration of test execution in milliseconds. If not provided value will be set as CompletedDate - StartedDate */
  double durationInMs = null;
  /* Error message in test execution. */
  String errorMessage = null;
  
  FailingSince failingSince = null;
  /* Failure type of test result. Valid Value= (Known Issue, New Issue, Regression, Unknown, None) */
  String failureType = null;
  /* ID of a test result. */
  int id = null;
  /* Test result details of test iterations used only for Manual Testing. */
  List<TestIterationDetailsModel> iterationDetails = [];
  
  IdentityRef lastUpdatedBy = null;
  /* Last updated datetime of test result. */
  DateTime lastUpdatedDate = null;
  /* Test outcome of test result. Valid values = (Unspecified, None, Passed, Failed, Inconclusive, Timeout, Aborted, Blocked, NotExecuted, Warning, Error, NotApplicable, Paused, InProgress, NotImpacted) */
  String outcome = null;
  
  IdentityRef owner = null;
  /* Priority of test executed. */
  int priority = null;
  
  ShallowReference project = null;
  
  ShallowReference release = null;
  
  ReleaseReference releaseReference = null;
  /* ResetCount. */
  int resetCount = null;
  /* Resolution state of test result. */
  String resolutionState = null;
  /* ID of resolution state. */
  int resolutionStateId = null;
  /* Hierarchy type of the result, default value of None means its leaf node. */
  String resultGroupType = null;
  //enum resultGroupTypeEnum {  none,  rerun,  dataDriven,  orderedTest,  generic,  };{
  /* Revision number of test result. */
  int revision = null;
  
  IdentityRef runBy = null;
  /* Stacktrace with maxSize= 1000 chars. */
  String stackTrace = null;
  /* Time when test execution started. */
  DateTime startedDate = null;
  /* State of test result. Type TestRunState. */
  String state = null;
  /* List of sub results inside a test result, if ResultGroupType is not None, it holds corresponding type sub results. */
  List<TestSubResult> subResults = [];
  
  ShallowReference testCase = null;
  /* Reference ID of test used by test result. Type TestResultMetaData */
  int testCaseReferenceId = null;
  /* TestCaseRevision Number. */
  int testCaseRevision = null;
  /* Name of test. */
  String testCaseTitle = null;
  
  ShallowReference testPlan = null;
  
  ShallowReference testPoint = null;
  
  ShallowReference testRun = null;
  
  ShallowReference testSuite = null;
  /* Url of test result. */
  String url = null;
  TestCaseResult();

  @override
  String toString() {
    return 'TestCaseResult[afnStripId=$afnStripId, area=$area, associatedBugs=$associatedBugs, automatedTestId=$automatedTestId, automatedTestName=$automatedTestName, automatedTestStorage=$automatedTestStorage, automatedTestType=$automatedTestType, automatedTestTypeId=$automatedTestTypeId, build=$build, buildReference=$buildReference, comment=$comment, completedDate=$completedDate, computerName=$computerName, configuration=$configuration, createdDate=$createdDate, customFields=$customFields, durationInMs=$durationInMs, errorMessage=$errorMessage, failingSince=$failingSince, failureType=$failureType, id=$id, iterationDetails=$iterationDetails, lastUpdatedBy=$lastUpdatedBy, lastUpdatedDate=$lastUpdatedDate, outcome=$outcome, owner=$owner, priority=$priority, project=$project, release=$release, releaseReference=$releaseReference, resetCount=$resetCount, resolutionState=$resolutionState, resolutionStateId=$resolutionStateId, resultGroupType=$resultGroupType, revision=$revision, runBy=$runBy, stackTrace=$stackTrace, startedDate=$startedDate, state=$state, subResults=$subResults, testCase=$testCase, testCaseReferenceId=$testCaseReferenceId, testCaseRevision=$testCaseRevision, testCaseTitle=$testCaseTitle, testPlan=$testPlan, testPoint=$testPoint, testRun=$testRun, testSuite=$testSuite, url=$url, ]';
  }

  TestCaseResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['afnStripId'] == null) {
      afnStripId = null;
    } else {
          afnStripId = json['afnStripId'];
    }
    if (json['area'] == null) {
      area = null;
    } else {
      area = ShallowReference.fromJson(json['area']);
    }
    if (json['associatedBugs'] == null) {
      associatedBugs = null;
    } else {
      associatedBugs = ShallowReference.listFromJson(json['associatedBugs']);
    }
    if (json['automatedTestId'] == null) {
      automatedTestId = null;
    } else {
          automatedTestId = json['automatedTestId'];
    }
    if (json['automatedTestName'] == null) {
      automatedTestName = null;
    } else {
          automatedTestName = json['automatedTestName'];
    }
    if (json['automatedTestStorage'] == null) {
      automatedTestStorage = null;
    } else {
          automatedTestStorage = json['automatedTestStorage'];
    }
    if (json['automatedTestType'] == null) {
      automatedTestType = null;
    } else {
          automatedTestType = json['automatedTestType'];
    }
    if (json['automatedTestTypeId'] == null) {
      automatedTestTypeId = null;
    } else {
          automatedTestTypeId = json['automatedTestTypeId'];
    }
    if (json['build'] == null) {
      build = null;
    } else {
      build = ShallowReference.fromJson(json['build']);
    }
    if (json['buildReference'] == null) {
      buildReference = null;
    } else {
      buildReference = BuildReference.fromJson(json['buildReference']);
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['completedDate'] == null) {
      completedDate = null;
    } else {
      completedDate = DateTime.parse(json['completedDate']);
    }
    if (json['computerName'] == null) {
      computerName = null;
    } else {
          computerName = json['computerName'];
    }
    if (json['configuration'] == null) {
      configuration = null;
    } else {
      configuration = ShallowReference.fromJson(json['configuration']);
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['customFields'] == null) {
      customFields = null;
    } else {
      customFields = CustomTestField.listFromJson(json['customFields']);
    }
    if (json['durationInMs'] == null) {
      durationInMs = null;
    } else {
          durationInMs = json['durationInMs'].toDouble();
    }
    if (json['errorMessage'] == null) {
      errorMessage = null;
    } else {
          errorMessage = json['errorMessage'];
    }
    if (json['failingSince'] == null) {
      failingSince = null;
    } else {
      failingSince = FailingSince.fromJson(json['failingSince']);
    }
    if (json['failureType'] == null) {
      failureType = null;
    } else {
          failureType = json['failureType'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['iterationDetails'] == null) {
      iterationDetails = null;
    } else {
      iterationDetails = TestIterationDetailsModel.listFromJson(json['iterationDetails']);
    }
    if (json['lastUpdatedBy'] == null) {
      lastUpdatedBy = null;
    } else {
      lastUpdatedBy = IdentityRef.fromJson(json['lastUpdatedBy']);
    }
    if (json['lastUpdatedDate'] == null) {
      lastUpdatedDate = null;
    } else {
      lastUpdatedDate = DateTime.parse(json['lastUpdatedDate']);
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = IdentityRef.fromJson(json['owner']);
    }
    if (json['priority'] == null) {
      priority = null;
    } else {
          priority = json['priority'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ShallowReference.fromJson(json['project']);
    }
    if (json['release'] == null) {
      release = null;
    } else {
      release = ShallowReference.fromJson(json['release']);
    }
    if (json['releaseReference'] == null) {
      releaseReference = null;
    } else {
      releaseReference = ReleaseReference.fromJson(json['releaseReference']);
    }
    if (json['resetCount'] == null) {
      resetCount = null;
    } else {
          resetCount = json['resetCount'];
    }
    if (json['resolutionState'] == null) {
      resolutionState = null;
    } else {
          resolutionState = json['resolutionState'];
    }
    if (json['resolutionStateId'] == null) {
      resolutionStateId = null;
    } else {
          resolutionStateId = json['resolutionStateId'];
    }
    if (json['resultGroupType'] == null) {
      resultGroupType = null;
    } else {
          resultGroupType = json['resultGroupType'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['runBy'] == null) {
      runBy = null;
    } else {
      runBy = IdentityRef.fromJson(json['runBy']);
    }
    if (json['stackTrace'] == null) {
      stackTrace = null;
    } else {
          stackTrace = json['stackTrace'];
    }
    if (json['startedDate'] == null) {
      startedDate = null;
    } else {
      startedDate = DateTime.parse(json['startedDate']);
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['subResults'] == null) {
      subResults = null;
    } else {
      subResults = TestSubResult.listFromJson(json['subResults']);
    }
    if (json['testCase'] == null) {
      testCase = null;
    } else {
      testCase = ShallowReference.fromJson(json['testCase']);
    }
    if (json['testCaseReferenceId'] == null) {
      testCaseReferenceId = null;
    } else {
          testCaseReferenceId = json['testCaseReferenceId'];
    }
    if (json['testCaseRevision'] == null) {
      testCaseRevision = null;
    } else {
          testCaseRevision = json['testCaseRevision'];
    }
    if (json['testCaseTitle'] == null) {
      testCaseTitle = null;
    } else {
          testCaseTitle = json['testCaseTitle'];
    }
    if (json['testPlan'] == null) {
      testPlan = null;
    } else {
      testPlan = ShallowReference.fromJson(json['testPlan']);
    }
    if (json['testPoint'] == null) {
      testPoint = null;
    } else {
      testPoint = ShallowReference.fromJson(json['testPoint']);
    }
    if (json['testRun'] == null) {
      testRun = null;
    } else {
      testRun = ShallowReference.fromJson(json['testRun']);
    }
    if (json['testSuite'] == null) {
      testSuite = null;
    } else {
      testSuite = ShallowReference.fromJson(json['testSuite']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (afnStripId != null)
      json['afnStripId'] = afnStripId;
    if (area != null)
      json['area'] = area;
    if (associatedBugs != null)
      json['associatedBugs'] = associatedBugs;
    if (automatedTestId != null)
      json['automatedTestId'] = automatedTestId;
    if (automatedTestName != null)
      json['automatedTestName'] = automatedTestName;
    if (automatedTestStorage != null)
      json['automatedTestStorage'] = automatedTestStorage;
    if (automatedTestType != null)
      json['automatedTestType'] = automatedTestType;
    if (automatedTestTypeId != null)
      json['automatedTestTypeId'] = automatedTestTypeId;
    if (build != null)
      json['build'] = build;
    if (buildReference != null)
      json['buildReference'] = buildReference;
    if (comment != null)
      json['comment'] = comment;
    if (completedDate != null)
      json['completedDate'] = completedDate == null ? null : completedDate.toUtc().toIso8601String();
    if (computerName != null)
      json['computerName'] = computerName;
    if (configuration != null)
      json['configuration'] = configuration;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (customFields != null)
      json['customFields'] = customFields;
    if (durationInMs != null)
      json['durationInMs'] = durationInMs;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (failingSince != null)
      json['failingSince'] = failingSince;
    if (failureType != null)
      json['failureType'] = failureType;
    if (id != null)
      json['id'] = id;
    if (iterationDetails != null)
      json['iterationDetails'] = iterationDetails;
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (outcome != null)
      json['outcome'] = outcome;
    if (owner != null)
      json['owner'] = owner;
    if (priority != null)
      json['priority'] = priority;
    if (project != null)
      json['project'] = project;
    if (release != null)
      json['release'] = release;
    if (releaseReference != null)
      json['releaseReference'] = releaseReference;
    if (resetCount != null)
      json['resetCount'] = resetCount;
    if (resolutionState != null)
      json['resolutionState'] = resolutionState;
    if (resolutionStateId != null)
      json['resolutionStateId'] = resolutionStateId;
    if (resultGroupType != null)
      json['resultGroupType'] = resultGroupType;
    if (revision != null)
      json['revision'] = revision;
    if (runBy != null)
      json['runBy'] = runBy;
    if (stackTrace != null)
      json['stackTrace'] = stackTrace;
    if (startedDate != null)
      json['startedDate'] = startedDate == null ? null : startedDate.toUtc().toIso8601String();
    if (state != null)
      json['state'] = state;
    if (subResults != null)
      json['subResults'] = subResults;
    if (testCase != null)
      json['testCase'] = testCase;
    if (testCaseReferenceId != null)
      json['testCaseReferenceId'] = testCaseReferenceId;
    if (testCaseRevision != null)
      json['testCaseRevision'] = testCaseRevision;
    if (testCaseTitle != null)
      json['testCaseTitle'] = testCaseTitle;
    if (testPlan != null)
      json['testPlan'] = testPlan;
    if (testPoint != null)
      json['testPoint'] = testPoint;
    if (testRun != null)
      json['testRun'] = testRun;
    if (testSuite != null)
      json['testSuite'] = testSuite;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestCaseResult> listFromJson(List<dynamic> json) {
    return json == null ? List<TestCaseResult>() : json.map((value) => TestCaseResult.fromJson(value)).toList();
  }

  static Map<String, TestCaseResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestCaseResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestCaseResult.fromJson(value));
    }
    return map;
  }
}

