part of azure_devops_sdk.api;

class ExtensionBadge {
  
  String description = null;
  
  String imgUri = null;
  
  String link = null;
  ExtensionBadge();

  @override
  String toString() {
    return 'ExtensionBadge[description=$description, imgUri=$imgUri, link=$link, ]';
  }

  ExtensionBadge.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['imgUri'] == null) {
      imgUri = null;
    } else {
          imgUri = json['imgUri'];
    }
    if (json['link'] == null) {
      link = null;
    } else {
          link = json['link'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (imgUri != null)
      json['imgUri'] = imgUri;
    if (link != null)
      json['link'] = link;
    return json;
  }

  static List<ExtensionBadge> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionBadge>() : json.map((value) => ExtensionBadge.fromJson(value)).toList();
  }

  static Map<String, ExtensionBadge> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionBadge>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionBadge.fromJson(value));
    }
    return map;
  }
}

