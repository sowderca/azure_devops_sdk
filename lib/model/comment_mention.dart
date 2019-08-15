part of azure_devops_sdk.api;

class CommentMention {
  
  String url = null;
  CommentMention();

  @override
  String toString() {
    return 'CommentMention[url=$url, ]';
  }

  CommentMention.fromJson(Map<String, dynamic> json) {
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

  static List<CommentMention> listFromJson(List<dynamic> json) {
    return json == null ? List<CommentMention>() : json.map((value) => CommentMention.fromJson(value)).toList();
  }

  static Map<String, CommentMention> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentMention>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommentMention.fromJson(value));
    }
    return map;
  }
}

