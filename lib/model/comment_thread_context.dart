part of azure_devops_sdk.api;

class CommentThreadContext {
  /* File path relative to the root of the repository. It's up to the client to use any path format. */
  String filePath = null;
  
  CommentPosition leftFileEnd = null;
  
  CommentPosition leftFileStart = null;
  
  CommentPosition rightFileEnd = null;
  
  CommentPosition rightFileStart = null;
  CommentThreadContext();

  @override
  String toString() {
    return 'CommentThreadContext[filePath=$filePath, leftFileEnd=$leftFileEnd, leftFileStart=$leftFileStart, rightFileEnd=$rightFileEnd, rightFileStart=$rightFileStart, ]';
  }

  CommentThreadContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['filePath'] == null) {
      filePath = null;
    } else {
          filePath = json['filePath'];
    }
    if (json['leftFileEnd'] == null) {
      leftFileEnd = null;
    } else {
      leftFileEnd = CommentPosition.fromJson(json['leftFileEnd']);
    }
    if (json['leftFileStart'] == null) {
      leftFileStart = null;
    } else {
      leftFileStart = CommentPosition.fromJson(json['leftFileStart']);
    }
    if (json['rightFileEnd'] == null) {
      rightFileEnd = null;
    } else {
      rightFileEnd = CommentPosition.fromJson(json['rightFileEnd']);
    }
    if (json['rightFileStart'] == null) {
      rightFileStart = null;
    } else {
      rightFileStart = CommentPosition.fromJson(json['rightFileStart']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (filePath != null)
      json['filePath'] = filePath;
    if (leftFileEnd != null)
      json['leftFileEnd'] = leftFileEnd;
    if (leftFileStart != null)
      json['leftFileStart'] = leftFileStart;
    if (rightFileEnd != null)
      json['rightFileEnd'] = rightFileEnd;
    if (rightFileStart != null)
      json['rightFileStart'] = rightFileStart;
    return json;
  }

  static List<CommentThreadContext> listFromJson(List<dynamic> json) {
    return json == null ? List<CommentThreadContext>() : json.map((value) => CommentThreadContext.fromJson(value)).toList();
  }

  static Map<String, CommentThreadContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentThreadContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommentThreadContext.fromJson(value));
    }
    return map;
  }
}

