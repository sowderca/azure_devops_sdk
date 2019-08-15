part of azure_devops_sdk.api;

class GitPullRequestMergeOptions {
  
  bool detectRenameFalsePositives = null;
  /* If true, rename detection will not be performed during the merge. */
  bool disableRenames = null;
  GitPullRequestMergeOptions();

  @override
  String toString() {
    return 'GitPullRequestMergeOptions[detectRenameFalsePositives=$detectRenameFalsePositives, disableRenames=$disableRenames, ]';
  }

  GitPullRequestMergeOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['detectRenameFalsePositives'] == null) {
      detectRenameFalsePositives = null;
    } else {
          detectRenameFalsePositives = json['detectRenameFalsePositives'];
    }
    if (json['disableRenames'] == null) {
      disableRenames = null;
    } else {
          disableRenames = json['disableRenames'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (detectRenameFalsePositives != null)
      json['detectRenameFalsePositives'] = detectRenameFalsePositives;
    if (disableRenames != null)
      json['disableRenames'] = disableRenames;
    return json;
  }

  static List<GitPullRequestMergeOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPullRequestMergeOptions>() : json.map((value) => GitPullRequestMergeOptions.fromJson(value)).toList();
  }

  static Map<String, GitPullRequestMergeOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPullRequestMergeOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPullRequestMergeOptions.fromJson(value));
    }
    return map;
  }
}

