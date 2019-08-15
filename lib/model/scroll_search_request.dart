part of azure_devops_sdk.api;

class ScrollSearchRequest {
  /* Filters to be applied. Set it to null if there are no filters to be applied. */
  Map<String, List<String>> filters = {};
  /* The search text. */
  String searchText = null;
  ScrollSearchRequest();

  @override
  String toString() {
    return 'ScrollSearchRequest[filters=$filters, searchText=$searchText, ]';
  }

  ScrollSearchRequest.fromJson(Map<String, dynamic> json) {
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

  static List<ScrollSearchRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<ScrollSearchRequest>() : json.map((value) => ScrollSearchRequest.fromJson(value)).toList();
  }

  static Map<String, ScrollSearchRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ScrollSearchRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ScrollSearchRequest.fromJson(value));
    }
    return map;
  }
}

