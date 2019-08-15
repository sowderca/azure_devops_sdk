part of azure_devops_sdk.api;

class RunCreateModel {
  /* true if test run is automated, false otherwise. By default it will be false. */
  bool automated = null;
  
  ShallowReference build = null;
  /* Drop location of the build used for test run. */
  String buildDropLocation = null;
  /* Flavor of the build used for test run. (E.g: Release, Debug) */
  String buildFlavor = null;
  /* Platform of the build used for test run. (E.g.: x86, amd64) */
  String buildPlatform = null;
  
  BuildConfiguration buildReference = null;
  /* Comments entered by those analyzing the run. */
  String comment = null;
  /* Completed date time of the run. */
  String completeDate = null;
  /* IDs of the test configurations associated with the run. */
  List<int> configurationIds = [];
  /* Name of the test controller used for automated run. */
  String controller = null;
  /* Additional properties of test Run. */
  List<CustomTestField> customTestFields = [];
  
  ShallowReference dtlAutEnvironment = null;
  
  ShallowReference dtlTestEnvironment = null;
  /* Due date and time for test run. */
  String dueDate = null;
  
  DtlEnvironmentDetails environmentDetails = null;
  /* Error message associated with the run. */
  String errorMessage = null;
  
  RunFilter filter = null;
  /* The iteration in which to create the run. Root iteration of the team project will be default */
  String iteration = null;
  /* Name of the test run. */
  String name = null;
  
  IdentityRef owner = null;
  
  PipelineReference pipelineReference = null;
  
  ShallowReference plan = null;
  /* IDs of the test points to use in the run. */
  List<int> pointIds = [];
  /* URI of release environment associated with the run. */
  String releaseEnvironmentUri = null;
  
  ReleaseReference releaseReference = null;
  /* URI of release associated with the run. */
  String releaseUri = null;
  /* Run summary for run Type = NoConfigRun. */
  List<RunSummaryModel> runSummary = [];
  /* Timespan till the run times out. */
  String runTimeout = null;
  /* SourceWorkFlow(CI/CD) of the test run. */
  String sourceWorkflow = null;
  /* Start date time of the run. */
  String startDate = null;
  /* The state of the run. Type TestRunState Valid states - Unspecified ,NotStarted, InProgress, Completed, Waiting, Aborted, NeedsInvestigation */
  String state = null;
  /* Tags to attach with the test run, maximum of 5 tags can be added to run. */
  List<TestTag> tags = [];
  /* TestConfigurationMapping of the test run. */
  String testConfigurationsMapping = null;
  /* ID of the test environment associated with the run. */
  String testEnvironmentId = null;
  
  ShallowReference testSettings = null;
  /* Type of the run(RunType) Valid Values : (Unspecified, Normal, Blocking, Web, MtrRunInitiatedFromWeb, RunWithDtlEnv, NoConfigRun) */
  String type = null;
  RunCreateModel();

  @override
  String toString() {
    return 'RunCreateModel[automated=$automated, build=$build, buildDropLocation=$buildDropLocation, buildFlavor=$buildFlavor, buildPlatform=$buildPlatform, buildReference=$buildReference, comment=$comment, completeDate=$completeDate, configurationIds=$configurationIds, controller=$controller, customTestFields=$customTestFields, dtlAutEnvironment=$dtlAutEnvironment, dtlTestEnvironment=$dtlTestEnvironment, dueDate=$dueDate, environmentDetails=$environmentDetails, errorMessage=$errorMessage, filter=$filter, iteration=$iteration, name=$name, owner=$owner, pipelineReference=$pipelineReference, plan=$plan, pointIds=$pointIds, releaseEnvironmentUri=$releaseEnvironmentUri, releaseReference=$releaseReference, releaseUri=$releaseUri, runSummary=$runSummary, runTimeout=$runTimeout, sourceWorkflow=$sourceWorkflow, startDate=$startDate, state=$state, tags=$tags, testConfigurationsMapping=$testConfigurationsMapping, testEnvironmentId=$testEnvironmentId, testSettings=$testSettings, type=$type, ]';
  }

  RunCreateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['automated'] == null) {
      automated = null;
    } else {
          automated = json['automated'];
    }
    if (json['build'] == null) {
      build = null;
    } else {
      build = ShallowReference.fromJson(json['build']);
    }
    if (json['buildDropLocation'] == null) {
      buildDropLocation = null;
    } else {
          buildDropLocation = json['buildDropLocation'];
    }
    if (json['buildFlavor'] == null) {
      buildFlavor = null;
    } else {
          buildFlavor = json['buildFlavor'];
    }
    if (json['buildPlatform'] == null) {
      buildPlatform = null;
    } else {
          buildPlatform = json['buildPlatform'];
    }
    if (json['buildReference'] == null) {
      buildReference = null;
    } else {
      buildReference = BuildConfiguration.fromJson(json['buildReference']);
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['completeDate'] == null) {
      completeDate = null;
    } else {
          completeDate = json['completeDate'];
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
    if (json['customTestFields'] == null) {
      customTestFields = null;
    } else {
      customTestFields = CustomTestField.listFromJson(json['customTestFields']);
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
          dueDate = json['dueDate'];
    }
    if (json['environmentDetails'] == null) {
      environmentDetails = null;
    } else {
      environmentDetails = DtlEnvironmentDetails.fromJson(json['environmentDetails']);
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
    if (json['iteration'] == null) {
      iteration = null;
    } else {
          iteration = json['iteration'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = IdentityRef.fromJson(json['owner']);
    }
    if (json['pipelineReference'] == null) {
      pipelineReference = null;
    } else {
      pipelineReference = PipelineReference.fromJson(json['pipelineReference']);
    }
    if (json['plan'] == null) {
      plan = null;
    } else {
      plan = ShallowReference.fromJson(json['plan']);
    }
    if (json['pointIds'] == null) {
      pointIds = null;
    } else {
      pointIds = (json['pointIds'] as List).cast<int>();
    }
    if (json['releaseEnvironmentUri'] == null) {
      releaseEnvironmentUri = null;
    } else {
          releaseEnvironmentUri = json['releaseEnvironmentUri'];
    }
    if (json['releaseReference'] == null) {
      releaseReference = null;
    } else {
      releaseReference = ReleaseReference.fromJson(json['releaseReference']);
    }
    if (json['releaseUri'] == null) {
      releaseUri = null;
    } else {
          releaseUri = json['releaseUri'];
    }
    if (json['runSummary'] == null) {
      runSummary = null;
    } else {
      runSummary = RunSummaryModel.listFromJson(json['runSummary']);
    }
    if (json['runTimeout'] == null) {
      runTimeout = null;
    } else {
          runTimeout = json['runTimeout'];
    }
    if (json['sourceWorkflow'] == null) {
      sourceWorkflow = null;
    } else {
          sourceWorkflow = json['sourceWorkflow'];
    }
    if (json['startDate'] == null) {
      startDate = null;
    } else {
          startDate = json['startDate'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = TestTag.listFromJson(json['tags']);
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
    if (json['testSettings'] == null) {
      testSettings = null;
    } else {
      testSettings = ShallowReference.fromJson(json['testSettings']);
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (automated != null)
      json['automated'] = automated;
    if (build != null)
      json['build'] = build;
    if (buildDropLocation != null)
      json['buildDropLocation'] = buildDropLocation;
    if (buildFlavor != null)
      json['buildFlavor'] = buildFlavor;
    if (buildPlatform != null)
      json['buildPlatform'] = buildPlatform;
    if (buildReference != null)
      json['buildReference'] = buildReference;
    if (comment != null)
      json['comment'] = comment;
    if (completeDate != null)
      json['completeDate'] = completeDate;
    if (configurationIds != null)
      json['configurationIds'] = configurationIds;
    if (controller != null)
      json['controller'] = controller;
    if (customTestFields != null)
      json['customTestFields'] = customTestFields;
    if (dtlAutEnvironment != null)
      json['dtlAutEnvironment'] = dtlAutEnvironment;
    if (dtlTestEnvironment != null)
      json['dtlTestEnvironment'] = dtlTestEnvironment;
    if (dueDate != null)
      json['dueDate'] = dueDate;
    if (environmentDetails != null)
      json['environmentDetails'] = environmentDetails;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (filter != null)
      json['filter'] = filter;
    if (iteration != null)
      json['iteration'] = iteration;
    if (name != null)
      json['name'] = name;
    if (owner != null)
      json['owner'] = owner;
    if (pipelineReference != null)
      json['pipelineReference'] = pipelineReference;
    if (plan != null)
      json['plan'] = plan;
    if (pointIds != null)
      json['pointIds'] = pointIds;
    if (releaseEnvironmentUri != null)
      json['releaseEnvironmentUri'] = releaseEnvironmentUri;
    if (releaseReference != null)
      json['releaseReference'] = releaseReference;
    if (releaseUri != null)
      json['releaseUri'] = releaseUri;
    if (runSummary != null)
      json['runSummary'] = runSummary;
    if (runTimeout != null)
      json['runTimeout'] = runTimeout;
    if (sourceWorkflow != null)
      json['sourceWorkflow'] = sourceWorkflow;
    if (startDate != null)
      json['startDate'] = startDate;
    if (state != null)
      json['state'] = state;
    if (tags != null)
      json['tags'] = tags;
    if (testConfigurationsMapping != null)
      json['testConfigurationsMapping'] = testConfigurationsMapping;
    if (testEnvironmentId != null)
      json['testEnvironmentId'] = testEnvironmentId;
    if (testSettings != null)
      json['testSettings'] = testSettings;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<RunCreateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<RunCreateModel>() : json.map((value) => RunCreateModel.fromJson(value)).toList();
  }

  static Map<String, RunCreateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RunCreateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RunCreateModel.fromJson(value));
    }
    return map;
  }
}

