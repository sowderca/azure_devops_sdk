part of azure_devops_sdk.api;

class EntitySearchRequest {
  /* Filters to be applied. Set it to null if there are no filters to be applied. */
  Map<String, List<String>> filters = {};
  /* The search text. */
  String searchText = null;
  EntitySearchRequest();

  @override
  String toString() {
    return 'EntitySearchRequest[filters=$filters, searchText=$searchText, ]';
  }

  EntitySearchRequest.fromJson(Map<String, dynamic> json) {
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

  static List<EntitySearchRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<EntitySearchRequest>() : json.map((value) => EntitySearchRequest.fromJson(value)).toList();
  }

  static Map<String, EntitySearchRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EntitySearchRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EntitySearchRequest.fromJson(value));
    }
    return map;
  }
}

