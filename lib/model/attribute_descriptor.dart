part of azure_devops_sdk.api;

class AttributeDescriptor {
  /* The name of the attribute. */
  String attributeName = null;
  /* The container the attribute resides in. */
  String containerName = null;
  AttributeDescriptor();

  @override
  String toString() {
    return 'AttributeDescriptor[attributeName=$attributeName, containerName=$containerName, ]';
  }

  AttributeDescriptor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attributeName'] == null) {
      attributeName = null;
    } else {
          attributeName = json['attributeName'];
    }
    if (json['containerName'] == null) {
      containerName = null;
    } else {
          containerName = json['containerName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attributeName != null)
      json['attributeName'] = attributeName;
    if (containerName != null)
      json['containerName'] = containerName;
    return json;
  }

  static List<AttributeDescriptor> listFromJson(List<dynamic> json) {
    return json == null ? List<AttributeDescriptor>() : json.map((value) => AttributeDescriptor.fromJson(value)).toList();
  }

  static Map<String, AttributeDescriptor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AttributeDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AttributeDescriptor.fromJson(value));
    }
    return map;
  }
}

