part of azure_devops_sdk.api;

class WorkItemSearchRequest {
  /* Filters to be applied. Set it to null if there are no filters to be applied. */
  Map<String, List<String>> filters = {};
  /* The search text. */
  String searchText = null;
  WorkItemSearchRequest();

  @override
  String toString() {
    return 'WorkItemSearchRequest[filters=$filters, searchText=$searchText, ]';
  }

  WorkItemSearchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['filters'] == null) {
      filters = null;
    } else {
      filters = List.mapFromJson(json['filters']);
    }
    if (json['searchText'] == null) {
      searchText = null;
    } else {
          searchText = json['searchText'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (filters != null)
      json['filters'] = filters;
    if (searchText != null)
      json['searchText'] = searchText;
    return json;
  }

  static List<WorkItemSearchRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemSearchRequest>() : json.map((value) => WorkItemSearchRequest.fromJson(value)).toList();
  }

  static Map<String, WorkItemSearchRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemSearchRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemSearchRequest.fromJson(value));
    }
    return map;
  }
}

