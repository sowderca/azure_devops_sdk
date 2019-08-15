part of azure_devops_sdk.api;

class ReferenceLinks {
  /* The readonly view of the links.  Because Reference links are readonly, we only want to expose them as read only. */
  Map<String, Object> links = {};
  ReferenceLinks();

  @override
  String toString() {
    return 'ReferenceLinks[links=$links, ]';
  }

  ReferenceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['links'] == null) {
      links = null;
    } else {
      links = Object.mapFromJson(json['links']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['links'] = links;
    return json;
  }

  static List<ReferenceLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<ReferenceLinks>() : json.map((value) => ReferenceLinks.fromJson(value)).toList();
  }

  static Map<String, ReferenceLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReferenceLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReferenceLinks.fromJson(value));
    }
    return map;
  }
}

