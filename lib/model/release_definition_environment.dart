part of azure_devops_sdk.api;

class ReleaseDefinitionEnvironment {
  /* Gets or sets the BadgeUrl. BadgeUrl will be used when Badge will be enabled in Release Definition Environment. */
  String badgeUrl = null;
  /* Gets or sets the environment conditions. */
  List<Condition> conditions = [];
  
  ReleaseShallowReference currentRelease = null;
  /* Gets or sets the demands. */
  List<Demand> demands = [];
  /* Gets or sets the deploy phases of environment. */
  List<DeployPhase> deployPhases = [];
  
  ReleaseDefinitionDeployStep deployStep = null;
  
  EnvironmentOptions environmentOptions = null;
  /* Gets or sets the triggers on environment. */
  List<EnvironmentTrigger> environmentTriggers = [];
  
  EnvironmentExecutionPolicy executionPolicy = null;
  /* Gets and sets the ID of the ReleaseDefinitionEnvironment. */
  int id = null;
  /* Gets and sets the name of the ReleaseDefinitionEnvironment. */
  String name = null;
  
  IdentityRef owner = null;
  
  ReleaseDefinitionApprovals postDeployApprovals = null;
  
  ReleaseDefinitionGatesStep postDeploymentGates = null;
  
  ReleaseDefinitionApprovals preDeployApprovals = null;
  
  ReleaseDefinitionGatesStep preDeploymentGates = null;
  
  ProcessParameters processParameters = null;
  
  PropertiesCollection properties = null;
  /* Gets or sets the queue ID. */
  int queueId = null;
  /* Gets and sets the rank of the ReleaseDefinitionEnvironment. */
  int rank = null;
  
  EnvironmentRetentionPolicy retentionPolicy = null;
  /* Gets or sets the schedules */
  List<ReleaseSchedule> schedules = [];
  /* Gets or sets the variable groups. */
  List<int> variableGroups = [];
  /* Gets and sets the variables. */
  Map<String, ConfigurationVariableValue> variables = {};
  ReleaseDefinitionEnvironment();

  @override
  String toString() {
    return 'ReleaseDefinitionEnvironment[badgeUrl=$badgeUrl, conditions=$conditions, currentRelease=$currentRelease, demands=$demands, deployPhases=$deployPhases, deployStep=$deployStep, environmentOptions=$environmentOptions, environmentTriggers=$environmentTriggers, executionPolicy=$executionPolicy, id=$id, name=$name, owner=$owner, postDeployApprovals=$postDeployApprovals, postDeploymentGates=$postDeploymentGates, preDeployApprovals=$preDeployApprovals, preDeploymentGates=$preDeploymentGates, processParameters=$processParameters, properties=$properties, queueId=$queueId, rank=$rank, retentionPolicy=$retentionPolicy, schedules=$schedules, variableGroups=$variableGroups, variables=$variables, ]';
  }

