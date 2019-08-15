part of azure_devops_sdk.api;

class Link {
  /* Collection of link attributes. */
  Map<String, Object> attributes = {};
  /* Relation type. */
  String rel = null;
  /* Link url. */
  String url = null;
  Link();

  @override
  String toString() {
    return 'Link[attributes=$attributes, rel=$rel, url=$url, ]';
  }

  Link.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attributes'] == null) {
      attributes = null;
    } else {
      attributes = Object.mapFromJson(json['attributes']);
    }
    if (json['rel'] == null) {
      rel = null;
    } else {
          rel = json['rel'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attributes != null)
      json['attributes'] = attributes;
    if (rel != null)
      json['rel'] = rel;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Link> listFromJson(List<dynamic> json) {
    return json == null ? List<Link>() : json.map((value) => Link.fromJson(value)).toList();
  }

  static Map<String, Link> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Link>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Link.fromJson(value));
    }
    return map;
  }
}

