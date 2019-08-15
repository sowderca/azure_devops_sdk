part of azure_devops_sdk.api;

class GitPullRequest {
  
  ReferenceLinks links = null;
  /* A string which uniquely identifies this pull request. To generate an artifact ID for a pull request, use this template: ```vstfs:///Git/PullRequestId/{projectId}/{repositoryId}/{pullRequestId}``` */
  String artifactId = null;
  
  IdentityRef autoCompleteSetBy = null;
  
  IdentityRef closedBy = null;
  /* The date when the pull request was closed (completed, abandoned, or merged externally). */
  DateTime closedDate = null;
  /* The code review ID of the pull request. Used internally. */
  int codeReviewId = null;
  /* The commits contained in the pull request. */
  List<GitCommitRef> commits = [];
  
  GitPullRequestCompletionOptions completionOptions = null;
  /* The most recent date at which the pull request entered the queue to be completed. Used internally. */
  DateTime completionQueueTime = null;
  
  IdentityRef createdBy = null;
  /* The date when the pull request was created. */
  DateTime creationDate = null;
  /* The description of the pull request. */
  String description = null;
  
  GitForkRef forkSource = null;
  /* Draft / WIP pull request. */
  bool isDraft = null;
  /* The labels associated with the pull request. */
  List<WebApiTagDefinition> labels = [];
  
  GitCommitRef lastMergeCommit = null;
  
  GitCommitRef lastMergeSourceCommit = null;
  
  GitCommitRef lastMergeTargetCommit = null;
  /* If set, pull request merge failed for this reason. */
  String mergeFailureMessage = null;
  /* The type of failure (if any) of the pull request merge. */
  String mergeFailureType = null;
  //enum mergeFailureTypeEnum {  none,  unknown,  caseSensitive,  objectTooLarge,  };{
  /* The ID of the job used to run the pull request merge. Used internally. */
  String mergeId = null;
  
  GitPullRequestMergeOptions mergeOptions = null;
  /* The current status of the pull request merge. */
  String mergeStatus = null;
  //enum mergeStatusEnum {  notSet,  queued,  conflicts,  succeeded,  rejectedByPolicy,  failure,  };{
  /* The ID of the pull request. */
  int pullRequestId = null;
  /* Used internally. */
  String remoteUrl = null;
  
  GitRepository repository = null;
  /* A list of reviewers on the pull request along with the state of their votes. */
  List<IdentityRefWithVote> reviewers = [];
  /* The name of the source branch of the pull request. */
  String sourceRefName = null;
  /* The status of the pull request. */
  String status = null;
  //enum statusEnum {  notSet,  active,  abandoned,  completed,  all,  };{
  /* If true, this pull request supports multiple iterations. Iteration support means individual pushes to the source branch of the pull request can be reviewed and comments left in one iteration will be tracked across future iterations. */
  bool supportsIterations = null;
  /* The name of the target branch of the pull request. */
  String targetRefName = null;
  /* The title of the pull request. */
  String title = null;
  /* Used internally. */
  String url = null;
  /* Any work item references associated with this pull request. */
  List<ResourceRef> workItemRefs = [];
  GitPullRequest();

  @override
  String toString() {
    return 'GitPullRequest[links=$links, artifactId=$artifactId, autoCompleteSetBy=$autoCompleteSetBy, closedBy=$closedBy, closedDate=$closedDate, codeReviewId=$codeReviewId, commits=$commits, completionOptions=$completionOptions, completionQueueTime=$completionQueueTime, createdBy=$createdBy, creationDate=$creationDate, description=$description, forkSource=$forkSource, isDraft=$isDraft, labels=$labels, lastMergeCommit=$lastMergeCommit, lastMergeSourceCommit=$lastMergeSourceCommit, lastMergeTargetCommit=$lastMergeTargetCommit, mergeFailureMessage=$mergeFailureMessage, mergeFailureType=$mergeFailureType, mergeId=$mergeId, mergeOptions=$mergeOptions, mergeStatus=$mergeStatus, pullRequestId=$pullRequestId, remoteUrl=$remoteUrl, repository=$repository, reviewers=$reviewers, sourceRefName=$sourceRefName, status=$status, supportsIterations=$supportsIterations, targetRefName=$targetRefName, title=$title, url=$url, workItemRefs=$workItemRefs, ]';
  }

  GitPullRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['artifactId'] == null) {
      artifactId = null;
    } else {
          artifactId = json['artifactId'];
    }
    if (json['autoCompleteSetBy'] == null) {
      autoCompleteSetBy = null;
    } else {
      autoCompleteSetBy = IdentityRef.fromJson(json['autoCompleteSetBy']);
    }
    if (json['closedBy'] == null) {
      closedBy = null;
    } else {
      closedBy = IdentityRef.fromJson(json['closedBy']);
    }
    if (json['closedDate'] == null) {
      closedDate = null;
    } else {
      closedDate = DateTime.parse(json['closedDate']);
    }
    if (json['codeReviewId'] == null) {
      codeReviewId = null;
    } else {
          codeReviewId = json['codeReviewId'];
    }
    if (json['commits'] == null) {
      commits = null;
    } else {
      commits = GitCommitRef.listFromJson(json['commits']);
    }
    if (json['completionOptions'] == null) {
      completionOptions = null;
    } else {
      completionOptions = GitPullRequestCompletionOptions.fromJson(json['completionOptions']);
    }
    if (json['completionQueueTime'] == null) {
      completionQueueTime = null;
    } else {
      completionQueueTime = DateTime.parse(json['completionQueueTime']);
    }
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['forkSource'] == null) {
      forkSource = null;
    } else {
      forkSource = GitForkRef.fromJson(json['forkSource']);
    }
    if (json['isDraft'] == null) {
      isDraft = null;
    } else {
          isDraft = json['isDraft'];
    }
    if (json['labels'] == null) {
      labels = null;
    } else {
      labels = WebApiTagDefinition.listFromJson(json['labels']);
    }
    if (json['lastMergeCommit'] == null) {
      lastMergeCommit = null;
    } else {
      lastMergeCommit = GitCommitRef.fromJson(json['lastMergeCommit']);
    }
    if (json['lastMergeSourceCommit'] == null) {
      lastMergeSourceCommit = null;
    } else {
      lastMergeSourceCommit = GitCommitRef.fromJson(json['lastMergeSourceCommit']);
    }
    if (json['lastMergeTargetCommit'] == null) {
      lastMergeTargetCommit = null;
    } else {
      lastMergeTargetCommit = GitCommitRef.fromJson(json['lastMergeTargetCommit']);
    }
    if (json['mergeFailureMessage'] == null) {
      mergeFailureMessage = null;
    } else {
          mergeFailureMessage = json['mergeFailureMessage'];
    }
    if (json['mergeFailureType'] == null) {
      mergeFailureType = null;
    } else {
          mergeFailureType = json['mergeFailureType'];
    }
    if (json['mergeId'] == null) {
      mergeId = null;
    } else {
          mergeId = json['mergeId'];
    }
    if (json['mergeOptions'] == null) {
      mergeOptions = null;
    } else {
      mergeOptions = GitPullRequestMergeOptions.fromJson(json['mergeOptions']);
    }
    if (json['mergeStatus'] == null) {
      mergeStatus = null;
    } else {
          mergeStatus = json['mergeStatus'];
    }
    if (json['pullRequestId'] == null) {
      pullRequestId = null;
    } else {
          pullRequestId = json['pullRequestId'];
    }
    if (json['remoteUrl'] == null) {
      remoteUrl = null;
    } else {
          remoteUrl = json['remoteUrl'];
    }
    if (json['repository'] == null) {
      repository = null;
    } else {
      repository = GitRepository.fromJson(json['repository']);
    }
    if (json['reviewers'] == null) {
      reviewers = null;
    } else {
      reviewers = IdentityRefWithVote.listFromJson(json['reviewers']);
    }
    if (json['sourceRefName'] == null) {
      sourceRefName = null;
    } else {
          sourceRefName = json['sourceRefName'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['supportsIterations'] == null) {
      supportsIterations = null;
    } else {
          supportsIterations = json['supportsIterations'];
    }
    if (json['targetRefName'] == null) {
      targetRefName = null;
    } else {
          targetRefName = json['targetRefName'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['workItemRefs'] == null) {
      workItemRefs = null;
    } else {
      workItemRefs = ResourceRef.listFromJson(json['workItemRefs']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (artifactId != null)
      json['artifactId'] = artifactId;
    if (autoCompleteSetBy != null)
      json['autoCompleteSetBy'] = autoCompleteSetBy;
    if (closedBy != null)
      json['closedBy'] = closedBy;
    if (closedDate != null)
      json['closedDate'] = closedDate == null ? null : closedDate.toUtc().toIso8601String();
    if (codeReviewId != null)
      json['codeReviewId'] = codeReviewId;
    if (commits != null)
      json['commits'] = commits;
    if (completionOptions != null)
      json['completionOptions'] = completionOptions;
    if (completionQueueTime != null)
      json['completionQueueTime'] = completionQueueTime == null ? null : completionQueueTime.toUtc().toIso8601String();
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (description != null)
      json['description'] = description;
    if (forkSource != null)
      json['forkSource'] = forkSource;
    if (isDraft != null)
      json['isDraft'] = isDraft;
    if (labels != null)
      json['labels'] = labels;
    if (lastMergeCommit != null)
      json['lastMergeCommit'] = lastMergeCommit;
    if (lastMergeSourceCommit != null)
      json['lastMergeSourceCommit'] = lastMergeSourceCommit;
    if (lastMergeTargetCommit != null)
      json['lastMergeTargetCommit'] = lastMergeTargetCommit;
    if (mergeFailureMessage != null)
      json['mergeFailureMessage'] = mergeFailureMessage;
    if (mergeFailureType != null)
      json['mergeFailureType'] = mergeFailureType;
    if (mergeId != null)
      json['mergeId'] = mergeId;
    if (mergeOptions != null)
      json['mergeOptions'] = mergeOptions;
    if (mergeStatus != null)
      json['mergeStatus'] = mergeStatus;
    if (pullRequestId != null)
      json['pullRequestId'] = pullRequestId;
    if (remoteUrl != null)
      json['remoteUrl'] = remoteUrl;
    if (repository != null)
      json['repository'] = repository;
    if (reviewers != null)
      json['reviewers'] = reviewers;
    if (sourceRefName != null)
      json['sourceRefName'] = sourceRefName;
    if (status != null)
      json['status'] = status;
    if (supportsIterations != null)
      json['supportsIterations'] = supportsIterations;
    if (targetRefName != null)
      json['targetRefName'] = targetRefName;
    if (title != null)
      json['title'] = title;
    if (url != null)
      json['url'] = url;
    if (workItemRefs != null)
      json['workItemRefs'] = workItemRefs;
    return json;
  }

  static List<GitPullRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPullRequest>() : json.map((value) => GitPullRequest.fromJson(value)).toList();
  }

  static Map<String, GitPullRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPullRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPullRequest.fromJson(value));
    }
    return map;
  }
}

