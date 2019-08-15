part of azure_devops_sdk.api;

class TestRun2 {
  
  int buildConfigurationId = null;
  
  String buildNumber = null;
  
  String comment = null;
  
  DateTime completeDate = null;
  
  String controller = null;
  
  int coverageId = null;
  
  DateTime creationDate = null;
  
  DateTime deletedOn = null;
  
  String dropLocation = null;
  
  DateTime dueDate = null;
  
  String errorMessage = null;
  
  int incompleteTests = null;
  
  bool isAutomated = null;
  
  bool isBvt = null;
  
  bool isMigrated = null;
  
  int iterationId = null;
  
  DateTime lastUpdated = null;
  
  String lastUpdatedBy = null;
  
  String legacySharePath = null;
  
  int maxReservedResultId = null;
  
  int notApplicableTests = null;
  
  String owner = null;
  
  int passedTests = null;
  
  String postProcessState = null;
  
  String projectId = null;
  
  int publicTestSettingsId = null;
  
  String releaseEnvironmentUri = null;
  
  String releaseUri = null;
  
  int revision = null;
  
  DateTime startDate = null;
  
  String state = null;
  
  String testEnvironmentId = null;
  
  int testMessageLogId = null;
  
  int testPlanId = null;
  
  int testRunContextId = null;
  
  int testRunId = null;
  
  int testSettingsId = null;
  
  String title = null;
  
  int totalTests = null;
  
  String type = null;
  
  int unanalyzedTests = null;
  
  int version = null;
  TestRun2();

  @override
  String toString() {
    return 'TestRun2[buildConfigurationId=$buildConfigurationId, buildNumber=$buildNumber, comment=$comment, completeDate=$completeDate, controller=$controller, coverageId=$coverageId, creationDate=$creationDate, deletedOn=$deletedOn, dropLocation=$dropLocation, dueDate=$dueDate, errorMessage=$errorMessage, incompleteTests=$incompleteTests, isAutomated=$isAutomated, isBvt=$isBvt, isMigrated=$isMigrated, iterationId=$iterationId, lastUpdated=$lastUpdated, lastUpdatedBy=$lastUpdatedBy, legacySharePath=$legacySharePath, maxReservedResultId=$maxReservedResultId, notApplicableTests=$notApplicableTests, owner=$owner, passedTests=$passedTests, postProcessState=$postProcessState, projectId=$projectId, publicTestSettingsId=$publicTestSettingsId, releaseEnvironmentUri=$releaseEnvironmentUri, releaseUri=$releaseUri, revision=$revision, startDate=$startDate, state=$state, testEnvironmentId=$testEnvironmentId, testMessageLogId=$testMessageLogId, testPlanId=$testPlanId, testRunContextId=$testRunContextId, testRunId=$testRunId, testSettingsId=$testSettingsId, title=$title, totalTests=$totalTests, type=$type, unanalyzedTests=$unanalyzedTests, version=$version, ]';
  }

