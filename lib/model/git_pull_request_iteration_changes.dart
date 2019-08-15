part of azure_devops_sdk.api;

class GitPullRequestIterationChanges {
  /* Changes made in the iteration. */
  List<GitPullRequestChange> changeEntries = [];
  /* Value to specify as skip to get the next page of changes.  This will be zero if there are no more changes. */
  int nextSkip = null;
  /* Value to specify as top to get the next page of changes.  This will be zero if there are no more changes. */
  int nextTop = null;
  GitPullRequestIterationChanges();

  @override
  String toString() {
    return 'GitPullRequestIterationChanges[changeEntries=$changeEntries, nextSkip=$nextSkip, nextTop=$nextTop, ]';
  }

  GitPullRequestIterationChanges.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changeEntries'] == null) {
      changeEntries = null;
    } else {
      changeEntries = GitPullRequestChange.listFromJson(json['changeEntries']);
    }
    if (json['nextSkip'] == null) {
      nextSkip = null;
    } else {
          nextSkip = json['nextSkip'];
    }
    if (json['nextTop'] == null) {
      nextTop = null;
    } else {
          nextTop = json['nextTop'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changeEntries != null)
      json['changeEntries'] = changeEntries;
    if (nextSkip != null)
      json['nextSkip'] = nextSkip;
    if (nextTop != null)
      json['nextTop'] = nextTop;
    return json;
  }

  static List<GitPullRequestIterationChanges> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPullRequestIterationChanges>() : json.map((value) => GitPullRequestIterationChanges.fromJson(value)).toList();
  }

  static Map<String, GitPullRequestIterationChanges> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPullRequestIterationChanges>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPullRequestIterationChanges.fromJson(value));
    }
    return map;
  }
}

