part of azure_devops_sdk.api;

class LegacyTestCaseResult {
  
  int afnStripId = null;
  
  int areaId = null;
  
  String areaUri = null;
  
  String automatedTestId = null;
  
  String automatedTestName = null;
  
  String automatedTestStorage = null;
  
  String automatedTestType = null;
  
  String automatedTestTypeId = null;
  
  String buildNumber = null;
  
  LegacyBuildConfiguration buildReference = null;
  
  String comment = null;
  
  String computerName = null;
  
  int configurationId = null;
  
  String configurationName = null;
  
  DateTime creationDate = null;
  
  List<TestExtensionField> customFields = [];
  
  DateTime dateCompleted = null;
  
  DateTime dateStarted = null;
  
  int duration = null;
  
  String errorMessage = null;
  
  FailingSince failingSince = null;
  
  String failureType = null;
  
  LegacyTestCaseResultIdentifier id = null;
  
  bool isRerun = null;
  
  DateTime lastUpdated = null;
  
  String lastUpdatedBy = null;
  
  String lastUpdatedByName = null;
  
  String outcome = null;
  
  String owner = null;
  
  String ownerName = null;
  
  String priority = null;
  
  LegacyReleaseReference releaseReference = null;
  
  int resetCount = null;
  
  int resolutionStateId = null;
  
  String resultGroupType = null;
  //enum resultGroupTypeEnum {  none,  rerun,  dataDriven,  orderedTest,  generic,  };{
  
  int revision = null;
  
  String runBy = null;
  
  String runByName = null;
  
  int sequenceId = null;
  
  TestExtensionField stackTrace = null;
  
  String state = null;
  
  int subResultCount = null;
  
  String suiteName = null;
  
  String testCaseArea = null;
  
  String testCaseAreaUri = null;
  
  int testCaseId = null;
  
  int testCaseReferenceId = null;
  
  int testCaseRevision = null;
  
  String testCaseTitle = null;
  
  int testPlanId = null;
  
  int testPointId = null;
  
  int testResultId = null;
  
  int testRunId = null;
  
  String testRunTitle = null;
  
  int testSuiteId = null;
  LegacyTestCaseResult();

  @override
  String toString() {
    return 'LegacyTestCaseResult[afnStripId=$afnStripId, areaId=$areaId, areaUri=$areaUri, automatedTestId=$automatedTestId, automatedTestName=$automatedTestName, automatedTestStorage=$automatedTestStorage, automatedTestType=$automatedTestType, automatedTestTypeId=$automatedTestTypeId, buildNumber=$buildNumber, buildReference=$buildReference, comment=$comment, computerName=$computerName, configurationId=$configurationId, configurationName=$configurationName, creationDate=$creationDate, customFields=$customFields, dateCompleted=$dateCompleted, dateStarted=$dateStarted, duration=$duration, errorMessage=$errorMessage, failingSince=$failingSince, failureType=$failureType, id=$id, isRerun=$isRerun, lastUpdated=$lastUpdated, lastUpdatedBy=$lastUpdatedBy, lastUpdatedByName=$lastUpdatedByName, outcome=$outcome, owner=$owner, ownerName=$ownerName, priority=$priority, releaseReference=$releaseReference, resetCount=$resetCount, resolutionStateId=$resolutionStateId, resultGroupType=$resultGroupType, revision=$revision, runBy=$runBy, runByName=$runByName, sequenceId=$sequenceId, stackTrace=$stackTrace, state=$state, subResultCount=$subResultCount, suiteName=$suiteName, testCaseArea=$testCaseArea, testCaseAreaUri=$testCaseAreaUri, testCaseId=$testCaseId, testCaseReferenceId=$testCaseReferenceId, testCaseRevision=$testCaseRevision, testCaseTitle=$testCaseTitle, testPlanId=$testPlanId, testPointId=$testPointId, testResultId=$testResultId, testRunId=$testRunId, testRunTitle=$testRunTitle, testSuiteId=$testSuiteId, ]';
  }

  LegacyTestCaseResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['afnStripId'] == null) {
      afnStripId = null;
    } else {
          afnStripId = json['afnStripId'];
    }
    if (json['areaId'] == null) {
      areaId = null;
    } else {
          areaId = json['areaId'];
    }
    if (json['areaUri'] == null) {
      areaUri = null;
    } else {
          areaUri = json['areaUri'];
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
    if (json['buildNumber'] == null) {
      buildNumber = null;
    } else {
          buildNumber = json['buildNumber'];
    }
    if (json['buildReference'] == null) {
      buildReference = null;
    } else {
      buildReference = LegacyBuildConfiguration.fromJson(json['buildReference']);
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['computerName'] == null) {
      computerName = null;
    } else {
          computerName = json['computerName'];
    }
    if (json['configurationId'] == null) {
      configurationId = null;
    } else {
          configurationId = json['configurationId'];
    }
    if (json['configurationName'] == null) {
      configurationName = null;
    } else {
          configurationName = json['configurationName'];
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['customFields'] == null) {
      customFields = null;
    } else {
      customFields = TestExtensionField.listFromJson(json['customFields']);
    }
    if (json['dateCompleted'] == null) {
      dateCompleted = null;
    } else {
      dateCompleted = DateTime.parse(json['dateCompleted']);
    }
    if (json['dateStarted'] == null) {
      dateStarted = null;
    } else {
      dateStarted = DateTime.parse(json['dateStarted']);
    }
    if (json['duration'] == null) {
      duration = null;
    } else {
          duration = json['duration'];
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
      id = LegacyTestCaseResultIdentifier.fromJson(json['id']);
    }
    if (json['isRerun'] == null) {
      isRerun = null;
    } else {
          isRerun = json['isRerun'];
    }
    if (json['lastUpdated'] == null) {
      lastUpdated = null;
    } else {
      lastUpdated = DateTime.parse(json['lastUpdated']);
    }
    if (json['lastUpdatedBy'] == null) {
      lastUpdatedBy = null;
    } else {
          lastUpdatedBy = json['lastUpdatedBy'];
    }
    if (json['lastUpdatedByName'] == null) {
      lastUpdatedByName = null;
    } else {
          lastUpdatedByName = json['lastUpdatedByName'];
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
          owner = json['owner'];
    }
    if (json['ownerName'] == null) {
      ownerName = null;
    } else {
          ownerName = json['ownerName'];
    }
    if (json['priority'] == null) {
      priority = null;
    } else {
          priority = json['priority'];
    }
    if (json['releaseReference'] == null) {
      releaseReference = null;
    } else {
      releaseReference = LegacyReleaseReference.fromJson(json['releaseReference']);
    }
    if (json['resetCount'] == null) {
      resetCount = null;
    } else {
          resetCount = json['resetCount'];
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
          runBy = json['runBy'];
    }
    if (json['runByName'] == null) {
      runByName = null;
    } else {
          runByName = json['runByName'];
    }
    if (json['sequenceId'] == null) {
      sequenceId = null;
    } else {
          sequenceId = json['sequenceId'];
    }
    if (json['stackTrace'] == null) {
      stackTrace = null;
    } else {
      stackTrace = TestExtensionField.fromJson(json['stackTrace']);
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['subResultCount'] == null) {
      subResultCount = null;
    } else {
          subResultCount = json['subResultCount'];
    }
    if (json['suiteName'] == null) {
      suiteName = null;
    } else {
          suiteName = json['suiteName'];
    }
    if (json['testCaseArea'] == null) {
      testCaseArea = null;
    } else {
          testCaseArea = json['testCaseArea'];
    }
    if (json['testCaseAreaUri'] == null) {
      testCaseAreaUri = null;
    } else {
          testCaseAreaUri = json['testCaseAreaUri'];
    }
    if (json['testCaseId'] == null) {
      testCaseId = null;
    } else {
          testCaseId = json['testCaseId'];
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
    if (json['testPlanId'] == null) {
      testPlanId = null;
    } else {
          testPlanId = json['testPlanId'];
    }
    if (json['testPointId'] == null) {
      testPointId = null;
    } else {
          testPointId = json['testPointId'];
    }
    if (json['testResultId'] == null) {
      testResultId = null;
    } else {
          testResultId = json['testResultId'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
    if (json['testRunTitle'] == null) {
      testRunTitle = null;
    } else {
          testRunTitle = json['testRunTitle'];
    }
    if (json['testSuiteId'] == null) {
      testSuiteId = null;
    } else {
          testSuiteId = json['testSuiteId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (afnStripId != null)
      json['afnStripId'] = afnStripId;
    if (areaId != null)
      json['areaId'] = areaId;
    if (areaUri != null)
      json['areaUri'] = areaUri;
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
    if (buildNumber != null)
      json['buildNumber'] = buildNumber;
    if (buildReference != null)
      json['buildReference'] = buildReference;
    if (comment != null)
      json['comment'] = comment;
    if (computerName != null)
      json['computerName'] = computerName;
    if (configurationId != null)
      json['configurationId'] = configurationId;
    if (configurationName != null)
      json['configurationName'] = configurationName;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (customFields != null)
      json['customFields'] = customFields;
    if (dateCompleted != null)
      json['dateCompleted'] = dateCompleted == null ? null : dateCompleted.toUtc().toIso8601String();
    if (dateStarted != null)
      json['dateStarted'] = dateStarted == null ? null : dateStarted.toUtc().toIso8601String();
    if (duration != null)
      json['duration'] = duration;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (failingSince != null)
      json['failingSince'] = failingSince;
    if (failureType != null)
      json['failureType'] = failureType;
    if (id != null)
      json['id'] = id;
    if (isRerun != null)
      json['isRerun'] = isRerun;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedByName != null)
      json['lastUpdatedByName'] = lastUpdatedByName;
    if (outcome != null)
      json['outcome'] = outcome;
    if (owner != null)
      json['owner'] = owner;
    if (ownerName != null)
      json['ownerName'] = ownerName;
    if (priority != null)
      json['priority'] = priority;
    if (releaseReference != null)
      json['releaseReference'] = releaseReference;
    if (resetCount != null)
      json['resetCount'] = resetCount;
    if (resolutionStateId != null)
      json['resolutionStateId'] = resolutionStateId;
    if (resultGroupType != null)
      json['resultGroupType'] = resultGroupType;
    if (revision != null)
      json['revision'] = revision;
    if (runBy != null)
      json['runBy'] = runBy;
    if (runByName != null)
      json['runByName'] = runByName;
    if (sequenceId != null)
      json['sequenceId'] = sequenceId;
    if (stackTrace != null)
      json['stackTrace'] = stackTrace;
    if (state != null)
      json['state'] = state;
    if (subResultCount != null)
      json['subResultCount'] = subResultCount;
    if (suiteName != null)
      json['suiteName'] = suiteName;
    if (testCaseArea != null)
      json['testCaseArea'] = testCaseArea;
    if (testCaseAreaUri != null)
      json['testCaseAreaUri'] = testCaseAreaUri;
    if (testCaseId != null)
      json['testCaseId'] = testCaseId;
    if (testCaseReferenceId != null)
      json['testCaseReferenceId'] = testCaseReferenceId;
    if (testCaseRevision != null)
      json['testCaseRevision'] = testCaseRevision;
    if (testCaseTitle != null)
      json['testCaseTitle'] = testCaseTitle;
    if (testPlanId != null)
      json['testPlanId'] = testPlanId;
    if (testPointId != null)
      json['testPointId'] = testPointId;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    if (testRunTitle != null)
      json['testRunTitle'] = testRunTitle;
    if (testSuiteId != null)
      json['testSuiteId'] = testSuiteId;
    return json;
  }

  static List<LegacyTestCaseResult> listFromJson(List<dynamic> json) {
    return json == null ? List<LegacyTestCaseResult>() : json.map((value) => LegacyTestCaseResult.fromJson(value)).toList();
  }

  static Map<String, LegacyTestCaseResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LegacyTestCaseResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LegacyTestCaseResult.fromJson(value));
    }
    return map;
  }
}

