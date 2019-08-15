part of azure_devops_sdk.api;

class ReferenceLink {
  
  String href = null;
  ReferenceLink();

  @override
  String toString() {
    return 'ReferenceLink[href=$href, ]';
  }

  ReferenceLink.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['href'] == null) {
      href = null;
    } else {
          href = json['href'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (href != null)
      json['href'] = href;
    return json;
  }

  static List<ReferenceLink> listFromJson(List<dynamic> json) {
    return json == null ? List<ReferenceLink>() : json.map((value) => ReferenceLink.fromJson(value)).toList();
  }

  static Map<String, ReferenceLink> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReferenceLink>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReferenceLink.fromJson(value));
    }
    return map;
  }
}

