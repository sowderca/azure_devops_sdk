part of azure_devops_sdk.api;

class QueryHierarchyItem {
  
  String url = null;
  QueryHierarchyItem();

  @override
  String toString() {
    return 'QueryHierarchyItem[url=$url, ]';
  }

  QueryHierarchyItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<QueryHierarchyItem> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryHierarchyItem>() : json.map((value) => QueryHierarchyItem.fromJson(value)).toList();
  }

  static Map<String, QueryHierarchyItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryHierarchyItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryHierarchyItem.fromJson(value));
    }
    return map;
  }
}

