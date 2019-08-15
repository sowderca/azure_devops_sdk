part of azure_devops_sdk.api;

class RunUpdateModel {
  
  ShallowReference build = null;
  /* Drop location of the build used for test run. */
  String buildDropLocation = null;
  /* Flavor of the build used for test run. (E.g: Release, Debug) */
  String buildFlavor = null;
  /* Platform of the build used for test run. (E.g.: x86, amd64) */
  String buildPlatform = null;
  /* Comments entered by those analyzing the run. */
  String comment = null;
  /* Completed date time of the run. */
  String completedDate = null;
  /* Name of the test controller used for automated run. */
  String controller = null;
  /* true to delete inProgess Results , false otherwise. */
  bool deleteInProgressResults = null;
  
  ShallowReference dtlAutEnvironment = null;
  
  ShallowReference dtlEnvironment = null;
  
  DtlEnvironmentDetails dtlEnvironmentDetails = null;
  /* Due date and time for test run. */
  String dueDate = null;
  /* Error message associated with the run. */
  String errorMessage = null;
  /* The iteration in which to create the run. */
  String iteration = null;
  /* Log entries associated with the run. Use a comma-separated list of multiple log entry objects. { logEntry }, { logEntry }, ... */
  List<TestMessageLogDetails> logEntries = [];
  /* Name of the test run. */
  String name = null;
  /* URI of release environment associated with the run. */
  String releaseEnvironmentUri = null;
  /* URI of release associated with the run. */
  String releaseUri = null;
  /* Run summary for run Type = NoConfigRun. */
  List<RunSummaryModel> runSummary = [];
  /* SourceWorkFlow(CI/CD) of the test run. */
  String sourceWorkflow = null;
  /* Start date time of the run. */
  String startedDate = null;
  /* The state of the test run Below are the valid values - NotStarted, InProgress, Completed, Aborted, Waiting */
  String state = null;
  /* The types of sub states for test run. */
  String substate = null;
  //enum substateEnum {  none,  creatingEnvironment,  runningTests,  canceledByUser,  abortedBySystem,  timedOut,  pendingAnalysis,  analyzed,  cancellationInProgress,  };{
  /* Tags to attach with the test run. */
  List<TestTag> tags = [];
  /* ID of the test environment associated with the run. */
  String testEnvironmentId = null;
  
  ShallowReference testSettings = null;
  RunUpdateModel();

  @override
  String toString() {
    return 'RunUpdateModel[build=$build, buildDropLocation=$buildDropLocation, buildFlavor=$buildFlavor, buildPlatform=$buildPlatform, comment=$comment, completedDate=$completedDate, controller=$controller, deleteInProgressResults=$deleteInProgressResults, dtlAutEnvironment=$dtlAutEnvironment, dtlEnvironment=$dtlEnvironment, dtlEnvironmentDetails=$dtlEnvironmentDetails, dueDate=$dueDate, errorMessage=$errorMessage, iteration=$iteration, logEntries=$logEntries, name=$name, releaseEnvironmentUri=$releaseEnvironmentUri, releaseUri=$releaseUri, runSummary=$runSummary, sourceWorkflow=$sourceWorkflow, startedDate=$startedDate, state=$state, substate=$substate, tags=$tags, testEnvironmentId=$testEnvironmentId, testSettings=$testSettings, ]';
  }

  RunUpdateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['completedDate'] == null) {
      completedDate = null;
    } else {
          completedDate = json['completedDate'];
    }
    if (json['controller'] == null) {
      controller = null;
    } else {
          controller = json['controller'];
    }
    if (json['deleteInProgressResults'] == null) {
      deleteInProgressResults = null;
    } else {
          deleteInProgressResults = json['deleteInProgressResults'];
    }
    if (json['dtlAutEnvironment'] == null) {
      dtlAutEnvironment = null;
    } else {
      dtlAutEnvironment = ShallowReference.fromJson(json['dtlAutEnvironment']);
    }
    if (json['dtlEnvironment'] == null) {
      dtlEnvironment = null;
    } else {
      dtlEnvironment = ShallowReference.fromJson(json['dtlEnvironment']);
    }
    if (json['dtlEnvironmentDetails'] == null) {
      dtlEnvironmentDetails = null;
    } else {
      dtlEnvironmentDetails = DtlEnvironmentDetails.fromJson(json['dtlEnvironmentDetails']);
    }
    if (json['dueDate'] == null) {
      dueDate = null;
    } else {
          dueDate = json['dueDate'];
    }
    if (json['errorMessage'] == null) {
      errorMessage = null;
    } else {
          errorMessage = json['errorMessage'];
    }
    if (json['iteration'] == null) {
      iteration = null;
    } else {
          iteration = json['iteration'];
    }
    if (json['logEntries'] == null) {
      logEntries = null;
    } else {
      logEntries = TestMessageLogDetails.listFromJson(json['logEntries']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
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
    if (json['runSummary'] == null) {
      runSummary = null;
    } else {
      runSummary = RunSummaryModel.listFromJson(json['runSummary']);
    }
    if (json['sourceWorkflow'] == null) {
      sourceWorkflow = null;
    } else {
          sourceWorkflow = json['sourceWorkflow'];
    }
    if (json['startedDate'] == null) {
      startedDate = null;
    } else {
          startedDate = json['startedDate'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['substate'] == null) {
      substate = null;
    } else {
          substate = json['substate'];
    }
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = TestTag.listFromJson(json['tags']);
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (build != null)
      json['build'] = build;
    if (buildDropLocation != null)
      json['buildDropLocation'] = buildDropLocation;
    if (buildFlavor != null)
      json['buildFlavor'] = buildFlavor;
    if (buildPlatform != null)
      json['buildPlatform'] = buildPlatform;
    if (comment != null)
      json['comment'] = comment;
    if (completedDate != null)
      json['completedDate'] = completedDate;
    if (controller != null)
      json['controller'] = controller;
    if (deleteInProgressResults != null)
      json['deleteInProgressResults'] = deleteInProgressResults;
    if (dtlAutEnvironment != null)
      json['dtlAutEnvironment'] = dtlAutEnvironment;
    if (dtlEnvironment != null)
      json['dtlEnvironment'] = dtlEnvironment;
    if (dtlEnvironmentDetails != null)
      json['dtlEnvironmentDetails'] = dtlEnvironmentDetails;
    if (dueDate != null)
      json['dueDate'] = dueDate;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (iteration != null)
      json['iteration'] = iteration;
    if (logEntries != null)
      json['logEntries'] = logEntries;
    if (name != null)
      json['name'] = name;
    if (releaseEnvironmentUri != null)
      json['releaseEnvironmentUri'] = releaseEnvironmentUri;
    if (releaseUri != null)
      json['releaseUri'] = releaseUri;
    if (runSummary != null)
      json['runSummary'] = runSummary;
    if (sourceWorkflow != null)
      json['sourceWorkflow'] = sourceWorkflow;
    if (startedDate != null)
      json['startedDate'] = startedDate;
    if (state != null)
      json['state'] = state;
    if (substate != null)
      json['substate'] = substate;
    if (tags != null)
      json['tags'] = tags;
    if (testEnvironmentId != null)
      json['testEnvironmentId'] = testEnvironmentId;
    if (testSettings != null)
      json['testSettings'] = testSettings;
    return json;
  }

  static List<RunUpdateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<RunUpdateModel>() : json.map((value) => RunUpdateModel.fromJson(value)).toList();
  }

  static Map<String, RunUpdateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RunUpdateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RunUpdateModel.fromJson(value));
    }
    return map;
  }
}

