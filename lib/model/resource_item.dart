part of azure_devops_sdk.api;

class ResourceItem {
  
  IdentityRef createdBy = null;
  /* Gets or sets description of the resource. */
  String description = null;
  /* Gets or sets icon url of the resource. */
  String iconUrl = null;
  /* Gets or sets Id of the resource. */
  String id = null;
  /* Indicates whether resource is shared with other projects or not. */
  bool isShared = null;
  /* Gets or sets name of the resource. */
  String name = null;
  /* Gets or sets internal properties of the resource. */
  Map<String, String> properties = {};
  /* Gets or sets resource type. */
  String resourceType = null;
  ResourceItem();

  @override
  String toString() {
    return 'ResourceItem[createdBy=$createdBy, description=$description, iconUrl=$iconUrl, id=$id, isShared=$isShared, name=$name, properties=$properties, resourceType=$resourceType, ]';
  }

  ResourceItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['iconUrl'] == null) {
      iconUrl = null;
    } else {
          iconUrl = json['iconUrl'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isShared'] == null) {
      isShared = null;
    } else {
          isShared = json['isShared'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
          properties = (json['properties'] as Map).cast<String, String>();
    }
    if (json['resourceType'] == null) {
      resourceType = null;
    } else {
          resourceType = json['resourceType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (description != null)
      json['description'] = description;
    if (iconUrl != null)
      json['iconUrl'] = iconUrl;
    if (id != null)
      json['id'] = id;
    if (isShared != null)
      json['isShared'] = isShared;
    if (name != null)
      json['name'] = name;
    if (properties != null)
      json['properties'] = properties;
    if (resourceType != null)
      json['resourceType'] = resourceType;
    return json;
  }

  static List<ResourceItem> listFromJson(List<dynamic> json) {
    return json == null ? List<ResourceItem>() : json.map((value) => ResourceItem.fromJson(value)).toList();
  }

  static Map<String, ResourceItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourceItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResourceItem.fromJson(value));
    }
    return map;
  }
}

