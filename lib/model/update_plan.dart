part of azure_devops_sdk.api;

class UpdatePlan {
  /* Description of the plan */
  String description = null;
  /* Name of the plan to create. */
  String name = null;
  /* Plan properties. */
  Object properties = null;
  /* Revision of the plan that was updated - the value used here should match the one the server gave the client in the Plan. */
  int revision = null;
  /* Type of the plan */
  String type = null;
  //enum typeEnum {  deliveryTimelineView,  };{
  UpdatePlan();

  @override
  String toString() {
    return 'UpdatePlan[description=$description, name=$name, properties=$properties, revision=$revision, type=$type, ]';
  }

  UpdatePlan.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['properties'] == null) {
      properties = null;
    } else {
          properties = json['properties'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    if (properties != null)
      json['properties'] = properties;
    if (revision != null)
      json['revision'] = revision;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<UpdatePlan> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdatePlan>() : json.map((value) => UpdatePlan.fromJson(value)).toList();
  }

  static Map<String, UpdatePlan> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdatePlan>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdatePlan.fromJson(value));
    }
    return map;
  }
}

