part of azure_devops_sdk.api;

class ProcessConfiguration {
  
  CategoryConfiguration bugWorkItems = null;
  /* Details about portfolio backlogs */
  List<CategoryConfiguration> portfolioBacklogs = [];
  
  CategoryConfiguration requirementBacklog = null;
  
  CategoryConfiguration taskBacklog = null;
  /* Type fields for the process configuration */
  Map<String, WorkItemFieldReference> typeFields = {};
  
  String url = null;
  ProcessConfiguration();

  @override
  String toString() {
    return 'ProcessConfiguration[bugWorkItems=$bugWorkItems, portfolioBacklogs=$portfolioBacklogs, requirementBacklog=$requirementBacklog, taskBacklog=$taskBacklog, typeFields=$typeFields, url=$url, ]';
  }

  ProcessConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['bugWorkItems'] == null) {
      bugWorkItems = null;
    } else {
      bugWorkItems = CategoryConfiguration.fromJson(json['bugWorkItems']);
    }
    if (json['portfolioBacklogs'] == null) {
      portfolioBacklogs = null;
    } else {
      portfolioBacklogs = CategoryConfiguration.listFromJson(json['portfolioBacklogs']);
    }
    if (json['requirementBacklog'] == null) {
      requirementBacklog = null;
    } else {
      requirementBacklog = CategoryConfiguration.fromJson(json['requirementBacklog']);
    }
    if (json['taskBacklog'] == null) {
      taskBacklog = null;
    } else {
      taskBacklog = CategoryConfiguration.fromJson(json['taskBacklog']);
    }
    if (json['typeFields'] == null) {
      typeFields = null;
    } else {
      typeFields = WorkItemFieldReference.mapFromJson(json['typeFields']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (bugWorkItems != null)
      json['bugWorkItems'] = bugWorkItems;
    if (portfolioBacklogs != null)
      json['portfolioBacklogs'] = portfolioBacklogs;
    if (requirementBacklog != null)
      json['requirementBacklog'] = requirementBacklog;
    if (taskBacklog != null)
      json['taskBacklog'] = taskBacklog;
    if (typeFields != null)
      json['typeFields'] = typeFields;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ProcessConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessConfiguration>() : json.map((value) => ProcessConfiguration.fromJson(value)).toList();
  }

  static Map<String, ProcessConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessConfiguration.fromJson(value));
    }
    return map;
  }
}

