part of azure_devops_sdk.api;

class TimelineTeamData {
  
  BacklogLevel backlog = null;
  /* The field reference names of the work item data */
  List<String> fieldReferenceNames = [];
  /* The id of the team */
  String id = null;
  /* Was iteration and work item data retrieved for this team. <remarks> Teams with IsExpanded false have not had their iteration, work item, and field related data queried and will never contain this data. If true then these items are queried and, if there are items in the queried range, there will be data. </remarks> */
  bool isExpanded = null;
  /* The iteration data, including the work items, in the queried date range. */
  List<TimelineTeamIteration> iterations = [];
  /* The name of the team */
  String name = null;
  /* The order by field name of this team */
  String orderByField = null;
  /* The field reference names of the partially paged work items, such as ID, WorkItemType */
  List<String> partiallyPagedFieldReferenceNames = [];
  /* The project id the team belongs team */
  String projectId = null;
  
  TimelineTeamStatus status = null;
  /* The team field default value */
  String teamFieldDefaultValue = null;
  /* The team field name of this team */
  String teamFieldName = null;
  /* The team field values */
  List<TeamFieldValue> teamFieldValues = [];
  /* Colors for the work item types. */
  List<WorkItemColor> workItemTypeColors = [];
  TimelineTeamData();

  @override
  String toString() {
    return 'TimelineTeamData[backlog=$backlog, fieldReferenceNames=$fieldReferenceNames, id=$id, isExpanded=$isExpanded, iterations=$iterations, name=$name, orderByField=$orderByField, partiallyPagedFieldReferenceNames=$partiallyPagedFieldReferenceNames, projectId=$projectId, status=$status, teamFieldDefaultValue=$teamFieldDefaultValue, teamFieldName=$teamFieldName, teamFieldValues=$teamFieldValues, workItemTypeColors=$workItemTypeColors, ]';
  }

  TimelineTeamData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['backlog'] == null) {
      backlog = null;
    } else {
      backlog = BacklogLevel.fromJson(json['backlog']);
    }
    if (json['fieldReferenceNames'] == null) {
      fieldReferenceNames = null;
    } else {
      fieldReferenceNames = (json['fieldReferenceNames'] as List).cast<String>();
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isExpanded'] == null) {
      isExpanded = null;
    } else {
          isExpanded = json['isExpanded'];
    }
    if (json['iterations'] == null) {
      iterations = null;
    } else {
      iterations = TimelineTeamIteration.listFromJson(json['iterations']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['orderByField'] == null) {
      orderByField = null;
    } else {
          orderByField = json['orderByField'];
    }
    if (json['partiallyPagedFieldReferenceNames'] == null) {
      partiallyPagedFieldReferenceNames = null;
    } else {
      partiallyPagedFieldReferenceNames = (json['partiallyPagedFieldReferenceNames'] as List).cast<String>();
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = TimelineTeamStatus.fromJson(json['status']);
    }
    if (json['teamFieldDefaultValue'] == null) {
      teamFieldDefaultValue = null;
    } else {
          teamFieldDefaultValue = json['teamFieldDefaultValue'];
    }
    if (json['teamFieldName'] == null) {
      teamFieldName = null;
    } else {
          teamFieldName = json['teamFieldName'];
    }
    if (json['teamFieldValues'] == null) {
      teamFieldValues = null;
    } else {
      teamFieldValues = TeamFieldValue.listFromJson(json['teamFieldValues']);
    }
    if (json['workItemTypeColors'] == null) {
      workItemTypeColors = null;
    } else {
      workItemTypeColors = WorkItemColor.listFromJson(json['workItemTypeColors']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (backlog != null)
      json['backlog'] = backlog;
    if (fieldReferenceNames != null)
      json['fieldReferenceNames'] = fieldReferenceNames;
    if (id != null)
      json['id'] = id;
    if (isExpanded != null)
      json['isExpanded'] = isExpanded;
    if (iterations != null)
      json['iterations'] = iterations;
    if (name != null)
      json['name'] = name;
    if (orderByField != null)
      json['orderByField'] = orderByField;
    if (partiallyPagedFieldReferenceNames != null)
      json['partiallyPagedFieldReferenceNames'] = partiallyPagedFieldReferenceNames;
    if (projectId != null)
      json['projectId'] = projectId;
    if (status != null)
      json['status'] = status;
    if (teamFieldDefaultValue != null)
      json['teamFieldDefaultValue'] = teamFieldDefaultValue;
    if (teamFieldName != null)
      json['teamFieldName'] = teamFieldName;
    if (teamFieldValues != null)
      json['teamFieldValues'] = teamFieldValues;
    if (workItemTypeColors != null)
      json['workItemTypeColors'] = workItemTypeColors;
    return json;
  }

  static List<TimelineTeamData> listFromJson(List<dynamic> json) {
    return json == null ? List<TimelineTeamData>() : json.map((value) => TimelineTeamData.fromJson(value)).toList();
  }

  static Map<String, TimelineTeamData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimelineTeamData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimelineTeamData.fromJson(value));
    }
    return map;
  }
}

