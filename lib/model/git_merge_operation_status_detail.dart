part of azure_devops_sdk.api;

class GitMergeOperationStatusDetail {
  /* Error message if the operation failed. */
  String failureMessage = null;
  /* The commitId of the resultant merge commit. */
  String mergeCommitId = null;
  GitMergeOperationStatusDetail();

  @override
  String toString() {
    return 'GitMergeOperationStatusDetail[failureMessage=$failureMessage, mergeCommitId=$mergeCommitId, ]';
  }

  GitMergeOperationStatusDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['failureMessage'] == null) {
      failureMessage = null;
    } else {
          failureMessage = json['failureMessage'];
    }
    if (json['mergeCommitId'] == null) {
      mergeCommitId = null;
    } else {
          mergeCommitId = json['mergeCommitId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (failureMessage != null)
      json['failureMessage'] = failureMessage;
    if (mergeCommitId != null)
      json['mergeCommitId'] = mergeCommitId;
    return json;
  }

  static List<GitMergeOperationStatusDetail> listFromJson(List<dynamic> json) {
    return json == null ? List<GitMergeOperationStatusDetail>() : json.map((value) => GitMergeOperationStatusDetail.fromJson(value)).toList();
  }

  static Map<String, GitMergeOperationStatusDetail> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitMergeOperationStatusDetail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitMergeOperationStatusDetail.fromJson(value));
    }
    return map;
  }
}

