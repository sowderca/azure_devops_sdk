part of azure_devops_sdk.api;

class Application {
  /* Unique Id of the Application Component */
  String applicationId = null;
  /* Description of the Application component */
  String description = null;
  /* The Name of the Application component */
  String name = null;
  /* Path identifier of the Application component */
  String path = null;
  /* Character used to separate paths for counters */
  String pathSeperator = null;
  /* Type identifier of the Application component under test */
  String type = null;
  /* Version of the Application Component */
  String version = null;
  Application();

  @override
  String toString() {
    return 'Application[applicationId=$applicationId, description=$description, name=$name, path=$path, pathSeperator=$pathSeperator, type=$type, version=$version, ]';
  }

  Application.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['applicationId'] == null) {
      applicationId = null;
    } else {
          applicationId = json['applicationId'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
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
    if (json['pathSeperator'] == null) {
      pathSeperator = null;
    } else {
          pathSeperator = json['pathSeperator'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (applicationId != null)
      json['applicationId'] = applicationId;
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    if (path != null)
      json['path'] = path;
    if (pathSeperator != null)
      json['pathSeperator'] = pathSeperator;
    if (type != null)
      json['type'] = type;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<Application> listFromJson(List<dynamic> json) {
    return json == null ? List<Application>() : json.map((value) => Application.fromJson(value)).toList();
  }

  static Map<String, Application> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Application>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Application.fromJson(value));
    }
    return map;
  }
}

