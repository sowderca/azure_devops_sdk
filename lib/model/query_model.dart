part of azure_devops_sdk.api;

class QueryModel {
  
  String query = null;
  QueryModel();

  @override
  String toString() {
    return 'QueryModel[query=$query, ]';
  }

  QueryModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['query'] == null) {
      query = null;
    } else {
          query = json['query'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (query != null)
      json['query'] = query;
    return json;
  }

  static List<QueryModel> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryModel>() : json.map((value) => QueryModel.fromJson(value)).toList();
  }

  static Map<String, QueryModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryModel.fromJson(value));
    }
    return map;
  }
}

