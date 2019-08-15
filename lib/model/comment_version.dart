part of azure_devops_sdk.api;

class CommentVersion {
  
  String url = null;
  CommentVersion();

  @override
  String toString() {
    return 'CommentVersion[url=$url, ]';
  }

  CommentVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<CommentVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<CommentVersion>() : json.map((value) => CommentVersion.fromJson(value)).toList();
  }

  static Map<String, CommentVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommentVersion.fromJson(value));
    }
    return map;
  }
}

