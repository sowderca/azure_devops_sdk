part of azure_devops_sdk.api;

class CommentThread {
  
  ReferenceLinks links = null;
  /* A list of the comments. */
  List<Comment> comments = [];
  /* The comment thread id. */
  int id = null;
  /* Set of identities related to this thread */
  Map<String, IdentityRef> identities = {};
  /* Specify if the thread is deleted which happens when all comments are deleted. */
  bool isDeleted = null;
  /* The time this thread was last updated. */
  DateTime lastUpdatedDate = null;
  
  PropertiesCollection properties = null;
  /* The time this thread was published. */
  DateTime publishedDate = null;
  /* The status of the comment thread. */
  String status = null;
  //enum statusEnum {  unknown,  active,  fixed,  wontFix,  closed,  byDesign,  pending,  };{
  
  CommentThreadContext threadContext = null;
  CommentThread();

  @override
  String toString() {
    return 'CommentThread[links=$links, comments=$comments, id=$id, identities=$identities, isDeleted=$isDeleted, lastUpdatedDate=$lastUpdatedDate, properties=$properties, publishedDate=$publishedDate, status=$status, threadContext=$threadContext, ]';
  }

  CommentThread.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['comments'] == null) {
      comments = null;
    } else {
      comments = Comment.listFromJson(json['comments']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['identities'] == null) {
      identities = null;
    } else {
      identities = IdentityRef.mapFromJson(json['identities']);
    }
    if (json['isDeleted'] == null) {
      isDeleted = null;
    } else {
          isDeleted = json['isDeleted'];
    }
    if (json['lastUpdatedDate'] == null) {
      lastUpdatedDate = null;
    } else {
      lastUpdatedDate = DateTime.parse(json['lastUpdatedDate']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = PropertiesCollection.fromJson(json['properties']);
    }
    if (json['publishedDate'] == null) {
      publishedDate = null;
    } else {
      publishedDate = DateTime.parse(json['publishedDate']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['threadContext'] == null) {
      threadContext = null;
    } else {
      threadContext = CommentThreadContext.fromJson(json['threadContext']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (comments != null)
      json['comments'] = comments;
    if (id != null)
      json['id'] = id;
    if (identities != null)
      json['identities'] = identities;
    if (isDeleted != null)
      json['isDeleted'] = isDeleted;
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (properties != null)
      json['properties'] = properties;
    if (publishedDate != null)
      json['publishedDate'] = publishedDate == null ? null : publishedDate.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    if (threadContext != null)
      json['threadContext'] = threadContext;
    return json;
  }

  static List<CommentThread> listFromJson(List<dynamic> json) {
    return json == null ? List<CommentThread>() : json.map((value) => CommentThread.fromJson(value)).toList();
  }

  static Map<String, CommentThread> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentThread>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommentThread.fromJson(value));
    }
    return map;
  }
}

