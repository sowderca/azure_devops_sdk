part of azure_devops_sdk.api;

class ReleaseEnvironment {
  /* Gets list of conditions. */
  List<ReleaseCondition> conditions = [];
  /* Gets date on which it got created. */
  DateTime createdOn = null;
  /* Gets definition environment id. */
  int definitionEnvironmentId = null;
  /* Gets list of deploy phases snapshot. */
  List<DeployPhase> deployPhasesSnapshot = [];
  /* Gets deploy steps. */
  List<DeploymentAttempt> deploySteps = [];
  
  EnvironmentOptions environmentOptions = null;
  /* Gets the unique identifier of this field. */
  int id = null;
  /* Gets date on which it got modified. */
  DateTime modifiedOn = null;
  /* Gets name. */
  String name = null;
  /* Gets next scheduled UTC time. */
  DateTime nextScheduledUtcTime = null;
  
  IdentityRef owner = null;
  
  ReleaseDefinitionApprovals postApprovalsSnapshot = null;
  /* Gets list of post deploy approvals. */
  List<ReleaseApproval> postDeployApprovals = [];
  
  ReleaseDefinitionGatesStep postDeploymentGatesSnapshot = null;
  
  ReleaseDefinitionApprovals preApprovalsSnapshot = null;
  /* Gets list of pre deploy approvals. */
  List<ReleaseApproval> preDeployApprovals = [];
  
  ReleaseDefinitionGatesStep preDeploymentGatesSnapshot = null;
  
  ProcessParameters processParameters = null;
  /* Gets rank. */
  int rank = null;
  
  ReleaseShallowReference release = null;
  
  IdentityRef releaseCreatedBy = null;
  
  ReleaseDefinitionShallowReference releaseDefinition = null;
  /* Gets release id. */
  int releaseId = null;
  /* Gets schedule deployment time of release environment. */
  DateTime scheduledDeploymentTime = null;
  /* Gets list of schedules. */
  List<ReleaseSchedule> schedules = [];
  /* Gets environment status. */
  String status = null;
  //enum statusEnum {  undefined,  notStarted,  inProgress,  succeeded,  canceled,  rejected,  queued,  scheduled,  partiallySucceeded,  };{
  /* Gets time to deploy. */
  double timeToDeploy = null;
  /* Gets trigger reason. */
  String triggerReason = null;
  /* Gets the list of variable groups. */
  List<VariableGroup> variableGroups = [];
  /* Gets the dictionary of variables. */
  Map<String, ConfigurationVariableValue> variables = {};
  ReleaseEnvironment();

  @override
  String toString() {
    return 'ReleaseEnvironment[conditions=$conditions, createdOn=$createdOn, definitionEnvironmentId=$definitionEnvironmentId, deployPhasesSnapshot=$deployPhasesSnapshot, deploySteps=$deploySteps, environmentOptions=$environmentOptions, id=$id, modifiedOn=$modifiedOn, name=$name, nextScheduledUtcTime=$nextScheduledUtcTime, owner=$owner, postApprovalsSnapshot=$postApprovalsSnapshot, postDeployApprovals=$postDeployApprovals, postDeploymentGatesSnapshot=$postDeploymentGatesSnapshot, preApprovalsSnapshot=$preApprovalsSnapshot, preDeployApprovals=$preDeployApprovals, preDeploymentGatesSnapshot=$preDeploymentGatesSnapshot, processParameters=$processParameters, rank=$rank, release=$release, releaseCreatedBy=$releaseCreatedBy, releaseDefinition=$releaseDefinition, releaseId=$releaseId, scheduledDeploymentTime=$scheduledDeploymentTime, schedules=$schedules, status=$status, timeToDeploy=$timeToDeploy, triggerReason=$triggerReason, variableGroups=$variableGroups, variables=$variables, ]';
  }