  TestRun2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildConfigurationId'] == null) {
      buildConfigurationId = null;
    } else {
          buildConfigurationId = json['buildConfigurationId'];
    }
    if (json['buildNumber'] == null) {
      buildNumber = null;
    } else {
          buildNumber = json['buildNumber'];
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['completeDate'] == null) {
      completeDate = null;
    } else {
      completeDate = DateTime.parse(json['completeDate']);
    }
    if (json['controller'] == null) {
      controller = null;
    } else {
          controller = json['controller'];
    }
    if (json['coverageId'] == null) {
      coverageId = null;
    } else {
          coverageId = json['coverageId'];
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['deletedOn'] == null) {
      deletedOn = null;
    } else {
      deletedOn = DateTime.parse(json['deletedOn']);
    }
    if (json['dropLocation'] == null) {
      dropLocation = null;
    } else {
          dropLocation = json['dropLocation'];
    }
    if (json['dueDate'] == null) {
      dueDate = null;
    } else {
      dueDate = DateTime.parse(json['dueDate']);
    }
    if (json['errorMessage'] == null) {
      errorMessage = null;
    } else {
          errorMessage = json['errorMessage'];
    }
    if (json['incompleteTests'] == null) {
      incompleteTests = null;
    } else {
          incompleteTests = json['incompleteTests'];
    }
    if (json['isAutomated'] == null) {
      isAutomated = null;
    } else {
          isAutomated = json['isAutomated'];
    }
    if (json['isBvt'] == null) {
      isBvt = null;
    } else {
          isBvt = json['isBvt'];
    }
    if (json['isMigrated'] == null) {
      isMigrated = null;
    } else {
          isMigrated = json['isMigrated'];
    }
    if (json['iterationId'] == null) {
      iterationId = null;
    } else {
          iterationId = json['iterationId'];
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
    if (json['legacySharePath'] == null) {
      legacySharePath = null;
    } else {
          legacySharePath = json['legacySharePath'];
    }
    if (json['maxReservedResultId'] == null) {
      maxReservedResultId = null;
    } else {
          maxReservedResultId = json['maxReservedResultId'];
    }
    if (json['notApplicableTests'] == null) {
      notApplicableTests = null;
    } else {
          notApplicableTests = json['notApplicableTests'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
          owner = json['owner'];
    }
    if (json['passedTests'] == null) {
      passedTests = null;
    } else {
          passedTests = json['passedTests'];
    }
    if (json['postProcessState'] == null) {
      postProcessState = null;
    } else {
          postProcessState = json['postProcessState'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['publicTestSettingsId'] == null) {
      publicTestSettingsId = null;
    } else {
          publicTestSettingsId = json['publicTestSettingsId'];
    }
    if (json['releaseEnvironmentUri'] == null) {
      releaseEnvironmentUri = null;
    } else {
          releaseEnvironmentUri = json['releaseEnvironmentUri'];
    }
    if (json['releaseUri'] == null) {
      releaseUri = null;
    } else {
          releaseUri = json['releaseUri'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['startDate'] == null) {
      startDate = null;
    } else {
      startDate = DateTime.parse(json['startDate']);
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['testEnvironmentId'] == null) {
      testEnvironmentId = null;
    } else {
          testEnvironmentId = json['testEnvironmentId'];
    }
    if (json['testMessageLogId'] == null) {
      testMessageLogId = null;
    } else {
          testMessageLogId = json['testMessageLogId'];
    }
    if (json['testPlanId'] == null) {
      testPlanId = null;
    } else {
          testPlanId = json['testPlanId'];
    }
    if (json['testRunContextId'] == null) {
      testRunContextId = null;
    } else {
          testRunContextId = json['testRunContextId'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
    if (json['testSettingsId'] == null) {
      testSettingsId = null;
    } else {
          testSettingsId = json['testSettingsId'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['totalTests'] == null) {
      totalTests = null;
    } else {
          totalTests = json['totalTests'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['unanalyzedTests'] == null) {
      unanalyzedTests = null;
    } else {
          unanalyzedTests = json['unanalyzedTests'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildConfigurationId != null)
      json['buildConfigurationId'] = buildConfigurationId;
    if (buildNumber != null)
      json['buildNumber'] = buildNumber;
    if (comment != null)
      json['comment'] = comment;
    if (completeDate != null)
      json['completeDate'] = completeDate == null ? null : completeDate.toUtc().toIso8601String();
    if (controller != null)
      json['controller'] = controller;
    if (coverageId != null)
      json['coverageId'] = coverageId;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (deletedOn != null)
      json['deletedOn'] = deletedOn == null ? null : deletedOn.toUtc().toIso8601String();
    if (dropLocation != null)
      json['dropLocation'] = dropLocation;
    if (dueDate != null)
      json['dueDate'] = dueDate == null ? null : dueDate.toUtc().toIso8601String();
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (incompleteTests != null)
      json['incompleteTests'] = incompleteTests;
    if (isAutomated != null)
      json['isAutomated'] = isAutomated;
    if (isBvt != null)
      json['isBvt'] = isBvt;
    if (isMigrated != null)
      json['isMigrated'] = isMigrated;
    if (iterationId != null)
      json['iterationId'] = iterationId;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (legacySharePath != null)
      json['legacySharePath'] = legacySharePath;
    if (maxReservedResultId != null)
      json['maxReservedResultId'] = maxReservedResultId;
    if (notApplicableTests != null)
      json['notApplicableTests'] = notApplicableTests;
    if (owner != null)
      json['owner'] = owner;
    if (passedTests != null)
      json['passedTests'] = passedTests;
    if (postProcessState != null)
      json['postProcessState'] = postProcessState;
    if (projectId != null)
      json['projectId'] = projectId;
    if (publicTestSettingsId != null)
      json['publicTestSettingsId'] = publicTestSettingsId;
    if (releaseEnvironmentUri != null)
      json['releaseEnvironmentUri'] = releaseEnvironmentUri;
    if (releaseUri != null)
      json['releaseUri'] = releaseUri;
    if (revision != null)
      json['revision'] = revision;
    if (startDate != null)
      json['startDate'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (state != null)
      json['state'] = state;
    if (testEnvironmentId != null)
      json['testEnvironmentId'] = testEnvironmentId;
    if (testMessageLogId != null)
      json['testMessageLogId'] = testMessageLogId;
    if (testPlanId != null)
      json['testPlanId'] = testPlanId;
    if (testRunContextId != null)
      json['testRunContextId'] = testRunContextId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    if (testSettingsId != null)
      json['testSettingsId'] = testSettingsId;
    if (title != null)
      json['title'] = title;
    if (totalTests != null)
      json['totalTests'] = totalTests;
    if (type != null)
      json['type'] = type;
    if (unanalyzedTests != null)
      json['unanalyzedTests'] = unanalyzedTests;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<TestRun2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRun2>() : json.map((value) => TestRun2.fromJson(value)).toList();
  }

  static Map<String, TestRun2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRun2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRun2.fromJson(value));
    }
    return map;
  }
}

