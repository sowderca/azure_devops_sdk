part of azure_devops_sdk.api;

class GitPullRequestSearchCriteria {
  /* If set, search for pull requests that were created by this identity. */
  String creatorId = null;
  /* Whether to include the _links field on the shallow references */
  bool includeLinks = null;
  /* If set, search for pull requests whose target branch is in this repository. */
  String repositoryId = null;
  /* If set, search for pull requests that have this identity as a reviewer. */
  String reviewerId = null;
  /* If set, search for pull requests from this branch. */
  String sourceRefName = null;
  /* If set, search for pull requests whose source branch is in this repository. */
  String sourceRepositoryId = null;
  /* If set, search for pull requests that are in this state. Defaults to Active if unset. */
  String status = null;
  //enum statusEnum {  notSet,  active,  abandoned,  completed,  all,  };{
  /* If set, search for pull requests into this branch. */
  String targetRefName = null;
  GitPullRequestSearchCriteria();

  @override
  String toString() {
    return 'GitPullRequestSearchCriteria[creatorId=$creatorId, includeLinks=$includeLinks, repositoryId=$repositoryId, reviewerId=$reviewerId, sourceRefName=$sourceRefName, sourceRepositoryId=$sourceRepositoryId, status=$status, targetRefName=$targetRefName, ]';
  }

  GitPullRequestSearchCriteria.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['creatorId'] == null) {
      creatorId = null;
    } else {
          creatorId = json['creatorId'];
    }
    if (json['includeLinks'] == null) {
      includeLinks = null;
    } else {
          includeLinks = json['includeLinks'];
    }
    if (json['repositoryId'] == null) {
      repositoryId = null;
    } else {
          repositoryId = json['repositoryId'];
    }
    if (json['reviewerId'] == null) {
      reviewerId = null;
    } else {
          reviewerId = json['reviewerId'];
    }
    if (json['sourceRefName'] == null) {
      sourceRefName = null;
    } else {
          sourceRefName = json['sourceRefName'];
    }
    if (json['sourceRepositoryId'] == null) {
      sourceRepositoryId = null;
    } else {
          sourceRepositoryId = json['sourceRepositoryId'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['targetRefName'] == null) {
      targetRefName = null;
    } else {
          targetRefName = json['targetRefName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (creatorId != null)
      json['creatorId'] = creatorId;
    if (includeLinks != null)
      json['includeLinks'] = includeLinks;
    if (repositoryId != null)
      json['repositoryId'] = repositoryId;
    if (reviewerId != null)
      json['reviewerId'] = reviewerId;
    if (sourceRefName != null)
      json['sourceRefName'] = sourceRefName;
    if (sourceRepositoryId != null)
      json['sourceRepositoryId'] = sourceRepositoryId;
    if (status != null)
      json['status'] = status;
    if (targetRefName != null)
      json['targetRefName'] = targetRefName;
    return json;
  }

  static List<GitPullRequestSearchCriteria> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPullRequestSearchCriteria>() : json.map((value) => GitPullRequestSearchCriteria.fromJson(value)).toList();
  }

  static Map<String, GitPullRequestSearchCriteria> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPullRequestSearchCriteria>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPullRequestSearchCriteria.fromJson(value));
    }
    return map;
  }
}

