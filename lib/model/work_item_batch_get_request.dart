part of azure_devops_sdk.api;

class WorkItemBatchGetRequest {
  /* The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All } */
  String $expand = null;
  //enum $expandEnum {  none,  relations,  fields,  links,  all,  };{
  /* AsOf UTC date time string */
  DateTime asOf = null;
  /* The flag to control error policy in a bulk get work items request. Possible options are {Fail, Omit}. */
  String errorPolicy = null;
  //enum errorPolicyEnum {  fail,  omit,  };{
  /* The requested fields */
  List<String> fields = [];
  /* The requested work item ids */
  List<int> ids = [];
  WorkItemBatchGetRequest();

  @override
  String toString() {
    return 'WorkItemBatchGetRequest[$expand=$$expand, asOf=$asOf, errorPolicy=$errorPolicy, fields=$fields, ids=$ids, ]';
  }

  WorkItemBatchGetRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['$expand'] == null) {
      $expand = null;
    } else {
          $expand = json['$expand'];
    }
    if (json['asOf'] == null) {
      asOf = null;
    } else {
      asOf = DateTime.parse(json['asOf']);
    }
    if (json['errorPolicy'] == null) {
      errorPolicy = null;
    } else {
          errorPolicy = json['errorPolicy'];
    }
    if (json['fields'] == null) {
      fields = null;
    } else {
      fields = (json['fields'] as List).cast<String>();
    }
    if (json['ids'] == null) {
      ids = null;
    } else {
      ids = (json['ids'] as List).cast<int>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if ($expand != null)
      json['$expand'] = $expand;
    if (asOf != null)
      json['asOf'] = asOf == null ? null : asOf.toUtc().toIso8601String();
    if (errorPolicy != null)
      json['errorPolicy'] = errorPolicy;
    if (fields != null)
      json['fields'] = fields;
    if (ids != null)
      json['ids'] = ids;
    return json;
  }

  static List<WorkItemBatchGetRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemBatchGetRequest>() : json.map((value) => WorkItemBatchGetRequest.fromJson(value)).toList();
  }

  static Map<String, WorkItemBatchGetRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemBatchGetRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemBatchGetRequest.fromJson(value));
    }
    return map;
  }
}