  ReleaseDefinitionEnvironment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['badgeUrl'] == null) {
      badgeUrl = null;
    } else {
          badgeUrl = json['badgeUrl'];
    }
    if (json['conditions'] == null) {
      conditions = null;
    } else {
      conditions = Condition.listFromJson(json['conditions']);
    }
    if (json['currentRelease'] == null) {
      currentRelease = null;
    } else {
      currentRelease = ReleaseShallowReference.fromJson(json['currentRelease']);
    }
    if (json['demands'] == null) {
      demands = null;
    } else {
      demands = Demand.listFromJson(json['demands']);
    }
    if (json['deployPhases'] == null) {
      deployPhases = null;
    } else {
      deployPhases = DeployPhase.listFromJson(json['deployPhases']);
    }
    if (json['deployStep'] == null) {
      deployStep = null;
    } else {
      deployStep = ReleaseDefinitionDeployStep.fromJson(json['deployStep']);
    }
    if (json['environmentOptions'] == null) {
      environmentOptions = null;
    } else {
      environmentOptions = EnvironmentOptions.fromJson(json['environmentOptions']);
    }
    if (json['environmentTriggers'] == null) {
      environmentTriggers = null;
    } else {
      environmentTriggers = EnvironmentTrigger.listFromJson(json['environmentTriggers']);
    }
    if (json['executionPolicy'] == null) {
      executionPolicy = null;
    } else {
      executionPolicy = EnvironmentExecutionPolicy.fromJson(json['executionPolicy']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (json['postDeployApprovals'] == null) {
      postDeployApprovals = null;
    } else {
      postDeployApprovals = ReleaseDefinitionApprovals.fromJson(json['postDeployApprovals']);
    }
    if (json['postDeploymentGates'] == null) {
      postDeploymentGates = null;
    } else {
      postDeploymentGates = ReleaseDefinitionGatesStep.fromJson(json['postDeploymentGates']);
    }
    if (json['preDeployApprovals'] == null) {
      preDeployApprovals = null;
    } else {
      preDeployApprovals = ReleaseDefinitionApprovals.fromJson(json['preDeployApprovals']);
    }
    if (json['preDeploymentGates'] == null) {
      preDeploymentGates = null;
    } else {
      preDeploymentGates = ReleaseDefinitionGatesStep.fromJson(json['preDeploymentGates']);
    }
    if (json['processParameters'] == null) {
      processParameters = null;
    } else {
      processParameters = ProcessParameters.fromJson(json['processParameters']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = PropertiesCollection.fromJson(json['properties']);
    }
    if (json['queueId'] == null) {
      queueId = null;
    } else {
          queueId = json['queueId'];
    }
    if (json['rank'] == null) {
      rank = null;
    } else {
          rank = json['rank'];
    }
    if (json['retentionPolicy'] == null) {
      retentionPolicy = null;
    } else {
      retentionPolicy = EnvironmentRetentionPolicy.fromJson(json['retentionPolicy']);
    }
    if (json['schedules'] == null) {
      schedules = null;
    } else {
      schedules = ReleaseSchedule.listFromJson(json['schedules']);
    }
    if (json['variableGroups'] == null) {
      variableGroups = null;
    } else {
      variableGroups = (json['variableGroups'] as List).cast<int>();
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
      variables = ConfigurationVariableValue.mapFromJson(json['variables']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (badgeUrl != null)
      json['badgeUrl'] = badgeUrl;
    if (conditions != null)
      json['conditions'] = conditions;
    if (currentRelease != null)
      json['currentRelease'] = currentRelease;
    if (demands != null)
      json['demands'] = demands;
    if (deployPhases != null)
      json['deployPhases'] = deployPhases;
    if (deployStep != null)
      json['deployStep'] = deployStep;
    if (environmentOptions != null)
      json['environmentOptions'] = environmentOptions;
    if (environmentTriggers != null)
      json['environmentTriggers'] = environmentTriggers;
    if (executionPolicy != null)
      json['executionPolicy'] = executionPolicy;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (owner != null)
      json['owner'] = owner;
    if (postDeployApprovals != null)
      json['postDeployApprovals'] = postDeployApprovals;
    if (postDeploymentGates != null)
      json['postDeploymentGates'] = postDeploymentGates;
    if (preDeployApprovals != null)
      json['preDeployApprovals'] = preDeployApprovals;
    if (preDeploymentGates != null)
      json['preDeploymentGates'] = preDeploymentGates;
    if (processParameters != null)
      json['processParameters'] = processParameters;
    if (properties != null)
      json['properties'] = properties;
    if (queueId != null)
      json['queueId'] = queueId;
    if (rank != null)
      json['rank'] = rank;
    if (retentionPolicy != null)
      json['retentionPolicy'] = retentionPolicy;
    if (schedules != null)
      json['schedules'] = schedules;
    if (variableGroups != null)
      json['variableGroups'] = variableGroups;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<ReleaseDefinitionEnvironment> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionEnvironment>() : json.map((value) => ReleaseDefinitionEnvironment.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionEnvironment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionEnvironment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionEnvironment.fromJson(value));
    }
    return map;
  }
}

