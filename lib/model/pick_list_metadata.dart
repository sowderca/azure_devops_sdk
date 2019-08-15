part of azure_devops_sdk.api;

class PickListMetadata {
  /* ID of the picklist */
  String id = null;
  /* Indicates whether items outside of suggested list are allowed */
  bool isSuggested = null;
  /* Name of the picklist */
  String name = null;
  /* DataType of picklist */
  String type = null;
  /* Url of the picklist */
  String url = null;
  PickListMetadata();

  @override
  String toString() {
    return 'PickListMetadata[id=$id, isSuggested=$isSuggested, name=$name, type=$type, url=$url, ]';
  }

  PickListMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isSuggested'] == null) {
      isSuggested = null;
    } else {
          isSuggested = json['isSuggested'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (isSuggested != null)
      json['isSuggested'] = isSuggested;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<PickListMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<PickListMetadata>() : json.map((value) => PickListMetadata.fromJson(value)).toList();
  }

  static Map<String, PickListMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PickListMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PickListMetadata.fromJson(value));
    }
    return map;
  }
}

