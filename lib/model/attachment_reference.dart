part of azure_devops_sdk.api;

class AttachmentReference {
  
  String id = null;
  
  String url = null;
  AttachmentReference();

  @override
  String toString() {
    return 'AttachmentReference[id=$id, url=$url, ]';
  }

  AttachmentReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<AttachmentReference> listFromJson(List<dynamic> json) {
    return json == null ? List<AttachmentReference>() : json.map((value) => AttachmentReference.fromJson(value)).toList();
  }

  static Map<String, AttachmentReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AttachmentReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AttachmentReference.fromJson(value));
    }
    return map;
  }
}

