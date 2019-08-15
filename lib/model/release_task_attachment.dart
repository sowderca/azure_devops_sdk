part of azure_devops_sdk.api;

class ReleaseTaskAttachment {
  
  ReferenceLinks links = null;
  /* Data and time when it created. */
  DateTime createdOn = null;
  
  IdentityRef modifiedBy = null;
  /* Data and time when modified. */
  DateTime modifiedOn = null;
  /* Name of the task attachment. */
  String name = null;
  /* Record ID of the task. */
  String recordId = null;
  /* Timeline ID of the task. */
  String timelineId = null;
  /* Type of task attachment. */
  String type = null;
  ReleaseTaskAttachment();

  @override
  String toString() {
    return 'ReleaseTaskAttachment[links=$links, createdOn=$createdOn, modifiedBy=$modifiedBy, modifiedOn=$modifiedOn, name=$name, recordId=$recordId, timelineId=$timelineId, type=$type, ]';
  }

  ReleaseTaskAttachment.fromJson(Map<String, dynamic> json) {
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
    if (json['modifiedBy'] == null) {
      modifiedBy = null;
    } else {
      modifiedBy = IdentityRef.fromJson(json['modifiedBy']);
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
    if (modifiedBy != null)
      json['modifiedBy'] = modifiedBy;
    if (modifiedOn != null)
      json['modifiedOn'] = modifiedOn == null ? null : modifiedOn.toUtc().toIso8601String();
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

  static List<ReleaseTaskAttachment> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseTaskAttachment>() : json.map((value) => ReleaseTaskAttachment.fromJson(value)).toList();
  }

  static Map<String, ReleaseTaskAttachment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseTaskAttachment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseTaskAttachment.fromJson(value));
    }
    return map;
  }
}

