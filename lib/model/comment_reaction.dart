part of azure_devops_sdk.api;

class CommentReaction {
  
  String url = null;
  CommentReaction();

  @override
  String toString() {
    return 'CommentReaction[url=$url, ]';
  }

  CommentReaction.fromJson(Map<String, dynamic> json) {
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

  static List<CommentReaction> listFromJson(List<dynamic> json) {
    return json == null ? List<CommentReaction>() : json.map((value) => CommentReaction.fromJson(value)).toList();
  }

  static Map<String, CommentReaction> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentReaction>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommentReaction.fromJson(value));
    }
    return map;
  }
}