  ReleaseEnvironment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['conditions'] == null) {
      conditions = null;
    } else {
      conditions = ReleaseCondition.listFromJson(json['conditions']);
    }
    if (json['createdOn'] == null) {
      createdOn = null;
    } else {
      createdOn = DateTime.parse(json['createdOn']);
    }
    if (json['definitionEnvironmentId'] == null) {
      definitionEnvironmentId = null;
    } else {
          definitionEnvironmentId = json['definitionEnvironmentId'];
    }
    if (json['deployPhasesSnapshot'] == null) {
      deployPhasesSnapshot = null;
    } else {
      deployPhasesSnapshot = DeployPhase.listFromJson(json['deployPhasesSnapshot']);
    }
    if (json['deploySteps'] == null) {
      deploySteps = null;
    } else {
      deploySteps = DeploymentAttempt.listFromJson(json['deploySteps']);
    }
    if (json['environmentOptions'] == null) {
      environmentOptions = null;
    } else {
      environmentOptions = EnvironmentOptions.fromJson(json['environmentOptions']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['modifiedOn'] == null) {
      modifiedOn = null;
    } else {
      modifiedOn = DateTime.parse(json['modifiedOn']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['nextScheduledUtcTime'] == null) {
      nextScheduledUtcTime = null;
    } else {
      nextScheduledUtcTime = DateTime.parse(json['nextScheduledUtcTime']);
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = IdentityRef.fromJson(json['owner']);
    }
    if (json['postApprovalsSnapshot'] == null) {
      postApprovalsSnapshot = null;
    } else {
      postApprovalsSnapshot = ReleaseDefinitionApprovals.fromJson(json['postApprovalsSnapshot']);
    }
    if (json['postDeployApprovals'] == null) {
      postDeployApprovals = null;
    } else {
      postDeployApprovals = ReleaseApproval.listFromJson(json['postDeployApprovals']);
    }
    if (json['postDeploymentGatesSnapshot'] == null) {
      postDeploymentGatesSnapshot = null;
    } else {
      postDeploymentGatesSnapshot = ReleaseDefinitionGatesStep.fromJson(json['postDeploymentGatesSnapshot']);
    }
    if (json['preApprovalsSnapshot'] == null) {
      preApprovalsSnapshot = null;
    } else {
      preApprovalsSnapshot = ReleaseDefinitionApprovals.fromJson(json['preApprovalsSnapshot']);
    }
    if (json['preDeployApprovals'] == null) {
      preDeployApprovals = null;
    } else {
      preDeployApprovals = ReleaseApproval.listFromJson(json['preDeployApprovals']);
    }
    if (json['preDeploymentGatesSnapshot'] == null) {
      preDeploymentGatesSnapshot = null;
    } else {
      preDeploymentGatesSnapshot = ReleaseDefinitionGatesStep.fromJson(json['preDeploymentGatesSnapshot']);
    }
    if (json['processParameters'] == null) {
      processParameters = null;
    } else {
      processParameters = ProcessParameters.fromJson(json['processParameters']);
    }
    if (json['rank'] == null) {
      rank = null;
    } else {
          rank = json['rank'];
    }
    if (json['release'] == null) {
      release = null;
    } else {
      release = ReleaseShallowReference.fromJson(json['release']);
    }
    if (json['releaseCreatedBy'] == null) {
      releaseCreatedBy = null;
    } else {
      releaseCreatedBy = IdentityRef.fromJson(json['releaseCreatedBy']);
    }
    if (json['releaseDefinition'] == null) {
      releaseDefinition = null;
    } else {
      releaseDefinition = ReleaseDefinitionShallowReference.fromJson(json['releaseDefinition']);
    }
    if (json['releaseId'] == null) {
      releaseId = null;
    } else {
          releaseId = json['releaseId'];
    }
    if (json['scheduledDeploymentTime'] == null) {
      scheduledDeploymentTime = null;
    } else {
      scheduledDeploymentTime = DateTime.parse(json['scheduledDeploymentTime']);
    }
    if (json['schedules'] == null) {
      schedules = null;
    } else {
      schedules = ReleaseSchedule.listFromJson(json['schedules']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['timeToDeploy'] == null) {
      timeToDeploy = null;
    } else {
          timeToDeploy = json['timeToDeploy'].toDouble();
    }
    if (json['triggerReason'] == null) {
      triggerReason = null;
    } else {
          triggerReason = json['triggerReason'];
    }
    if (json['variableGroups'] == null) {
      variableGroups = null;
    } else {
      variableGroups = VariableGroup.listFromJson(json['variableGroups']);
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
      variables = ConfigurationVariableValue.mapFromJson(json['variables']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (conditions != null)
      json['conditions'] = conditions;
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (definitionEnvironmentId != null)
      json['definitionEnvironmentId'] = definitionEnvironmentId;
    if (deployPhasesSnapshot != null)
      json['deployPhasesSnapshot'] = deployPhasesSnapshot;
    if (deploySteps != null)
      json['deploySteps'] = deploySteps;
    if (environmentOptions != null)
      json['environmentOptions'] = environmentOptions;
    if (id != null)
      json['id'] = id;
    if (modifiedOn != null)
      json['modifiedOn'] = modifiedOn == null ? null : modifiedOn.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (nextScheduledUtcTime != null)
      json['nextScheduledUtcTime'] = nextScheduledUtcTime == null ? null : nextScheduledUtcTime.toUtc().toIso8601String();
    if (owner != null)
      json['owner'] = owner;
    if (postApprovalsSnapshot != null)
      json['postApprovalsSnapshot'] = postApprovalsSnapshot;
    if (postDeployApprovals != null)
      json['postDeployApprovals'] = postDeployApprovals;
    if (postDeploymentGatesSnapshot != null)
      json['postDeploymentGatesSnapshot'] = postDeploymentGatesSnapshot;
    if (preApprovalsSnapshot != null)
      json['preApprovalsSnapshot'] = preApprovalsSnapshot;
    if (preDeployApprovals != null)
      json['preDeployApprovals'] = preDeployApprovals;
    if (preDeploymentGatesSnapshot != null)
      json['preDeploymentGatesSnapshot'] = preDeploymentGatesSnapshot;
    if (processParameters != null)
      json['processParameters'] = processParameters;
    if (rank != null)
      json['rank'] = rank;
    if (release != null)
      json['release'] = release;
    if (releaseCreatedBy != null)
      json['releaseCreatedBy'] = releaseCreatedBy;
    if (releaseDefinition != null)
      json['releaseDefinition'] = releaseDefinition;
    if (releaseId != null)
      json['releaseId'] = releaseId;
    if (scheduledDeploymentTime != null)
      json['scheduledDeploymentTime'] = scheduledDeploymentTime == null ? null : scheduledDeploymentTime.toUtc().toIso8601String();
    if (schedules != null)
      json['schedules'] = schedules;
    if (status != null)
      json['status'] = status;
    if (timeToDeploy != null)
      json['timeToDeploy'] = timeToDeploy;
    if (triggerReason != null)
      json['triggerReason'] = triggerReason;
    if (variableGroups != null)
      json['variableGroups'] = variableGroups;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<ReleaseEnvironment> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseEnvironment>() : json.map((value) => ReleaseEnvironment.fromJson(value)).toList();
  }

  static Map<String, ReleaseEnvironment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseEnvironment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseEnvironment.fromJson(value));
    }
    return map;
  }
}

