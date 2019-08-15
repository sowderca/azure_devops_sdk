part of azure_devops_sdk.api;

class DeploymentAttempt {
  /* Deployment attempt. */
  int attempt = null;
  /* ID of the deployment. */
  int deploymentId = null;
  /* Specifies whether deployment has started or not. */
  bool hasStarted = null;
  /* ID of deployment. */
  int id = null;
  /* All the issues related to the deployment. */
  List<Issue> issues = [];
  
  IdentityRef lastModifiedBy = null;
  /* Time when this deployment last modified. */
  DateTime lastModifiedOn = null;
  /* Deployment operation status. */
  String operationStatus = null;
  //enum operationStatusEnum {  undefined,  queued,  scheduled,  pending,  approved,  rejected,  deferred,  queuedForAgent,  phaseInProgress,  phaseSucceeded,  phasePartiallySucceeded,  phaseFailed,  canceled,  phaseCanceled,  manualInterventionPending,  queuedForPipeline,  cancelling,  evaluatingGates,  gateFailed,  all,  };{
  
  ReleaseGates postDeploymentGates = null;
  
  ReleaseGates preDeploymentGates = null;
  /* When this deployment queued on. */
  DateTime queuedOn = null;
  /* Reason for the deployment. */
  String reason = null;
  //enum reasonEnum {  none,  manual,  automated,  scheduled,  redeployTrigger,  };{
  /* List of release deployphases executed in this deployment. */
  List<ReleaseDeployPhase> releaseDeployPhases = [];
  
  IdentityRef requestedBy = null;
  
  IdentityRef requestedFor = null;
  /* status of the deployment. */
  String status = null;
  //enum statusEnum {  undefined,  notDeployed,  inProgress,  succeeded,  partiallySucceeded,  failed,  all,  };{
  DeploymentAttempt();

  @override
  String toString() {
    return 'DeploymentAttempt[attempt=$attempt, deploymentId=$deploymentId, hasStarted=$hasStarted, id=$id, issues=$issues, lastModifiedBy=$lastModifiedBy, lastModifiedOn=$lastModifiedOn, operationStatus=$operationStatus, postDeploymentGates=$postDeploymentGates, preDeploymentGates=$preDeploymentGates, queuedOn=$queuedOn, reason=$reason, releaseDeployPhases=$releaseDeployPhases, requestedBy=$requestedBy, requestedFor=$requestedFor, status=$status, ]';
  }

  DeploymentAttempt.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attempt'] == null) {
      attempt = null;
    } else {
          attempt = json['attempt'];
    }
    if (json['deploymentId'] == null) {
      deploymentId = null;
    } else {
          deploymentId = json['deploymentId'];
    }
    if (json['hasStarted'] == null) {
      hasStarted = null;
    } else {
          hasStarted = json['hasStarted'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['issues'] == null) {
      issues = null;
    } else {
      issues = Issue.listFromJson(json['issues']);
    }
    if (json['lastModifiedBy'] == null) {
      lastModifiedBy = null;
    } else {
      lastModifiedBy = IdentityRef.fromJson(json['lastModifiedBy']);
    }
    if (json['lastModifiedOn'] == null) {
      lastModifiedOn = null;
    } else {
      lastModifiedOn = DateTime.parse(json['lastModifiedOn']);
    }
    if (json['operationStatus'] == null) {
      operationStatus = null;
    } else {
          operationStatus = json['operationStatus'];
    }
    if (json['postDeploymentGates'] == null) {
      postDeploymentGates = null;
    } else {
      postDeploymentGates = ReleaseGates.fromJson(json['postDeploymentGates']);
    }
    if (json['preDeploymentGates'] == null) {
      preDeploymentGates = null;
    } else {
      preDeploymentGates = ReleaseGates.fromJson(json['preDeploymentGates']);
    }
    if (json['queuedOn'] == null) {
      queuedOn = null;
    } else {
      queuedOn = DateTime.parse(json['queuedOn']);
    }
    if (json['reason'] == null) {
      reason = null;
    } else {
          reason = json['reason'];
    }
    if (json['releaseDeployPhases'] == null) {
      releaseDeployPhases = null;
    } else {
      releaseDeployPhases = ReleaseDeployPhase.listFromJson(json['releaseDeployPhases']);
    }
    if (json['requestedBy'] == null) {
      requestedBy = null;
    } else {
      requestedBy = IdentityRef.fromJson(json['requestedBy']);
    }
    if (json['requestedFor'] == null) {
      requestedFor = null;
    } else {
      requestedFor = IdentityRef.fromJson(json['requestedFor']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attempt != null)
      json['attempt'] = attempt;
    if (deploymentId != null)
      json['deploymentId'] = deploymentId;
    if (hasStarted != null)
      json['hasStarted'] = hasStarted;
    if (id != null)
      json['id'] = id;
    if (issues != null)
      json['issues'] = issues;
    if (lastModifiedBy != null)
      json['lastModifiedBy'] = lastModifiedBy;
    if (lastModifiedOn != null)
      json['lastModifiedOn'] = lastModifiedOn == null ? null : lastModifiedOn.toUtc().toIso8601String();
    if (operationStatus != null)
      json['operationStatus'] = operationStatus;
    if (postDeploymentGates != null)
      json['postDeploymentGates'] = postDeploymentGates;
    if (preDeploymentGates != null)
      json['preDeploymentGates'] = preDeploymentGates;
    if (queuedOn != null)
      json['queuedOn'] = queuedOn == null ? null : queuedOn.toUtc().toIso8601String();
    if (reason != null)
      json['reason'] = reason;
    if (releaseDeployPhases != null)
      json['releaseDeployPhases'] = releaseDeployPhases;
    if (requestedBy != null)
      json['requestedBy'] = requestedBy;
    if (requestedFor != null)
      json['requestedFor'] = requestedFor;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<DeploymentAttempt> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentAttempt>() : json.map((value) => DeploymentAttempt.fromJson(value)).toList();
  }

  static Map<String, DeploymentAttempt> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentAttempt>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentAttempt.fromJson(value));
    }
    return map;
  }
}

