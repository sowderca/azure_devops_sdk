part of azure_devops_sdk.api;

class BuildDefinition {
  /* The date this version of the definition was created. */
  DateTime createdDate = null;
  /* The ID of the referenced definition. */
  int id = null;
  /* The name of the referenced definition. */
  String name = null;
  /* The folder path of the definition. */
  String path = null;
  
  TeamProjectReference project = null;
  /* A value that indicates whether builds can be queued against this definition. */
  String queueStatus = null;
  //enum queueStatusEnum {  enabled,  paused,  disabled,  };{
  /* The definition revision number. */
  int revision = null;
  /* The type of the definition. */
  String type = null;
  //enum typeEnum {  xaml,  build,  };{
  /* The definition's URI. */
  String uri = null;
  /* The REST URL of the definition. */
  String url = null;
  BuildDefinition();

  @override
  String toString() {
    return 'BuildDefinition[createdDate=$createdDate, id=$id, name=$name, path=$path, project=$project, queueStatus=$queueStatus, revision=$revision, type=$type, uri=$uri, url=$url, ]';
  }

  BuildDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
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
    if (json['queueStatus'] == null) {
      queueStatus = null;
    } else {
          queueStatus = json['queueStatus'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['uri'] == null) {
      uri = null;
    } else {
          uri = json['uri'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (path != null)
      json['path'] = path;
    if (project != null)
      json['project'] = project;
    if (queueStatus != null)
      json['queueStatus'] = queueStatus;
    if (revision != null)
      json['revision'] = revision;
    if (type != null)
      json['type'] = type;
    if (uri != null)
      json['uri'] = uri;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<BuildDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildDefinition>() : json.map((value) => BuildDefinition.fromJson(value)).toList();
  }

  static Map<String, BuildDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildDefinition.fromJson(value));
    }
    return map;
  }
}

