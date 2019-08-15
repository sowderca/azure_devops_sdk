part of azure_devops_sdk.api;

class GitPullRequestIteration {
  
  ReferenceLinks links = null;
  
  IdentityRef author = null;
  /* Changes included with the pull request iteration. */
  List<GitPullRequestChange> changeList = [];
  /* The commits included with the pull request iteration. */
  List<GitCommitRef> commits = [];
  
  GitCommitRef commonRefCommit = null;
  /* The creation date of the pull request iteration. */
  DateTime createdDate = null;
  /* Description of the pull request iteration. */
  String description = null;
  /* Indicates if the Commits property contains a truncated list of commits in this pull request iteration. */
  bool hasMoreCommits = null;
  /* ID of the pull request iteration. Iterations are created as a result of creating and pushing updates to a pull request. */
  int id = null;
  /* If the iteration reason is Retarget, this is the refName of the new target */
  String newTargetRefName = null;
  /* If the iteration reason is Retarget, this is the original target refName */
  String oldTargetRefName = null;
  
  GitPushRef push = null;
  /* The reason for which the pull request iteration was created. */
  String reason = null;
  //enum reasonEnum {  push,  forcePush,  create,  rebase,  unknown,  retarget,  };{
  
  GitCommitRef sourceRefCommit = null;
  
  GitCommitRef targetRefCommit = null;
  /* The updated date of the pull request iteration. */
  DateTime updatedDate = null;
  GitPullRequestIteration();

  @override
  String toString() {
    return 'GitPullRequestIteration[links=$links, author=$author, changeList=$changeList, commits=$commits, commonRefCommit=$commonRefCommit, createdDate=$createdDate, description=$description, hasMoreCommits=$hasMoreCommits, id=$id, newTargetRefName=$newTargetRefName, oldTargetRefName=$oldTargetRefName, push=$push, reason=$reason, sourceRefCommit=$sourceRefCommit, targetRefCommit=$targetRefCommit, updatedDate=$updatedDate, ]';
  }

  GitPullRequestIteration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['author'] == null) {
      author = null;
    } else {
      author = IdentityRef.fromJson(json['author']);
    }
    if (json['changeList'] == null) {
      changeList = null;
    } else {
      changeList = GitPullRequestChange.listFromJson(json['changeList']);
    }
    if (json['commits'] == null) {
      commits = null;
    } else {
      commits = GitCommitRef.listFromJson(json['commits']);
    }
    if (json['commonRefCommit'] == null) {
      commonRefCommit = null;
    } else {
      commonRefCommit = GitCommitRef.fromJson(json['commonRefCommit']);
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['hasMoreCommits'] == null) {
      hasMoreCommits = null;
    } else {
          hasMoreCommits = json['hasMoreCommits'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['newTargetRefName'] == null) {
      newTargetRefName = null;
    } else {
          newTargetRefName = json['newTargetRefName'];
    }
    if (json['oldTargetRefName'] == null) {
      oldTargetRefName = null;
    } else {
          oldTargetRefName = json['oldTargetRefName'];
    }
    if (json['push'] == null) {
      push = null;
    } else {
      push = GitPushRef.fromJson(json['push']);
    }
    if (json['reason'] == null) {
      reason = null;
    } else {
          reason = json['reason'];
    }
    if (json['sourceRefCommit'] == null) {
      sourceRefCommit = null;
    } else {
      sourceRefCommit = GitCommitRef.fromJson(json['sourceRefCommit']);
    }
    if (json['targetRefCommit'] == null) {
      targetRefCommit = null;
    } else {
      targetRefCommit = GitCommitRef.fromJson(json['targetRefCommit']);
    }
    if (json['updatedDate'] == null) {
      updatedDate = null;
    } else {
      updatedDate = DateTime.parse(json['updatedDate']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (author != null)
      json['author'] = author;
    if (changeList != null)
      json['changeList'] = changeList;
    if (commits != null)
      json['commits'] = commits;
    if (commonRefCommit != null)
      json['commonRefCommit'] = commonRefCommit;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (description != null)
      json['description'] = description;
    if (hasMoreCommits != null)
      json['hasMoreCommits'] = hasMoreCommits;
    if (id != null)
      json['id'] = id;
    if (newTargetRefName != null)
      json['newTargetRefName'] = newTargetRefName;
    if (oldTargetRefName != null)
      json['oldTargetRefName'] = oldTargetRefName;
    if (push != null)
      json['push'] = push;
    if (reason != null)
      json['reason'] = reason;
    if (sourceRefCommit != null)
      json['sourceRefCommit'] = sourceRefCommit;
    if (targetRefCommit != null)
      json['targetRefCommit'] = targetRefCommit;
    if (updatedDate != null)
      json['updatedDate'] = updatedDate == null ? null : updatedDate.toUtc().toIso8601String();
    return json;
  }

  static List<GitPullRequestIteration> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPullRequestIteration>() : json.map((value) => GitPullRequestIteration.fromJson(value)).toList();
  }

  static Map<String, GitPullRequestIteration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPullRequestIteration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPullRequestIteration.fromJson(value));
    }
    return map;
  }
}

