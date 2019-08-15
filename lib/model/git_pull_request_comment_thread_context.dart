part of azure_devops_sdk.api;

class GitPullRequestCommentThreadContext {
  /* Used to track a comment across iterations. This value can be found by looking at the iteration's changes list. Must be set for pull requests with iteration support. Otherwise, it's not required for 'legacy' pull requests. */
  int changeTrackingId = null;
  
  CommentIterationContext iterationContext = null;
  
  CommentTrackingCriteria trackingCriteria = null;
  GitPullRequestCommentThreadContext();

  @override
  String toString() {
    return 'GitPullRequestCommentThreadContext[changeTrackingId=$changeTrackingId, iterationContext=$iterationContext, trackingCriteria=$trackingCriteria, ]';
  }

  GitPullRequestCommentThreadContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changeTrackingId'] == null) {
      changeTrackingId = null;
    } else {
          changeTrackingId = json['changeTrackingId'];
    }
    if (json['iterationContext'] == null) {
      iterationContext = null;
    } else {
      iterationContext = CommentIterationContext.fromJson(json['iterationContext']);
    }
    if (json['trackingCriteria'] == null) {
      trackingCriteria = null;
    } else {
      trackingCriteria = CommentTrackingCriteria.fromJson(json['trackingCriteria']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changeTrackingId != null)
      json['changeTrackingId'] = changeTrackingId;
    if (iterationContext != null)
      json['iterationContext'] = iterationContext;
    if (trackingCriteria != null)
      json['trackingCriteria'] = trackingCriteria;
    return json;
  }

  static List<GitPullRequestCommentThreadContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPullRequestCommentThreadContext>() : json.map((value) => GitPullRequestCommentThreadContext.fromJson(value)).toList();
  }

  static Map<String, GitPullRequestCommentThreadContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPullRequestCommentThreadContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPullRequestCommentThreadContext.fromJson(value));
    }
    return map;
  }
}

