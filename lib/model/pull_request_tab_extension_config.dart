part of azure_devops_sdk.api;

class PullRequestTabExtensionConfig {
  
  int pullRequestId = null;
  
  String repositoryId = null;
  PullRequestTabExtensionConfig();

  @override
  String toString() {
    return 'PullRequestTabExtensionConfig[pullRequestId=$pullRequestId, repositoryId=$repositoryId, ]';
  }

  PullRequestTabExtensionConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pullRequestId'] == null) {
      pullRequestId = null;
    } else {
          pullRequestId = json['pullRequestId'];
    }
    if (json['repositoryId'] == null) {
      repositoryId = null;
    } else {
          repositoryId = json['repositoryId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pullRequestId != null)
      json['pullRequestId'] = pullRequestId;
    if (repositoryId != null)
      json['repositoryId'] = repositoryId;
    return json;
  }

  static List<PullRequestTabExtensionConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<PullRequestTabExtensionConfig>() : json.map((value) => PullRequestTabExtensionConfig.fromJson(value)).toList();
  }

  static Map<String, PullRequestTabExtensionConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PullRequestTabExtensionConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PullRequestTabExtensionConfig.fromJson(value));
    }
    return map;
  }
}

