part of azure_devops_sdk.api;

class CreatePlan {
  /* Description of the plan */
  String description = null;
  /* Name of the plan to create. */
  String name = null;
  /* Plan properties. */
  Object properties = null;
  /* Type of plan to create. */
  String type = null;
  //enum typeEnum {  deliveryTimelineView,  };{
  CreatePlan();

  @override
  String toString() {
    return 'CreatePlan[description=$description, name=$name, properties=$properties, type=$type, ]';
  }

  CreatePlan.fromJson(Map<String, dynamic> json) {
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
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<CreatePlan> listFromJson(List<dynamic> json) {
    return json == null ? List<CreatePlan>() : json.map((value) => CreatePlan.fromJson(value)).toList();
  }

  static Map<String, CreatePlan> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreatePlan>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreatePlan.fromJson(value));
    }
    return map;
  }
}

