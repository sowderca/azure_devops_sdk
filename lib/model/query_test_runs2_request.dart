part of azure_devops_sdk.api;

class QueryTestRuns2Request {
  
  bool includeStatistics = null;
  
  ResultsStoreQuery query = null;
  QueryTestRuns2Request();

  @override
  String toString() {
    return 'QueryTestRuns2Request[includeStatistics=$includeStatistics, query=$query, ]';
  }

  QueryTestRuns2Request.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['includeStatistics'] == null) {
      includeStatistics = null;
    } else {
          includeStatistics = json['includeStatistics'];
    }
    if (json['query'] == null) {
      query = null;
    } else {
      query = ResultsStoreQuery.fromJson(json['query']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (includeStatistics != null)
      json['includeStatistics'] = includeStatistics;
    if (query != null)
      json['query'] = query;
    return json;
  }

  static List<QueryTestRuns2Request> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryTestRuns2Request>() : json.map((value) => QueryTestRuns2Request.fromJson(value)).toList();
  }

  static Map<String, QueryTestRuns2Request> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryTestRuns2Request>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryTestRuns2Request.fromJson(value));
    }
    return map;
  }
}

