part of azure_devops_sdk.api;

class PullRequest {
  
  ReferenceLinks links = null;
  
  IdentityRef author = null;
  /* Current state of the pull request, e.g. open, merged, closed, conflicts, etc. */
  String currentState = null;
  /* Description for the pull request. */
  String description = null;
  /* Unique identifier for the pull request */
  String id = null;
  /* The name of the provider this pull request is associated with. */
  String providerName = null;
  /* Source branch ref of this pull request */
  String sourceBranchRef = null;
  /* Owner of the source repository of this pull request */
  String sourceRepositoryOwner = null;
  /* Target branch ref of this pull request */
  String targetBranchRef = null;
  /* Owner of the target repository of this pull request */
  String targetRepositoryOwner = null;
  /* Title of the pull request. */
  String title = null;
  PullRequest();

  @override
  String toString() {
    return 'PullRequest[links=$links, author=$author, currentState=$currentState, description=$description, id=$id, providerName=$providerName, sourceBranchRef=$sourceBranchRef, sourceRepositoryOwner=$sourceRepositoryOwner, targetBranchRef=$targetBranchRef, targetRepositoryOwner=$targetRepositoryOwner, title=$title, ]';
  }

  PullRequest.fromJson(Map<String, dynamic> json) {
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
    if (json['currentState'] == null) {
      currentState = null;
    } else {
          currentState = json['currentState'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['providerName'] == null) {
      providerName = null;
    } else {
          providerName = json['providerName'];
    }
    if (json['sourceBranchRef'] == null) {
      sourceBranchRef = null;
    } else {
          sourceBranchRef = json['sourceBranchRef'];
    }
    if (json['sourceRepositoryOwner'] == null) {
      sourceRepositoryOwner = null;
    } else {
          sourceRepositoryOwner = json['sourceRepositoryOwner'];
    }
    if (json['targetBranchRef'] == null) {
      targetBranchRef = null;
    } else {
          targetBranchRef = json['targetBranchRef'];
    }
    if (json['targetRepositoryOwner'] == null) {
      targetRepositoryOwner = null;
    } else {
          targetRepositoryOwner = json['targetRepositoryOwner'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (author != null)
      json['author'] = author;
    if (currentState != null)
      json['currentState'] = currentState;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (providerName != null)
      json['providerName'] = providerName;
    if (sourceBranchRef != null)
      json['sourceBranchRef'] = sourceBranchRef;
    if (sourceRepositoryOwner != null)
      json['sourceRepositoryOwner'] = sourceRepositoryOwner;
    if (targetBranchRef != null)
      json['targetBranchRef'] = targetBranchRef;
    if (targetRepositoryOwner != null)
      json['targetRepositoryOwner'] = targetRepositoryOwner;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<PullRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<PullRequest>() : json.map((value) => PullRequest.fromJson(value)).toList();
  }

  static Map<String, PullRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PullRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PullRequest.fromJson(value));
    }
    return map;
  }
}

