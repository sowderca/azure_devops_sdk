part of azure_devops_sdk.api;

class GitCommit {
  
  ReferenceLinks links = null;
  
  GitUserDate author = null;
  
  ChangeCountDictionary changeCounts = null;
  /* An enumeration of the changes included with the commit. */
  List<GitChange> changes = [];
  /* Comment or message of the commit. */
  String comment = null;
  /* Indicates if the comment is truncated from the full Git commit comment message. */
  bool commentTruncated = null;
  /* ID (SHA-1) of the commit. */
  String commitId = null;
  
  GitUserDate committer = null;
  /* An enumeration of the parent commit IDs for this commit. */
  List<String> parents = [];
  
  GitPushRef push = null;
  /* Remote URL path to the commit. */
  String remoteUrl = null;
  /* A list of status metadata from services and extensions that may associate additional information to the commit. */
  List<GitStatus> statuses = [];
  /* REST URL for this resource. */
  String url = null;
  /* A list of workitems associated with this commit. */
  List<ResourceRef> workItems = [];
  GitCommit();

  @override
  String toString() {
    return 'GitCommit[links=$links, author=$author, changeCounts=$changeCounts, changes=$changes, comment=$comment, commentTruncated=$commentTruncated, commitId=$commitId, committer=$committer, parents=$parents, push=$push, remoteUrl=$remoteUrl, statuses=$statuses, url=$url, workItems=$workItems, ]';
  }

  GitCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['author'] == null) {
      author = null;
    } else {
      author = GitUserDate.fromJson(json['author']);
    }
    if (json['changeCounts'] == null) {
      changeCounts = null;
    } else {
      changeCounts = ChangeCountDictionary.fromJson(json['changeCounts']);
    }
    if (json['changes'] == null) {
      changes = null;
    } else {
      changes = GitChange.listFromJson(json['changes']);
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['commentTruncated'] == null) {
      commentTruncated = null;
    } else {
          commentTruncated = json['commentTruncated'];
    }
    if (json['commitId'] == null) {
      commitId = null;
    } else {
          commitId = json['commitId'];
    }
    if (json['committer'] == null) {
      committer = null;
    } else {
      committer = GitUserDate.fromJson(json['committer']);
    }
    if (json['parents'] == null) {
      parents = null;
    } else {
      parents = (json['parents'] as List).cast<String>();
    }
    if (json['push'] == null) {
      push = null;
    } else {
      push = GitPushRef.fromJson(json['push']);
    }
    if (json['remoteUrl'] == null) {
      remoteUrl = null;
    } else {
          remoteUrl = json['remoteUrl'];
    }
    if (json['statuses'] == null) {
      statuses = null;
    } else {
      statuses = GitStatus.listFromJson(json['statuses']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['workItems'] == null) {
      workItems = null;
    } else {
      workItems = ResourceRef.listFromJson(json['workItems']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (author != null)
      json['author'] = author;
    if (changeCounts != null)
      json['changeCounts'] = changeCounts;
    if (changes != null)
      json['changes'] = changes;
    if (comment != null)
      json['comment'] = comment;
    if (commentTruncated != null)
      json['commentTruncated'] = commentTruncated;
    if (commitId != null)
      json['commitId'] = commitId;
    if (committer != null)
      json['committer'] = committer;
    if (parents != null)
      json['parents'] = parents;
    if (push != null)
      json['push'] = push;
    if (remoteUrl != null)
      json['remoteUrl'] = remoteUrl;
    if (statuses != null)
      json['statuses'] = statuses;
    if (url != null)
      json['url'] = url;
    if (workItems != null)
      json['workItems'] = workItems;
    return json;
  }

  static List<GitCommit> listFromJson(List<dynamic> json) {
    return json == null ? List<GitCommit>() : json.map((value) => GitCommit.fromJson(value)).toList();
  }

  static Map<String, GitCommit> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitCommit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitCommit.fromJson(value));
    }
    return map;
  }
}

