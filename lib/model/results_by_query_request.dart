part of azure_devops_sdk.api;

class ResultsByQueryRequest {
  
  int pageSize = null;
  
  ResultsStoreQuery query = null;
  ResultsByQueryRequest();

  @override
  String toString() {
    return 'ResultsByQueryRequest[pageSize=$pageSize, query=$query, ]';
  }

  ResultsByQueryRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pageSize'] == null) {
      pageSize = null;
    } else {
          pageSize = json['pageSize'];
    }
    if (json['query'] == null) {
      query = null;
    } else {
      query = ResultsStoreQuery.fromJson(json['query']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pageSize != null)
      json['pageSize'] = pageSize;
    if (query != null)
      json['query'] = query;
    return json;
  }

  static List<ResultsByQueryRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<ResultsByQueryRequest>() : json.map((value) => ResultsByQueryRequest.fromJson(value)).toList();
  }

  static Map<String, ResultsByQueryRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResultsByQueryRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResultsByQueryRequest.fromJson(value));
    }
    return map;
  }
}

