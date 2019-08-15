part of azure_devops_sdk.api;

class TaskAttachment {
  
  ReferenceLinks links = null;
  
  DateTime createdOn = null;
  
  String lastChangedBy = null;
  
  DateTime lastChangedOn = null;
  
  String name = null;
  
  String recordId = null;
  
  String timelineId = null;
  
  String type = null;
  TaskAttachment();

  @override
  String toString() {
    return 'TaskAttachment[links=$links, createdOn=$createdOn, lastChangedBy=$lastChangedBy, lastChangedOn=$lastChangedOn, name=$name, recordId=$recordId, timelineId=$timelineId, type=$type, ]';
  }

  TaskAttachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['createdOn'] == null) {
      createdOn = null;
    } else {
      createdOn = DateTime.parse(json['createdOn']);
    }
    if (json['lastChangedBy'] == null) {
      lastChangedBy = null;
    } else {
          lastChangedBy = json['lastChangedBy'];
    }
    if (json['lastChangedOn'] == null) {
      lastChangedOn = null;
    } else {
      lastChangedOn = DateTime.parse(json['lastChangedOn']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['recordId'] == null) {
      recordId = null;
    } else {
          recordId = json['recordId'];
    }
    if (json['timelineId'] == null) {
      timelineId = null;
    } else {
          timelineId = json['timelineId'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (lastChangedBy != null)
      json['lastChangedBy'] = lastChangedBy;
    if (lastChangedOn != null)
      json['lastChangedOn'] = lastChangedOn == null ? null : lastChangedOn.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (recordId != null)
      json['recordId'] = recordId;
    if (timelineId != null)
      json['timelineId'] = timelineId;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<TaskAttachment> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAttachment>() : json.map((value) => TaskAttachment.fromJson(value)).toList();
  }

  static Map<String, TaskAttachment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAttachment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAttachment.fromJson(value));
    }
    return map;
  }
}

