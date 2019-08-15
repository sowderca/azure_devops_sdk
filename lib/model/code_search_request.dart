part of azure_devops_sdk.api;

class CodeSearchRequest {
  /* Filters to be applied. Set it to null if there are no filters to be applied. */
  Map<String, List<String>> filters = {};
  /* The search text. */
  String searchText = null;
  CodeSearchRequest();

  @override
  String toString() {
    return 'CodeSearchRequest[filters=$filters, searchText=$searchText, ]';
  }

  CodeSearchRequest.fromJson(Map<String, dynamic> json) {
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

  static List<CodeSearchRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<CodeSearchRequest>() : json.map((value) => CodeSearchRequest.fromJson(value)).toList();
  }

  static Map<String, CodeSearchRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CodeSearchRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CodeSearchRequest.fromJson(value));
    }
    return map;
  }
}

