part of azure_devops_sdk.api;

class QueryHierarchyItemsResult {
  /* The count of items. */
  int count = null;
  /* Indicates if the max return limit was hit but there are still more items */
  bool hasMore = null;
  /* The list of items */
  List<QueryHierarchyItem> value = [];
  QueryHierarchyItemsResult();

  @override
  String toString() {
    return 'QueryHierarchyItemsResult[count=$count, hasMore=$hasMore, value=$value, ]';
  }

  QueryHierarchyItemsResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['hasMore'] == null) {
      hasMore = null;
    } else {
          hasMore = json['hasMore'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
      value = QueryHierarchyItem.listFromJson(json['value']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (hasMore != null)
      json['hasMore'] = hasMore;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<QueryHierarchyItemsResult> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryHierarchyItemsResult>() : json.map((value) => QueryHierarchyItemsResult.fromJson(value)).toList();
  }

  static Map<String, QueryHierarchyItemsResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryHierarchyItemsResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryHierarchyItemsResult.fromJson(value));
    }
    return map;
  }
}

