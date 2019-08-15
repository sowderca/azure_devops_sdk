part of azure_devops_sdk.api;

class MatcherResult {
  
  String matcher = null;
  
  Map<String, Object> stats = {};
  MatcherResult();

  @override
  String toString() {
    return 'MatcherResult[matcher=$matcher, stats=$stats, ]';
  }

  MatcherResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['matcher'] == null) {
      matcher = null;
    } else {
          matcher = json['matcher'];
    }
    if (json['stats'] == null) {
      stats = null;
    } else {
      stats = Object.mapFromJson(json['stats']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (matcher != null)
      json['matcher'] = matcher;
    if (stats != null)
      json['stats'] = stats;
    return json;
  }

  static List<MatcherResult> listFromJson(List<dynamic> json) {
    return json == null ? List<MatcherResult>() : json.map((value) => MatcherResult.fromJson(value)).toList();
  }

  static Map<String, MatcherResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MatcherResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MatcherResult.fromJson(value));
    }
    return map;
  }
}

