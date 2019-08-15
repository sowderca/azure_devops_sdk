part of azure_devops_sdk.api;

class BacklogConfiguration {
  
  BacklogFields backlogFields = null;
  /* Bugs behavior */
  String bugsBehavior = null;
  //enum bugsBehaviorEnum {  off,  asRequirements,  asTasks,  };{
  /* Hidden Backlog */
  List<String> hiddenBacklogs = [];
  /* Is BugsBehavior Configured in the process */
  bool isBugsBehaviorConfigured = null;
  /* Portfolio backlog descriptors */
  List<BacklogLevelConfiguration> portfolioBacklogs = [];
  
  BacklogLevelConfiguration requirementBacklog = null;
  
  BacklogLevelConfiguration taskBacklog = null;
  
  String url = null;
  /* Mapped states for work item types */
  List<WorkItemTypeStateInfo> workItemTypeMappedStates = [];
  BacklogConfiguration();

  @override
  String toString() {
    return 'BacklogConfiguration[backlogFields=$backlogFields, bugsBehavior=$bugsBehavior, hiddenBacklogs=$hiddenBacklogs, isBugsBehaviorConfigured=$isBugsBehaviorConfigured, portfolioBacklogs=$portfolioBacklogs, requirementBacklog=$requirementBacklog, taskBacklog=$taskBacklog, url=$url, workItemTypeMappedStates=$workItemTypeMappedStates, ]';
  }

  BacklogConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['backlogFields'] == null) {
      backlogFields = null;
    } else {
      backlogFields = BacklogFields.fromJson(json['backlogFields']);
    }
    if (json['bugsBehavior'] == null) {
      bugsBehavior = null;
    } else {
          bugsBehavior = json['bugsBehavior'];
    }
    if (json['hiddenBacklogs'] == null) {
      hiddenBacklogs = null;
    } else {
      hiddenBacklogs = (json['hiddenBacklogs'] as List).cast<String>();
    }
    if (json['isBugsBehaviorConfigured'] == null) {
      isBugsBehaviorConfigured = null;
    } else {
          isBugsBehaviorConfigured = json['isBugsBehaviorConfigured'];
    }
    if (json['portfolioBacklogs'] == null) {
      portfolioBacklogs = null;
    } else {
      portfolioBacklogs = BacklogLevelConfiguration.listFromJson(json['portfolioBacklogs']);
    }
    if (json['requirementBacklog'] == null) {
      requirementBacklog = null;
    } else {
      requirementBacklog = BacklogLevelConfiguration.fromJson(json['requirementBacklog']);
    }
    if (json['taskBacklog'] == null) {
      taskBacklog = null;
    } else {
      taskBacklog = BacklogLevelConfiguration.fromJson(json['taskBacklog']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['workItemTypeMappedStates'] == null) {
      workItemTypeMappedStates = null;
    } else {
      workItemTypeMappedStates = WorkItemTypeStateInfo.listFromJson(json['workItemTypeMappedStates']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (backlogFields != null)
      json['backlogFields'] = backlogFields;
    if (bugsBehavior != null)
      json['bugsBehavior'] = bugsBehavior;
    if (hiddenBacklogs != null)
      json['hiddenBacklogs'] = hiddenBacklogs;
    if (isBugsBehaviorConfigured != null)
      json['isBugsBehaviorConfigured'] = isBugsBehaviorConfigured;
    if (portfolioBacklogs != null)
      json['portfolioBacklogs'] = portfolioBacklogs;
    if (requirementBacklog != null)
      json['requirementBacklog'] = requirementBacklog;
    if (taskBacklog != null)
      json['taskBacklog'] = taskBacklog;
    if (url != null)
      json['url'] = url;
    if (workItemTypeMappedStates != null)
      json['workItemTypeMappedStates'] = workItemTypeMappedStates;
    return json;
  }

  static List<BacklogConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<BacklogConfiguration>() : json.map((value) => BacklogConfiguration.fromJson(value)).toList();
  }

  static Map<String, BacklogConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BacklogConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BacklogConfiguration.fromJson(value));
    }
    return map;
  }
}

