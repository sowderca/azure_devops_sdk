part of azure_devops_sdk.api;

class GitMergeOriginRef {
  
  int pullRequestId = null;
  GitMergeOriginRef();

  @override
  String toString() {
    return 'GitMergeOriginRef[pullRequestId=$pullRequestId, ]';
  }

  GitMergeOriginRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pullRequestId'] == null) {
      pullRequestId = null;
    } else {
          pullRequestId = json['pullRequestId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pullRequestId != null)
      json['pullRequestId'] = pullRequestId;
    return json;
  }

  static List<GitMergeOriginRef> listFromJson(List<dynamic> json) {
    return json == null ? List<GitMergeOriginRef>() : json.map((value) => GitMergeOriginRef.fromJson(value)).toList();
  }

  static Map<String, GitMergeOriginRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitMergeOriginRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitMergeOriginRef.fromJson(value));
    }
    return map;
  }
}

