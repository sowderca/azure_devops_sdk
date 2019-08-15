part of azure_devops_sdk.api;

class Plan {
  
  IdentityRef createdByIdentity = null;
  /* Date when the plan was created */
  DateTime createdDate = null;
  /* Description of the plan */
  String description = null;
  /* Id of the plan */
  String id = null;
  
  IdentityRef modifiedByIdentity = null;
  /* Date when the plan was last modified. Default to CreatedDate when the plan is first created. */
  DateTime modifiedDate = null;
  /* Name of the plan */
  String name = null;
  /* The PlanPropertyCollection instance associated with the plan. These are dependent on the type of the plan. For example, DeliveryTimelineView, it would be of type DeliveryViewPropertyCollection. */
  Object properties = null;
  /* Revision of the plan. Used to safeguard users from overwriting each other's changes. */
  int revision = null;
  /* Type of the plan */
  String type = null;
  //enum typeEnum {  deliveryTimelineView,  };{
  /* The resource url to locate the plan via rest api */
  String url = null;
  /* Bit flag indicating set of permissions a user has to the plan. */
  String userPermissions = null;
  //enum userPermissionsEnum {  none,  view,  edit,  delete,  manage,  allPermissions,  };{
  Plan();

  @override
  String toString() {
    return 'Plan[createdByIdentity=$createdByIdentity, createdDate=$createdDate, description=$description, id=$id, modifiedByIdentity=$modifiedByIdentity, modifiedDate=$modifiedDate, name=$name, properties=$properties, revision=$revision, type=$type, url=$url, userPermissions=$userPermissions, ]';
  }

  Plan.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdByIdentity'] == null) {
      createdByIdentity = null;
    } else {
      createdByIdentity = IdentityRef.fromJson(json['createdByIdentity']);
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
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
    if (json['modifiedByIdentity'] == null) {
      modifiedByIdentity = null;
    } else {
      modifiedByIdentity = IdentityRef.fromJson(json['modifiedByIdentity']);
    }
    if (json['modifiedDate'] == null) {
      modifiedDate = null;
    } else {
      modifiedDate = DateTime.parse(json['modifiedDate']);
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
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['userPermissions'] == null) {
      userPermissions = null;
    } else {
          userPermissions = json['userPermissions'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdByIdentity != null)
      json['createdByIdentity'] = createdByIdentity;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (modifiedByIdentity != null)
      json['modifiedByIdentity'] = modifiedByIdentity;
    if (modifiedDate != null)
      json['modifiedDate'] = modifiedDate == null ? null : modifiedDate.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (properties != null)
      json['properties'] = properties;
    if (revision != null)
      json['revision'] = revision;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    if (userPermissions != null)
      json['userPermissions'] = userPermissions;
    return json;
  }

  static List<Plan> listFromJson(List<dynamic> json) {
    return json == null ? List<Plan>() : json.map((value) => Plan.fromJson(value)).toList();
  }

  static Map<String, Plan> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Plan>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Plan.fromJson(value));
    }
    return map;
  }
}

