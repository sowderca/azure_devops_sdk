part of azure_devops_sdk.api;

class LegacyTestRun {
  
  int bugsCount = null;
  
  int buildConfigurationId = null;
  
  String buildFlavor = null;
  
  String buildNumber = null;
  
  String buildPlatform = null;
  
  LegacyBuildConfiguration buildReference = null;
  
  String buildUri = null;
  
  String comment = null;
  
  DateTime completeDate = null;
  
  List<int> configurationIds = [];
  
  String controller = null;
  
  DateTime creationDate = null;
  
  String csmContent = null;
  
  String csmParameters = null;
  
  List<TestExtensionField> customFields = [];
  
  String dropLocation = null;
  
  ShallowReference dtlAutEnvironment = null;
  
  ShallowReference dtlTestEnvironment = null;
  
  DateTime dueDate = null;
  
  String errorMessage = null;
  
  RunFilter filter = null;
  
  int incompleteTests = null;
  
  bool isAutomated = null;
  
  bool isBvt = null;
  
  String iteration = null;
  
  int iterationId = null;
  
  DateTime lastUpdated = null;
  
  String lastUpdatedBy = null;
  
  String lastUpdatedByName = null;
  
  String legacySharePath = null;
  
  int notApplicableTests = null;
  
  String owner = null;
  
  String ownerName = null;
  
  int passedTests = null;
  
  String postProcessState = null;
  
  int publicTestSettingsId = null;
  
  String releaseEnvironmentUri = null;
  
  LegacyReleaseReference releaseReference = null;
  
  String releaseUri = null;
  
  int revision = null;
  
  List<String> rowVersion = [];
  
  bool runHasDtlEnvironment = null;
  
  String runTimeout = null;
  
  String serviceVersion = null;
  
  String sourceWorkflow = null;
  
  DateTime startDate = null;
  
  String state = null;
  
  String subscriptionName = null;
  
  String substate = null;
  
  String teamProject = null;
  
  String teamProjectUri = null;
  
  String testConfigurationsMapping = null;
  
  String testEnvironmentId = null;
  
  List<TestMessageLogDetails> testMessageLogEntries = [];
  
  int testMessageLogId = null;
  
  int testPlanId = null;
  
  int testRunId = null;
  
  List<LegacyTestRunStatistic> testRunStatistics = [];
  
  int testSettingsId = null;
  
  String title = null;
  
  int totalTests = null;
  
  String type = null;
  
  int unanalyzedTests = null;
  
  int version = null;
  LegacyTestRun();

  @override
  String toString() {
    return 'LegacyTestRun[bugsCount=$bugsCount, buildConfigurationId=$buildConfigurationId, buildFlavor=$buildFlavor, buildNumber=$buildNumber, buildPlatform=$buildPlatform, buildReference=$buildReference, buildUri=$buildUri, comment=$comment, completeDate=$completeDate, configurationIds=$configurationIds, controller=$controller, creationDate=$creationDate, csmContent=$csmContent, csmParameters=$csmParameters, customFields=$customFields, dropLocation=$dropLocation, dtlAutEnvironment=$dtlAutEnvironment, dtlTestEnvironment=$dtlTestEnvironment, dueDate=$dueDate, errorMessage=$errorMessage, filter=$filter, incompleteTests=$incompleteTests, isAutomated=$isAutomated, isBvt=$isBvt, iteration=$iteration, iterationId=$iterationId, lastUpdated=$lastUpdated, lastUpdatedBy=$lastUpdatedBy, lastUpdatedByName=$lastUpdatedByName, legacySharePath=$legacySharePath, notApplicableTests=$notApplicableTests, owner=$owner, ownerName=$ownerName, passedTests=$passedTests, postProcessState=$postProcessState, publicTestSettingsId=$publicTestSettingsId, releaseEnvironmentUri=$releaseEnvironmentUri, releaseReference=$releaseReference, releaseUri=$releaseUri, revision=$revision, rowVersion=$rowVersion, runHasDtlEnvironment=$runHasDtlEnvironment, runTimeout=$runTimeout, serviceVersion=$serviceVersion, sourceWorkflow=$sourceWorkflow, startDate=$startDate, state=$state, subscriptionName=$subscriptionName, substate=$substate, teamProject=$teamProject, teamProjectUri=$teamProjectUri, testConfigurationsMapping=$testConfigurationsMapping, testEnvironmentId=$testEnvironmentId, testMessageLogEntries=$testMessageLogEntries, testMessageLogId=$testMessageLogId, testPlanId=$testPlanId, testRunId=$testRunId, testRunStatistics=$testRunStatistics, testSettingsId=$testSettingsId, title=$title, totalTests=$totalTests, type=$type, unanalyzedTests=$unanalyzedTests, version=$version, ]';
  }

