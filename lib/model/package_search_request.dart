part of azure_devops_sdk.api;

class PackageSearchRequest {
  /* Filters to be applied. Set it to null if there are no filters to be applied. */
  Map<String, List<String>> filters = {};
  /* The search text. */
  String searchText = null;
  PackageSearchRequest();

  @override
  String toString() {
    return 'PackageSearchRequest[filters=$filters, searchText=$searchText, ]';
  }

  PackageSearchRequest.fromJson(Map<String, dynamic> json) {
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

  static List<PackageSearchRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageSearchRequest>() : json.map((value) => PackageSearchRequest.fromJson(value)).toList();
  }

  static Map<String, PackageSearchRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageSearchRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageSearchRequest.fromJson(value));
    }
    return map;
  }
}

