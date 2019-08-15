part of azure_devops_sdk.api;

class CommentList {
  
  String url = null;
  CommentList();

  @override
  String toString() {
    return 'CommentList[url=$url, ]';
  }

  CommentList.fromJson(Map<String, dynamic> json) {
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

  static List<CommentList> listFromJson(List<dynamic> json) {
    return json == null ? List<CommentList>() : json.map((value) => CommentList.fromJson(value)).toList();
  }

  static Map<String, CommentList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommentList.fromJson(value));
    }
    return map;
  }
}