  LegacyTestRun.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['bugsCount'] == null) {
      bugsCount = null;
    } else {
          bugsCount = json['bugsCount'];
    }
    if (json['buildConfigurationId'] == null) {
      buildConfigurationId = null;
    } else {
          buildConfigurationId = json['buildConfigurationId'];
    }
    if (json['buildFlavor'] == null) {
      buildFlavor = null;
    } else {
          buildFlavor = json['buildFlavor'];
    }
    if (json['buildNumber'] == null) {
      buildNumber = null;
    } else {
          buildNumber = json['buildNumber'];
    }
    if (json['buildPlatform'] == null) {
      buildPlatform = null;
    } else {
          buildPlatform = json['buildPlatform'];
    }
    if (json['buildReference'] == null) {
      buildReference = null;
    } else {
      buildReference = LegacyBuildConfiguration.fromJson(json['buildReference']);
    }
    if (json['buildUri'] == null) {
      buildUri = null;
    } else {
          buildUri = json['buildUri'];
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
    if (json['configurationIds'] == null) {
      configurationIds = null;
    } else {
      configurationIds = (json['configurationIds'] as List).cast<int>();
    }
    if (json['controller'] == null) {
      controller = null;
    } else {
          controller = json['controller'];
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['csmContent'] == null) {
      csmContent = null;
    } else {
          csmContent = json['csmContent'];
    }
    if (json['csmParameters'] == null) {
      csmParameters = null;
    } else {
          csmParameters = json['csmParameters'];
    }
    if (json['customFields'] == null) {
      customFields = null;
    } else {
      customFields = TestExtensionField.listFromJson(json['customFields']);
    }
    if (json['dropLocation'] == null) {
      dropLocation = null;
    } else {
          dropLocation = json['dropLocation'];
    }
    if (json['dtlAutEnvironment'] == null) {
      dtlAutEnvironment = null;
    } else {
      dtlAutEnvironment = ShallowReference.fromJson(json['dtlAutEnvironment']);
    }
    if (json['dtlTestEnvironment'] == null) {
      dtlTestEnvironment = null;
    } else {
      dtlTestEnvironment = ShallowReference.fromJson(json['dtlTestEnvironment']);
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
    if (json['filter'] == null) {
      filter = null;
    } else {
      filter = RunFilter.fromJson(json['filter']);
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
    if (json['iteration'] == null) {
      iteration = null;
    } else {
          iteration = json['iteration'];
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
    if (json['lastUpdatedByName'] == null) {
      lastUpdatedByName = null;
    } else {
          lastUpdatedByName = json['lastUpdatedByName'];
    }
    if (json['legacySharePath'] == null) {
      legacySharePath = null;
    } else {
          legacySharePath = json['legacySharePath'];
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
    if (json['ownerName'] == null) {
      ownerName = null;
    } else {
          ownerName = json['ownerName'];
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
    if (json['releaseReference'] == null) {
      releaseReference = null;
    } else {
      releaseReference = LegacyReleaseReference.fromJson(json['releaseReference']);
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
    if (json['rowVersion'] == null) {
      rowVersion = null;
    } else {
      rowVersion = (json['rowVersion'] as List).cast<String>();
    }
    if (json['runHasDtlEnvironment'] == null) {
      runHasDtlEnvironment = null;
    } else {
          runHasDtlEnvironment = json['runHasDtlEnvironment'];
    }
    if (json['runTimeout'] == null) {
      runTimeout = null;
    } else {
          runTimeout = json['runTimeout'];
    }
    if (json['serviceVersion'] == null) {
      serviceVersion = null;
    } else {
          serviceVersion = json['serviceVersion'];
    }
    if (json['sourceWorkflow'] == null) {
      sourceWorkflow = null;
    } else {
          sourceWorkflow = json['sourceWorkflow'];
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
    if (json['subscriptionName'] == null) {
      subscriptionName = null;
    } else {
          subscriptionName = json['subscriptionName'];
    }
    if (json['substate'] == null) {
      substate = null;
    } else {
          substate = json['substate'];
    }
    if (json['teamProject'] == null) {
      teamProject = null;
    } else {
          teamProject = json['teamProject'];
    }
    if (json['teamProjectUri'] == null) {
      teamProjectUri = null;
    } else {
          teamProjectUri = json['teamProjectUri'];
    }
    if (json['testConfigurationsMapping'] == null) {
      testConfigurationsMapping = null;
    } else {
          testConfigurationsMapping = json['testConfigurationsMapping'];
    }
    if (json['testEnvironmentId'] == null) {
      testEnvironmentId = null;
    } else {
          testEnvironmentId = json['testEnvironmentId'];
    }
    if (json['testMessageLogEntries'] == null) {
      testMessageLogEntries = null;
    } else {
      testMessageLogEntries = TestMessageLogDetails.listFromJson(json['testMessageLogEntries']);
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
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
    if (json['testRunStatistics'] == null) {
      testRunStatistics = null;
    } else {
      testRunStatistics = LegacyTestRunStatistic.listFromJson(json['testRunStatistics']);
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
    if (bugsCount != null)
      json['bugsCount'] = bugsCount;
    if (buildConfigurationId != null)
      json['buildConfigurationId'] = buildConfigurationId;
    if (buildFlavor != null)
      json['buildFlavor'] = buildFlavor;
    if (buildNumber != null)
      json['buildNumber'] = buildNumber;
    if (buildPlatform != null)
      json['buildPlatform'] = buildPlatform;
    if (buildReference != null)
      json['buildReference'] = buildReference;
    if (buildUri != null)
      json['buildUri'] = buildUri;
    if (comment != null)
      json['comment'] = comment;
    if (completeDate != null)
      json['completeDate'] = completeDate == null ? null : completeDate.toUtc().toIso8601String();
    if (configurationIds != null)
      json['configurationIds'] = configurationIds;
    if (controller != null)
      json['controller'] = controller;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (csmContent != null)
      json['csmContent'] = csmContent;
    if (csmParameters != null)
      json['csmParameters'] = csmParameters;
    if (customFields != null)
      json['customFields'] = customFields;
    if (dropLocation != null)
      json['dropLocation'] = dropLocation;
    if (dtlAutEnvironment != null)
      json['dtlAutEnvironment'] = dtlAutEnvironment;
    if (dtlTestEnvironment != null)
      json['dtlTestEnvironment'] = dtlTestEnvironment;
    if (dueDate != null)
      json['dueDate'] = dueDate == null ? null : dueDate.toUtc().toIso8601String();
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (filter != null)
      json['filter'] = filter;
    if (incompleteTests != null)
      json['incompleteTests'] = incompleteTests;
    if (isAutomated != null)
      json['isAutomated'] = isAutomated;
    if (isBvt != null)
      json['isBvt'] = isBvt;
    if (iteration != null)
      json['iteration'] = iteration;
    if (iterationId != null)
      json['iterationId'] = iterationId;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedByName != null)
      json['lastUpdatedByName'] = lastUpdatedByName;
    if (legacySharePath != null)
      json['legacySharePath'] = legacySharePath;
    if (notApplicableTests != null)
      json['notApplicableTests'] = notApplicableTests;
    if (owner != null)
      json['owner'] = owner;
    if (ownerName != null)
      json['ownerName'] = ownerName;
    if (passedTests != null)
      json['passedTests'] = passedTests;
    if (postProcessState != null)
      json['postProcessState'] = postProcessState;
    if (publicTestSettingsId != null)
      json['publicTestSettingsId'] = publicTestSettingsId;
    if (releaseEnvironmentUri != null)
      json['releaseEnvironmentUri'] = releaseEnvironmentUri;
    if (releaseReference != null)
      json['releaseReference'] = releaseReference;
    if (releaseUri != null)
      json['releaseUri'] = releaseUri;
    if (revision != null)
      json['revision'] = revision;
    if (rowVersion != null)
      json['rowVersion'] = rowVersion;
    if (runHasDtlEnvironment != null)
      json['runHasDtlEnvironment'] = runHasDtlEnvironment;
    if (runTimeout != null)
      json['runTimeout'] = runTimeout;
    if (serviceVersion != null)
      json['serviceVersion'] = serviceVersion;
    if (sourceWorkflow != null)
      json['sourceWorkflow'] = sourceWorkflow;
    if (startDate != null)
      json['startDate'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (state != null)
      json['state'] = state;
    if (subscriptionName != null)
      json['subscriptionName'] = subscriptionName;
    if (substate != null)
      json['substate'] = substate;
    if (teamProject != null)
      json['teamProject'] = teamProject;
    if (teamProjectUri != null)
      json['teamProjectUri'] = teamProjectUri;
    if (testConfigurationsMapping != null)
      json['testConfigurationsMapping'] = testConfigurationsMapping;
    if (testEnvironmentId != null)
      json['testEnvironmentId'] = testEnvironmentId;
    if (testMessageLogEntries != null)
      json['testMessageLogEntries'] = testMessageLogEntries;
    if (testMessageLogId != null)
      json['testMessageLogId'] = testMessageLogId;
    if (testPlanId != null)
      json['testPlanId'] = testPlanId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    if (testRunStatistics != null)
      json['testRunStatistics'] = testRunStatistics;
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

  static List<LegacyTestRun> listFromJson(List<dynamic> json) {
    return json == null ? List<LegacyTestRun>() : json.map((value) => LegacyTestRun.fromJson(value)).toList();
  }

  static Map<String, LegacyTestRun> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LegacyTestRun>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LegacyTestRun.fromJson(value));
    }
    return map;
  }
}

