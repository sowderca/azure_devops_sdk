part of azure_devops_sdk.api;

class WikiSearchRequest {
  /* Filters to be applied. Set it to null if there are no filters to be applied. */
  Map<String, List<String>> filters = {};
  /* The search text. */
  String searchText = null;
  WikiSearchRequest();

  @override
  String toString() {
    return 'WikiSearchRequest[filters=$filters, searchText=$searchText, ]';
  }

  WikiSearchRequest.fromJson(Map<String, dynamic> json) {
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

  static List<WikiSearchRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiSearchRequest>() : json.map((value) => WikiSearchRequest.fromJson(value)).toList();
  }

  static Map<String, WikiSearchRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiSearchRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiSearchRequest.fromJson(value));
    }
    return map;
  }
}

