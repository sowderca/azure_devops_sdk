part of azure_devops_sdk.api;

class GitPullRequestQueryInput {
  /* The list of commit IDs to search for. */
  List<String> items = [];
  /* The type of query to perform. */
  String type = null;
  //enum typeEnum {  notSet,  lastMergeCommit,  commit,  };{
  GitPullRequestQueryInput();

  @override
  String toString() {
    return 'GitPullRequestQueryInput[items=$items, type=$type, ]';
  }

  GitPullRequestQueryInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['items'] == null) {
      items = null;
    } else {
      items = (json['items'] as List).cast<String>();
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (items != null)
      json['items'] = items;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<GitPullRequestQueryInput> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPullRequestQueryInput>() : json.map((value) => GitPullRequestQueryInput.fromJson(value)).toList();
  }

  static Map<String, GitPullRequestQueryInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPullRequestQueryInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPullRequestQueryInput.fromJson(value));
    }
    return map;
  }
}

