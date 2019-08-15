part of azure_devops_sdk.api;

class PullRequestFilter {
  /* List of tags. */
  List<String> tags = [];
  /* Target branch of pull request. */
  String targetBranch = null;
  PullRequestFilter();

  @override
  String toString() {
    return 'PullRequestFilter[tags=$tags, targetBranch=$targetBranch, ]';
  }

  PullRequestFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = (json['tags'] as List).cast<String>();
    }
    if (json['targetBranch'] == null) {
      targetBranch = null;
    } else {
          targetBranch = json['targetBranch'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (tags != null)
      json['tags'] = tags;
    if (targetBranch != null)
      json['targetBranch'] = targetBranch;
    return json;
  }

  static List<PullRequestFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<PullRequestFilter>() : json.map((value) => PullRequestFilter.fromJson(value)).toList();
  }

  static Map<String, PullRequestFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PullRequestFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PullRequestFilter.fromJson(value));
    }
    return map;
  }
}

