part of azure_devops_sdk.api;

class QueryBatchGetRequest {
  /* The expand parameters for queries. Possible options are { None, Wiql, Clauses, All, Minimal } */
  String $expand = null;
  //enum $expandEnum {  none,  wiql,  clauses,  all,  minimal,  };{
  /* The flag to control error policy in a query batch request. Possible options are { Fail, Omit }. */
  String errorPolicy = null;
  //enum errorPolicyEnum {  fail,  omit,  };{
  /* The requested query ids */
  List<String> ids = [];
  QueryBatchGetRequest();

  @override
  String toString() {
    return 'QueryBatchGetRequest[$expand=$$expand, errorPolicy=$errorPolicy, ids=$ids, ]';
  }

  QueryBatchGetRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['$expand'] == null) {
      $expand = null;
    } else {
          $expand = json['$expand'];
    }
    if (json['errorPolicy'] == null) {
      errorPolicy = null;
    } else {
          errorPolicy = json['errorPolicy'];
    }
    if (json['ids'] == null) {
      ids = null;
    } else {
      ids = (json['ids'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if ($expand != null)
      json['$expand'] = $expand;
    if (errorPolicy != null)
      json['errorPolicy'] = errorPolicy;
    if (ids != null)
      json['ids'] = ids;
    return json;
  }

  static List<QueryBatchGetRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryBatchGetRequest>() : json.map((value) => QueryBatchGetRequest.fromJson(value)).toList();
  }

  static Map<String, QueryBatchGetRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryBatchGetRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryBatchGetRequest.fromJson(value));
    }
    return map;
  }
}

