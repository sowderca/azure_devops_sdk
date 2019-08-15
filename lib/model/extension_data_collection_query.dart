part of azure_devops_sdk.api;

class ExtensionDataCollectionQuery {
  /* A list of collections to query */
  List<ExtensionDataCollection> collections = [];
  ExtensionDataCollectionQuery();

  @override
  String toString() {
    return 'ExtensionDataCollectionQuery[collections=$collections, ]';
  }

  ExtensionDataCollectionQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['collections'] == null) {
      collections = null;
    } else {
      collections = ExtensionDataCollection.listFromJson(json['collections']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (collections != null)
      json['collections'] = collections;
    return json;
  }

  static List<ExtensionDataCollectionQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionDataCollectionQuery>() : json.map((value) => ExtensionDataCollectionQuery.fromJson(value)).toList();
  }

  static Map<String, ExtensionDataCollectionQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionDataCollectionQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionDataCollectionQuery.fromJson(value));
    }
    return map;
  }
}

