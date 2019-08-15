part of azure_devops_sdk.api;

class Attachment {
  
  ReferenceLinks links = null;
  /* The name of the attachment. */
  String name = null;
  Attachment();

  @override
  String toString() {
    return 'Attachment[links=$links, name=$name, ]';
  }

  Attachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<Attachment> listFromJson(List<dynamic> json) {
    return json == null ? List<Attachment>() : json.map((value) => Attachment.fromJson(value)).toList();
  }

  static Map<String, Attachment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Attachment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Attachment.fromJson(value));
    }
    return map;
  }
}

