part of azure_devops_sdk.api;

class CommentIterationContext {
  /* The iteration of the file on the left side of the diff when the thread was created. If this value is equal to SecondComparingIteration, then this version is the common commit between the source and target branches of the pull request. */
  int firstComparingIteration = null;
  /* The iteration of the file on the right side of the diff when the thread was created. */
  int secondComparingIteration = null;
  CommentIterationContext();

  @override
  String toString() {
    return 'CommentIterationContext[firstComparingIteration=$firstComparingIteration, secondComparingIteration=$secondComparingIteration, ]';
  }

  CommentIterationContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['firstComparingIteration'] == null) {
      firstComparingIteration = null;
    } else {
          firstComparingIteration = json['firstComparingIteration'];
    }
    if (json['secondComparingIteration'] == null) {
      secondComparingIteration = null;
    } else {
          secondComparingIteration = json['secondComparingIteration'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (firstComparingIteration != null)
      json['firstComparingIteration'] = firstComparingIteration;
    if (secondComparingIteration != null)
      json['secondComparingIteration'] = secondComparingIteration;
    return json;
  }

  static List<CommentIterationContext> listFromJson(List<dynamic> json) {
    return json == null ? List<CommentIterationContext>() : json.map((value) => CommentIterationContext.fromJson(value)).toList();
  }

  static Map<String, CommentIterationContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentIterationContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommentIterationContext.fromJson(value));
    }
    return map;
  }
}

