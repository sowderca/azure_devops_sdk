part of azure_devops_sdk.api;

class EnvironmentDeploymentExecutionRecord {
  
  TaskOrchestrationOwner definition = null;
  /* Id of the Environment */
  int environmentId = null;
  /* Finish time of the environment deployment execution */
  DateTime finishTime = null;
  /* Id of the Environment deployment execution history record */
  int id = null;
  /* Job Attempt */
  int jobAttempt = null;
  /* Job name */
  String jobName = null;
  
  TaskOrchestrationOwner owner = null;
  /* Plan Id */
  String planId = null;
  /* Plan type of the environment deployment execution record */
  String planType = null;
  /* Queue time of the environment deployment execution */
  DateTime queueTime = null;
  /* Request identifier of the Environment deployment execution history record */
  String requestIdentifier = null;
  /* Resource Id */
  int resourceId = null;
  /* Result of the environment deployment execution */
  String result = null;
  //enum resultEnum {  succeeded,  succeededWithIssues,  failed,  canceled,  skipped,  abandoned,  };{
  /* Project Id */
  String scopeId = null;
  /* Service owner Id */
  String serviceOwner = null;
  /* Stage Attempt */
  int stageAttempt = null;
  /* Stage name */
  String stageName = null;
  /* Start time of the environment deployment execution */
  DateTime startTime = null;
  EnvironmentDeploymentExecutionRecord();

  @override
  String toString() {
    return 'EnvironmentDeploymentExecutionRecord[definition=$definition, environmentId=$environmentId, finishTime=$finishTime, id=$id, jobAttempt=$jobAttempt, jobName=$jobName, owner=$owner, planId=$planId, planType=$planType, queueTime=$queueTime, requestIdentifier=$requestIdentifier, resourceId=$resourceId, result=$result, scopeId=$scopeId, serviceOwner=$serviceOwner, stageAttempt=$stageAttempt, stageName=$stageName, startTime=$startTime, ]';
  }

  EnvironmentDeploymentExecutionRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definition'] == null) {
      definition = null;
    } else {
      definition = TaskOrchestrationOwner.fromJson(json['definition']);
    }
    if (json['environmentId'] == null) {
      environmentId = null;
    } else {
          environmentId = json['environmentId'];
    }
    if (json['finishTime'] == null) {
      finishTime = null;
    } else {
      finishTime = DateTime.parse(json['finishTime']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['jobAttempt'] == null) {
      jobAttempt = null;
    } else {
          jobAttempt = json['jobAttempt'];
    }
    if (json['jobName'] == null) {
      jobName = null;
    } else {
          jobName = json['jobName'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = TaskOrchestrationOwner.fromJson(json['owner']);
    }
    if (json['planId'] == null) {
      planId = null;
    } else {
          planId = json['planId'];
    }
    if (json['planType'] == null) {
      planType = null;
    } else {
          planType = json['planType'];
    }
    if (json['queueTime'] == null) {
      queueTime = null;
    } else {
      queueTime = DateTime.parse(json['queueTime']);
    }
    if (json['requestIdentifier'] == null) {
      requestIdentifier = null;
    } else {
          requestIdentifier = json['requestIdentifier'];
    }
    if (json['resourceId'] == null) {
      resourceId = null;
    } else {
          resourceId = json['resourceId'];
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
    if (json['scopeId'] == null) {
      scopeId = null;
    } else {
          scopeId = json['scopeId'];
    }
    if (json['serviceOwner'] == null) {
      serviceOwner = null;
    } else {
          serviceOwner = json['serviceOwner'];
    }
    if (json['stageAttempt'] == null) {
      stageAttempt = null;
    } else {
          stageAttempt = json['stageAttempt'];
    }
    if (json['stageName'] == null) {
      stageName = null;
    } else {
          stageName = json['stageName'];
    }
    if (json['startTime'] == null) {
      startTime = null;
    } else {
      startTime = DateTime.parse(json['startTime']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definition != null)
      json['definition'] = definition;
    if (environmentId != null)
      json['environmentId'] = environmentId;
    if (finishTime != null)
      json['finishTime'] = finishTime == null ? null : finishTime.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (jobAttempt != null)
      json['jobAttempt'] = jobAttempt;
    if (jobName != null)
      json['jobName'] = jobName;
    if (owner != null)
      json['owner'] = owner;
    if (planId != null)
      json['planId'] = planId;
    if (planType != null)
      json['planType'] = planType;
    if (queueTime != null)
      json['queueTime'] = queueTime == null ? null : queueTime.toUtc().toIso8601String();
    if (requestIdentifier != null)
      json['requestIdentifier'] = requestIdentifier;
    if (resourceId != null)
      json['resourceId'] = resourceId;
    if (result != null)
      json['result'] = result;
    if (scopeId != null)
      json['scopeId'] = scopeId;
    if (serviceOwner != null)
      json['serviceOwner'] = serviceOwner;
    if (stageAttempt != null)
      json['stageAttempt'] = stageAttempt;
    if (stageName != null)
      json['stageName'] = stageName;
    if (startTime != null)
      json['startTime'] = startTime == null ? null : startTime.toUtc().toIso8601String();
    return json;
  }

  static List<EnvironmentDeploymentExecutionRecord> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentDeploymentExecutionRecord>() : json.map((value) => EnvironmentDeploymentExecutionRecord.fromJson(value)).toList();
  }

  static Map<String, EnvironmentDeploymentExecutionRecord> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentDeploymentExecutionRecord>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentDeploymentExecutionRecord.fromJson(value));
    }
    return map;
  }
}

