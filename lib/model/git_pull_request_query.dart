part of azure_devops_sdk.api;

class GitPullRequestQuery {
  /* The queries to perform. */
  List<GitPullRequestQueryInput> queries = [];
  /* The results of the queries. This matches the QueryInputs list so Results[n] are the results of QueryInputs[n]. Each entry in the list is a dictionary of commit->pull requests. */
  List<Map<String, List<GitPullRequest>>> results = [];
  GitPullRequestQuery();

  @override
  String toString() {
    return 'GitPullRequestQuery[queries=$queries, results=$results, ]';
  }

  GitPullRequestQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['queries'] == null) {
      queries = null;
    } else {
      queries = GitPullRequestQueryInput.listFromJson(json['queries']);
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = Map.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (queries != null)
      json['queries'] = queries;
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<GitPullRequestQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPullRequestQuery>() : json.map((value) => GitPullRequestQuery.fromJson(value)).toList();
  }

  static Map<String, GitPullRequestQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPullRequestQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPullRequestQuery.fromJson(value));
    }
    return map;
  }
}

