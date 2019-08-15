part of azure_devops_sdk.api;

class ApplicationCounters {
  /* The unique Id of the Application that the counter belongs */
  String applicationId = null;
  /* Description of autCounter */
  String description = null;
  /* The unique Id for the AutCounter */
  String id = null;
  /* Whether the autCounter is a default counter or not */
  bool isDefault = null;
  /* Name of the AutCounter */
  String name = null;
  /* The Path of the the autcounter wrt to hierarchy */
  String path = null;
  ApplicationCounters();

  @override
  String toString() {
    return 'ApplicationCounters[applicationId=$applicationId, description=$description, id=$id, isDefault=$isDefault, name=$name, path=$path, ]';
  }

  ApplicationCounters.fromJson(Map<String, dynamic> json) {
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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isDefault'] == null) {
      isDefault = null;
    } else {
          isDefault = json['isDefault'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (applicationId != null)
      json['applicationId'] = applicationId;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (isDefault != null)
      json['isDefault'] = isDefault;
    if (name != null)
      json['name'] = name;
    if (path != null)
      json['path'] = path;
    return json;
  }

  static List<ApplicationCounters> listFromJson(List<dynamic> json) {
    return json == null ? List<ApplicationCounters>() : json.map((value) => ApplicationCounters.fromJson(value)).toList();
  }

  static Map<String, ApplicationCounters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApplicationCounters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApplicationCounters.fromJson(value));
    }
    return map;
  }
}

