part of azure_devops_sdk.api;

class ClientContribution {
  /* Description of the contribution/type */
  String description = null;
  /* Fully qualified identifier of the contribution/type */
  String id = null;
  /* Includes is a set of contributions that should have this contribution included in their targets list. */
  List<String> includes = [];
  
  JObject properties = null;
  /* The ids of the contribution(s) that this contribution targets. (parent contributions) */
  List<String> targets = [];
  /* Id of the Contribution Type */
  String type = null;
  ClientContribution();

  @override
  String toString() {
    return 'ClientContribution[description=$description, id=$id, includes=$includes, properties=$properties, targets=$targets, type=$type, ]';
  }

  ClientContribution.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['includes'] == null) {
      includes = null;
    } else {
      includes = (json['includes'] as List).cast<String>();
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = JObject.fromJson(json['properties']);
    }
    if (json['targets'] == null) {
      targets = null;
    } else {
      targets = (json['targets'] as List).cast<String>();
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
    if (id != null)
      json['id'] = id;
    if (includes != null)
      json['includes'] = includes;
    if (properties != null)
      json['properties'] = properties;
    if (targets != null)
      json['targets'] = targets;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<ClientContribution> listFromJson(List<dynamic> json) {
    return json == null ? List<ClientContribution>() : json.map((value) => ClientContribution.fromJson(value)).toList();
  }

  static Map<String, ClientContribution> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ClientContribution>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ClientContribution.fromJson(value));
    }
    return map;
  }
}

