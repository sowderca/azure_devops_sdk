part of azure_devops_sdk.api;

class CommentUpdate {
  /* The updated text of the comment. */
  String text = null;
  CommentUpdate();

  @override
  String toString() {
    return 'CommentUpdate[text=$text, ]';
  }

  CommentUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['text'] == null) {
      text = null;
    } else {
          text = json['text'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (text != null)
      json['text'] = text;
    return json;
  }

  static List<CommentUpdate> listFromJson(List<dynamic> json) {
    return json == null ? List<CommentUpdate>() : json.map((value) => CommentUpdate.fromJson(value)).toList();
  }

  static Map<String, CommentUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentUpdate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommentUpdate.fromJson(value));
    }
    return map;
  }
}

