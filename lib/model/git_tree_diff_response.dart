part of azure_devops_sdk.api;

class GitTreeDiffResponse {
  /* The HTTP client methods find the continuation token header in the response and populate this field. */
  List<String> continuationToken = [];
  
  GitTreeDiff treeDiff = null;
  GitTreeDiffResponse();

  @override
  String toString() {
    return 'GitTreeDiffResponse[continuationToken=$continuationToken, treeDiff=$treeDiff, ]';
  }

  GitTreeDiffResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['continuationToken'] == null) {
      continuationToken = null;
    } else {
      continuationToken = (json['continuationToken'] as List).cast<String>();
    }
    if (json['treeDiff'] == null) {
      treeDiff = null;
    } else {
      treeDiff = GitTreeDiff.fromJson(json['treeDiff']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (continuationToken != null)
      json['continuationToken'] = continuationToken;
    if (treeDiff != null)
      json['treeDiff'] = treeDiff;
    return json;
  }

  static List<GitTreeDiffResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<GitTreeDiffResponse>() : json.map((value) => GitTreeDiffResponse.fromJson(value)).toList();
  }

  static Map<String, GitTreeDiffResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitTreeDiffResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitTreeDiffResponse.fromJson(value));
    }
    return map;
  }
}

