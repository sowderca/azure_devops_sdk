part of azure_devops_sdk.api;

class SourcePullRequestVersion {
  /* Pull Request Iteration Id for which the release will publish status. */
  String iterationId = null;
  /* Pull Request Id for which the release will publish status. */
  String pullRequestId = null;
  /* Date and time of the pull request merge creation. It is required to keep timeline record of Releases created by pull request. */
  DateTime pullRequestMergedAt = null;
  /* Source branch of the Pull Request. */
  String sourceBranch = null;
  /* Source branch commit Id of the Pull Request for which the release will publish status. */
  String sourceBranchCommitId = null;
  /* Target branch of the Pull Request. */
  String targetBranch = null;
  SourcePullRequestVersion();

  @override
  String toString() {
    return 'SourcePullRequestVersion[iterationId=$iterationId, pullRequestId=$pullRequestId, pullRequestMergedAt=$pullRequestMergedAt, sourceBranch=$sourceBranch, sourceBranchCommitId=$sourceBranchCommitId, targetBranch=$targetBranch, ]';
  }

  SourcePullRequestVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['iterationId'] == null) {
      iterationId = null;
    } else {
          iterationId = json['iterationId'];
    }
    if (json['pullRequestId'] == null) {
      pullRequestId = null;
    } else {
          pullRequestId = json['pullRequestId'];
    }
    if (json['pullRequestMergedAt'] == null) {
      pullRequestMergedAt = null;
    } else {
      pullRequestMergedAt = DateTime.parse(json['pullRequestMergedAt']);
    }
    if (json['sourceBranch'] == null) {
      sourceBranch = null;
    } else {
          sourceBranch = json['sourceBranch'];
    }
    if (json['sourceBranchCommitId'] == null) {
      sourceBranchCommitId = null;
    } else {
          sourceBranchCommitId = json['sourceBranchCommitId'];
    }
    if (json['targetBranch'] == null) {
      targetBranch = null;
    } else {
          targetBranch = json['targetBranch'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (iterationId != null)
      json['iterationId'] = iterationId;
    if (pullRequestId != null)
      json['pullRequestId'] = pullRequestId;
    if (pullRequestMergedAt != null)
      json['pullRequestMergedAt'] = pullRequestMergedAt == null ? null : pullRequestMergedAt.toUtc().toIso8601String();
    if (sourceBranch != null)
      json['sourceBranch'] = sourceBranch;
    if (sourceBranchCommitId != null)
      json['sourceBranchCommitId'] = sourceBranchCommitId;
    if (targetBranch != null)
      json['targetBranch'] = targetBranch;
    return json;
  }

  static List<SourcePullRequestVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<SourcePullRequestVersion>() : json.map((value) => SourcePullRequestVersion.fromJson(value)).toList();
  }

  static Map<String, SourcePullRequestVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourcePullRequestVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourcePullRequestVersion.fromJson(value));
    }
    return map;
  }
}

