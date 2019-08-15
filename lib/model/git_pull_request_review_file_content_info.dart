part of azure_devops_sdk.api;

class GitPullRequestReviewFileContentInfo {
  
  ReferenceLinks links = null;
  /* The file change path. */
  String path = null;
  /* Content hash of on-disk representation of file content. Its calculated by the client by using SHA1 hash function. Ensure that uploaded file has same encoding as in source control. */
  String shA1Hash = null;
  GitPullRequestReviewFileContentInfo();

  @override
  String toString() {
    return 'GitPullRequestReviewFileContentInfo[links=$links, path=$path, shA1Hash=$shA1Hash, ]';
  }

  GitPullRequestReviewFileContentInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['shA1Hash'] == null) {
      shA1Hash = null;
    } else {
          shA1Hash = json['shA1Hash'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (path != null)
      json['path'] = path;
    if (shA1Hash != null)
      json['shA1Hash'] = shA1Hash;
    return json;
  }

  static List<GitPullRequestReviewFileContentInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPullRequestReviewFileContentInfo>() : json.map((value) => GitPullRequestReviewFileContentInfo.fromJson(value)).toList();
  }

  static Map<String, GitPullRequestReviewFileContentInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPullRequestReviewFileContentInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPullRequestReviewFileContentInfo.fromJson(value));
    }
    return map;
  }
}

