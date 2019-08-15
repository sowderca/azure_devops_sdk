part of azure_devops_sdk.api;

class Comment {
  
  ReferenceLinks links = null;
  
  IdentityRef author = null;
  /* The comment type at the time of creation. */
  String commentType = null;
  //enum commentTypeEnum {  unknown,  text,  codeChange,  system,  };{
  /* The comment content. */
  String content = null;
  /* The comment ID. IDs start at 1 and are unique to a pull request. */
  int id = null;
  /* Whether or not this comment was soft-deleted. */
  bool isDeleted = null;
  /* The date the comment's content was last updated. */
  DateTime lastContentUpdatedDate = null;
  /* The date the comment was last updated. */
  DateTime lastUpdatedDate = null;
  /* The ID of the parent comment. This is used for replies. */
  int parentCommentId = null;
  /* The date the comment was first published. */
  DateTime publishedDate = null;
  /* A list of the users who have liked this comment. */
  List<IdentityRef> usersLiked = [];
  Comment();

  @override
  String toString() {
    return 'Comment[links=$links, author=$author, commentType=$commentType, content=$content, id=$id, isDeleted=$isDeleted, lastContentUpdatedDate=$lastContentUpdatedDate, lastUpdatedDate=$lastUpdatedDate, parentCommentId=$parentCommentId, publishedDate=$publishedDate, usersLiked=$usersLiked, ]';
  }

  Comment.fromJson(Map<String, dynamic> json) {
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
    if (json['commentType'] == null) {
      commentType = null;
    } else {
          commentType = json['commentType'];
    }
    if (json['content'] == null) {
      content = null;
    } else {
          content = json['content'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isDeleted'] == null) {
      isDeleted = null;
    } else {
          isDeleted = json['isDeleted'];
    }
    if (json['lastContentUpdatedDate'] == null) {
      lastContentUpdatedDate = null;
    } else {
      lastContentUpdatedDate = DateTime.parse(json['lastContentUpdatedDate']);
    }
    if (json['lastUpdatedDate'] == null) {
      lastUpdatedDate = null;
    } else {
      lastUpdatedDate = DateTime.parse(json['lastUpdatedDate']);
    }
    if (json['parentCommentId'] == null) {
      parentCommentId = null;
    } else {
          parentCommentId = json['parentCommentId'];
    }
    if (json['publishedDate'] == null) {
      publishedDate = null;
    } else {
      publishedDate = DateTime.parse(json['publishedDate']);
    }
    if (json['usersLiked'] == null) {
      usersLiked = null;
    } else {
      usersLiked = IdentityRef.listFromJson(json['usersLiked']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (author != null)
      json['author'] = author;
    if (commentType != null)
      json['commentType'] = commentType;
    if (content != null)
      json['content'] = content;
    if (id != null)
      json['id'] = id;
    if (isDeleted != null)
      json['isDeleted'] = isDeleted;
    if (lastContentUpdatedDate != null)
      json['lastContentUpdatedDate'] = lastContentUpdatedDate == null ? null : lastContentUpdatedDate.toUtc().toIso8601String();
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (parentCommentId != null)
      json['parentCommentId'] = parentCommentId;
    if (publishedDate != null)
      json['publishedDate'] = publishedDate == null ? null : publishedDate.toUtc().toIso8601String();
    if (usersLiked != null)
      json['usersLiked'] = usersLiked;
    return json;
  }

  static List<Comment> listFromJson(List<dynamic> json) {
    return json == null ? List<Comment>() : json.map((value) => Comment.fromJson(value)).toList();
  }

  static Map<String, Comment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Comment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Comment.fromJson(value));
    }
    return map;
  }
}

