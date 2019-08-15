part of azure_devops_sdk.api;

class GitPullRequestCompletionOptions {
  /* If true, policies will be explicitly bypassed while the pull request is completed. */
  bool bypassPolicy = null;
  /* If policies are bypassed, this reason is stored as to why bypass was used. */
  String bypassReason = null;
  /* If true, the source branch of the pull request will be deleted after completion. */
  bool deleteSourceBranch = null;
  /* If set, this will be used as the commit message of the merge commit. */
  String mergeCommitMessage = null;
  /* Specify the strategy used to merge the pull request during completion. If MergeStrategy is not set to any value, a no-FF merge will be created if SquashMerge == false. If MergeStrategy is not set to any value, the pull request commits will be squash if SquashMerge == true. The SquashMerge member is deprecated. It is recommended that you explicitly set MergeStrategy in all cases. If an explicit value is provided for MergeStrategy, the SquashMerge member will be ignored. */
  String mergeStrategy = null;
  //enum mergeStrategyEnum {  noFastForward,  squash,  rebase,  rebaseMerge,  };{
  /* SquashMerge is deprecated. You should explicity set the value of MergeStrategy. If MergeStrategy is set to any value, the SquashMerge value will be ignored. If MergeStrategy is not set, the merge strategy will be no-fast-forward if this flag is false, or squash if true. */
  bool squashMerge = null;
  /* If true, we will attempt to transition any work items linked to the pull request into the next logical state (i.e. Active -> Resolved) */
  bool transitionWorkItems = null;
  /* If true, the current completion attempt was triggered via auto-complete. Used internally. */
  bool triggeredByAutoComplete = null;
  GitPullRequestCompletionOptions();

  @override
  String toString() {
    return 'GitPullRequestCompletionOptions[bypassPolicy=$bypassPolicy, bypassReason=$bypassReason, deleteSourceBranch=$deleteSourceBranch, mergeCommitMessage=$mergeCommitMessage, mergeStrategy=$mergeStrategy, squashMerge=$squashMerge, transitionWorkItems=$transitionWorkItems, triggeredByAutoComplete=$triggeredByAutoComplete, ]';
  }

  GitPullRequestCompletionOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['bypassPolicy'] == null) {
      bypassPolicy = null;
    } else {
          bypassPolicy = json['bypassPolicy'];
    }
    if (json['bypassReason'] == null) {
      bypassReason = null;
    } else {
          bypassReason = json['bypassReason'];
    }
    if (json['deleteSourceBranch'] == null) {
      deleteSourceBranch = null;
    } else {
          deleteSourceBranch = json['deleteSourceBranch'];
    }
    if (json['mergeCommitMessage'] == null) {
      mergeCommitMessage = null;
    } else {
          mergeCommitMessage = json['mergeCommitMessage'];
    }
    if (json['mergeStrategy'] == null) {
      mergeStrategy = null;
    } else {
          mergeStrategy = json['mergeStrategy'];
    }
    if (json['squashMerge'] == null) {
      squashMerge = null;
    } else {
          squashMerge = json['squashMerge'];
    }
    if (json['transitionWorkItems'] == null) {
      transitionWorkItems = null;
    } else {
          transitionWorkItems = json['transitionWorkItems'];
    }
    if (json['triggeredByAutoComplete'] == null) {
      triggeredByAutoComplete = null;
    } else {
          triggeredByAutoComplete = json['triggeredByAutoComplete'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (bypassPolicy != null)
      json['bypassPolicy'] = bypassPolicy;
    if (bypassReason != null)
      json['bypassReason'] = bypassReason;
    if (deleteSourceBranch != null)
      json['deleteSourceBranch'] = deleteSourceBranch;
    if (mergeCommitMessage != null)
      json['mergeCommitMessage'] = mergeCommitMessage;
    if (mergeStrategy != null)
      json['mergeStrategy'] = mergeStrategy;
    if (squashMerge != null)
      json['squashMerge'] = squashMerge;
    if (transitionWorkItems != null)
      json['transitionWorkItems'] = transitionWorkItems;
    if (triggeredByAutoComplete != null)
      json['triggeredByAutoComplete'] = triggeredByAutoComplete;
    return json;
  }

  static List<GitPullRequestCompletionOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPullRequestCompletionOptions>() : json.map((value) => GitPullRequestCompletionOptions.fromJson(value)).toList();
  }

  static Map<String, GitPullRequestCompletionOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPullRequestCompletionOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPullRequestCompletionOptions.fromJson(value));
    }
    return map;
  }
}

