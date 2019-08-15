part of azure_devops_sdk.api;

class BacklogLevelConfiguration {
  /* List of fields to include in Add Panel */
  List<WorkItemFieldReference> addPanelFields = [];
  /* Color for the backlog level */
  String color = null;
  /* Default list of columns for the backlog */
  List<BacklogColumn> columnFields = [];
  
  WorkItemTypeReference defaultWorkItemType = null;
  /* Backlog Id (for Legacy Backlog Level from process config it can be categoryref name) */
  String id = null;
  /* Indicates whether the backlog level is hidden */
  bool isHidden = null;
  /* Backlog Name */
  String name = null;
  /* Backlog Rank (Taskbacklog is 0) */
  int rank = null;
  /* The type of this backlog level */
  String type = null;
  //enum typeEnum {  portfolio,  requirement,  task,  };{
  /* Max number of work items to show in the given backlog */
  int workItemCountLimit = null;
  /* Work Item types participating in this backlog as known by the project/Process, can be overridden by team settings for bugs */
  List<WorkItemTypeReference> workItemTypes = [];
  BacklogLevelConfiguration();

  @override
  String toString() {
    return 'BacklogLevelConfiguration[addPanelFields=$addPanelFields, color=$color, columnFields=$columnFields, defaultWorkItemType=$defaultWorkItemType, id=$id, isHidden=$isHidden, name=$name, rank=$rank, type=$type, workItemCountLimit=$workItemCountLimit, workItemTypes=$workItemTypes, ]';
  }

  BacklogLevelConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['addPanelFields'] == null) {
      addPanelFields = null;
    } else {
      addPanelFields = WorkItemFieldReference.listFromJson(json['addPanelFields']);
    }
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['columnFields'] == null) {
      columnFields = null;
    } else {
      columnFields = BacklogColumn.listFromJson(json['columnFields']);
    }
    if (json['defaultWorkItemType'] == null) {
      defaultWorkItemType = null;
    } else {
      defaultWorkItemType = WorkItemTypeReference.fromJson(json['defaultWorkItemType']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isHidden'] == null) {
      isHidden = null;
    } else {
          isHidden = json['isHidden'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['rank'] == null) {
      rank = null;
    } else {
          rank = json['rank'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['workItemCountLimit'] == null) {
      workItemCountLimit = null;
    } else {
          workItemCountLimit = json['workItemCountLimit'];
    }
    if (json['workItemTypes'] == null) {
      workItemTypes = null;
    } else {
      workItemTypes = WorkItemTypeReference.listFromJson(json['workItemTypes']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (addPanelFields != null)
      json['addPanelFields'] = addPanelFields;
    if (color != null)
      json['color'] = color;
    if (columnFields != null)
      json['columnFields'] = columnFields;
    if (defaultWorkItemType != null)
      json['defaultWorkItemType'] = defaultWorkItemType;
    if (id != null)
      json['id'] = id;
    if (isHidden != null)
      json['isHidden'] = isHidden;
    if (name != null)
      json['name'] = name;
    if (rank != null)
      json['rank'] = rank;
    if (type != null)
      json['type'] = type;
    if (workItemCountLimit != null)
      json['workItemCountLimit'] = workItemCountLimit;
    if (workItemTypes != null)
      json['workItemTypes'] = workItemTypes;
    return json;
  }

  static List<BacklogLevelConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<BacklogLevelConfiguration>() : json.map((value) => BacklogLevelConfiguration.fromJson(value)).toList();
  }

  static Map<String, BacklogLevelConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BacklogLevelConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BacklogLevelConfiguration.fromJson(value));
    }
    return map;
  }
}

