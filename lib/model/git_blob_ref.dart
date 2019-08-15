part of azure_devops_sdk.api;

class GitBlobRef {
  
  ReferenceLinks links = null;
  /* SHA1 hash of git object */
  String objectId = null;
  /* Size of blob content (in bytes) */
  int size = null;
  
  String url = null;
  GitBlobRef();

  @override
  String toString() {
    return 'GitBlobRef[links=$links, objectId=$objectId, size=$size, url=$url, ]';
  }

  GitBlobRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['objectId'] == null) {
      objectId = null;
    } else {
          objectId = json['objectId'];
    }
    if (json['size'] == null) {
      size = null;
    } else {
          size = json['size'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (objectId != null)
      json['objectId'] = objectId;
    if (size != null)
      json['size'] = size;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitBlobRef> listFromJson(List<dynamic> json) {
    return json == null ? List<GitBlobRef>() : json.map((value) => GitBlobRef.fromJson(value)).toList();
  }

  static Map<String, GitBlobRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitBlobRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitBlobRef.fromJson(value));
    }
    return map;
  }
}

