part of azure_devops_sdk.api;

class Folder {
  
  IdentityRef createdBy = null;
  /* The date the folder was created. */
  DateTime createdOn = null;
  /* The description. */
  String description = null;
  
  IdentityRef lastChangedBy = null;
  /* The date the folder was last changed. */
  DateTime lastChangedDate = null;
  /* The full path. */
  String path = null;
  
  TeamProjectReference project = null;
  Folder();

  @override
  String toString() {
    return 'Folder[createdBy=$createdBy, createdOn=$createdOn, description=$description, lastChangedBy=$lastChangedBy, lastChangedDate=$lastChangedDate, path=$path, project=$project, ]';
  }

  Folder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
    }
    if (json['createdOn'] == null) {
      createdOn = null;
    } else {
      createdOn = DateTime.parse(json['createdOn']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['lastChangedBy'] == null) {
      lastChangedBy = null;
    } else {
      lastChangedBy = IdentityRef.fromJson(json['lastChangedBy']);
    }
    if (json['lastChangedDate'] == null) {
      lastChangedDate = null;
    } else {
      lastChangedDate = DateTime.parse(json['lastChangedDate']);
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = TeamProjectReference.fromJson(json['project']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (description != null)
      json['description'] = description;
    if (lastChangedBy != null)
      json['lastChangedBy'] = lastChangedBy;
    if (lastChangedDate != null)
      json['lastChangedDate'] = lastChangedDate == null ? null : lastChangedDate.toUtc().toIso8601String();
    if (path != null)
      json['path'] = path;
    if (project != null)
      json['project'] = project;
    return json;
  }

  static List<Folder> listFromJson(List<dynamic> json) {
    return json == null ? List<Folder>() : json.map((value) => Folder.fromJson(value)).toList();
  }

  static Map<String, Folder> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Folder>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Folder.fromJson(value));
    }
    return map;
  }
}

