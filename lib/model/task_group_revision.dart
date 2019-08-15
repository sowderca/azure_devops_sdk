part of azure_devops_sdk.api;

class TaskGroupRevision {
  
  IdentityRef changedBy = null;
  
  DateTime changedDate = null;
  
  String changeType = null;
  //enum changeTypeEnum {  add,  update,  delete,  undelete,  };{
  
  String comment = null;
  
  int fileId = null;
  
  int majorVersion = null;
  
  int revision = null;
  
  String taskGroupId = null;
  TaskGroupRevision();

  @override
  String toString() {
    return 'TaskGroupRevision[changedBy=$changedBy, changedDate=$changedDate, changeType=$changeType, comment=$comment, fileId=$fileId, majorVersion=$majorVersion, revision=$revision, taskGroupId=$taskGroupId, ]';
  }

  TaskGroupRevision.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changedBy'] == null) {
      changedBy = null;
    } else {
      changedBy = IdentityRef.fromJson(json['changedBy']);
    }
    if (json['changedDate'] == null) {
      changedDate = null;
    } else {
      changedDate = DateTime.parse(json['changedDate']);
    }
    if (json['changeType'] == null) {
      changeType = null;
    } else {
          changeType = json['changeType'];
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['fileId'] == null) {
      fileId = null;
    } else {
          fileId = json['fileId'];
    }
    if (json['majorVersion'] == null) {
      majorVersion = null;
    } else {
          majorVersion = json['majorVersion'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['taskGroupId'] == null) {
      taskGroupId = null;
    } else {
          taskGroupId = json['taskGroupId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changedBy != null)
      json['changedBy'] = changedBy;
    if (changedDate != null)
      json['changedDate'] = changedDate == null ? null : changedDate.toUtc().toIso8601String();
    if (changeType != null)
      json['changeType'] = changeType;
    if (comment != null)
      json['comment'] = comment;
    if (fileId != null)
      json['fileId'] = fileId;
    if (majorVersion != null)
      json['majorVersion'] = majorVersion;
    if (revision != null)
      json['revision'] = revision;
    if (taskGroupId != null)
      json['taskGroupId'] = taskGroupId;
    return json;
  }

  static List<TaskGroupRevision> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskGroupRevision>() : json.map((value) => TaskGroupRevision.fromJson(value)).toList();
  }

  static Map<String, TaskGroupRevision> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskGroupRevision>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskGroupRevision.fromJson(value));
    }
    return map;
  }
}

