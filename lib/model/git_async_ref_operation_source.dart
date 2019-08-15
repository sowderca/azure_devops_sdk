part of azure_devops_sdk.api;

class GitAsyncRefOperationSource {
  /* A list of commits to cherry pick or revert */
  List<GitCommitRef> commitList = [];
  /* Id of the pull request to cherry pick or revert */
  int pullRequestId = null;
  GitAsyncRefOperationSource();

  @override
  String toString() {
    return 'GitAsyncRefOperationSource[commitList=$commitList, pullRequestId=$pullRequestId, ]';
  }

  GitAsyncRefOperationSource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['commitList'] == null) {
      commitList = null;
    } else {
      commitList = GitCommitRef.listFromJson(json['commitList']);
    }
    if (json['pullRequestId'] == null) {
      pullRequestId = null;
    } else {
          pullRequestId = json['pullRequestId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (commitList != null)
      json['commitList'] = commitList;
    if (pullRequestId != null)
      json['pullRequestId'] = pullRequestId;
    return json;
  }

  static List<GitAsyncRefOperationSource> listFromJson(List<dynamic> json) {
    return json == null ? List<GitAsyncRefOperationSource>() : json.map((value) => GitAsyncRefOperationSource.fromJson(value)).toList();
  }

  static Map<String, GitAsyncRefOperationSource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitAsyncRefOperationSource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitAsyncRefOperationSource.fromJson(value));
    }
    return map;
  }
}

