part of azure_devops_sdk.api;

class CommentPosition {
  /* The line number of a thread's position. Starts at 1. */
  int line = null;
  /* The character offset of a thread's position inside of a line. Starts at 0. */
  int offset = null;
  CommentPosition();

  @override
  String toString() {
    return 'CommentPosition[line=$line, offset=$offset, ]';
  }

  CommentPosition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['line'] == null) {
      line = null;
    } else {
          line = json['line'];
    }
    if (json['offset'] == null) {
      offset = null;
    } else {
          offset = json['offset'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (line != null)
      json['line'] = line;
    if (offset != null)
      json['offset'] = offset;
    return json;
  }

  static List<CommentPosition> listFromJson(List<dynamic> json) {
    return json == null ? List<CommentPosition>() : json.map((value) => CommentPosition.fromJson(value)).toList();
  }

  static Map<String, CommentPosition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentPosition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommentPosition.fromJson(value));
    }
    return map;
  }
}

