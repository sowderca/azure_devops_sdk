part of azure_devops_sdk.api;

class CommentCreate {
  /* The text of the comment. */
  String text = null;
  CommentCreate();

  @override
  String toString() {
    return 'CommentCreate[text=$text, ]';
  }

  CommentCreate.fromJson(Map<String, dynamic> json) {
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

  static List<CommentCreate> listFromJson(List<dynamic> json) {
    return json == null ? List<CommentCreate>() : json.map((value) => CommentCreate.fromJson(value)).toList();
  }

  static Map<String, CommentCreate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentCreate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommentCreate.fromJson(value));
    }
    return map;
  }
}
