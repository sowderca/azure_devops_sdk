part of azure_devops_sdk.api;

class PublishTaskGroupMetadata {
  
  String comment = null;
  
  int parentDefinitionRevision = null;
  
  bool preview = null;
  
  String taskGroupId = null;
  
  int taskGroupRevision = null;
  PublishTaskGroupMetadata();

  @override
  String toString() {
    return 'PublishTaskGroupMetadata[comment=$comment, parentDefinitionRevision=$parentDefinitionRevision, preview=$preview, taskGroupId=$taskGroupId, taskGroupRevision=$taskGroupRevision, ]';
  }

  PublishTaskGroupMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['parentDefinitionRevision'] == null) {
      parentDefinitionRevision = null;
    } else {
          parentDefinitionRevision = json['parentDefinitionRevision'];
    }
    if (json['preview'] == null) {
      preview = null;
    } else {
          preview = json['preview'];
    }
    if (json['taskGroupId'] == null) {
      taskGroupId = null;
    } else {
          taskGroupId = json['taskGroupId'];
    }
    if (json['taskGroupRevision'] == null) {
      taskGroupRevision = null;
    } else {
          taskGroupRevision = json['taskGroupRevision'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
    if (parentDefinitionRevision != null)
      json['parentDefinitionRevision'] = parentDefinitionRevision;
    if (preview != null)
      json['preview'] = preview;
    if (taskGroupId != null)
      json['taskGroupId'] = taskGroupId;
    if (taskGroupRevision != null)
      json['taskGroupRevision'] = taskGroupRevision;
    return json;
  }

  static List<PublishTaskGroupMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<PublishTaskGroupMetadata>() : json.map((value) => PublishTaskGroupMetadata.fromJson(value)).toList();
  }

  static Map<String, PublishTaskGroupMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PublishTaskGroupMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PublishTaskGroupMetadata.fromJson(value));
    }
    return map;
  }
}

