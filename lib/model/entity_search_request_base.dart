part of azure_devops_sdk.api;

class EntitySearchRequestBase {
  /* Filters to be applied. Set it to null if there are no filters to be applied. */
  Map<String, List<String>> filters = {};
  /* The search text. */
  String searchText = null;
  EntitySearchRequestBase();

  @override
  String toString() {
    return 'EntitySearchRequestBase[filters=$filters, searchText=$searchText, ]';
  }

  EntitySearchRequestBase.fromJson(Map<String, dynamic> json) {
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

  static List<EntitySearchRequestBase> listFromJson(List<dynamic> json) {
    return json == null ? List<EntitySearchRequestBase>() : json.map((value) => EntitySearchRequestBase.fromJson(value)).toList();
  }

  static Map<String, EntitySearchRequestBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EntitySearchRequestBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EntitySearchRequestBase.fromJson(value));
    }
    return map;
  }
}

