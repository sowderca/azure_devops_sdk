part of azure_devops_sdk.api;

class GitPathToItemsCollection {
  
  Map<String, List<GitItem>> items = {};
  GitPathToItemsCollection();

  @override
  String toString() {
    return 'GitPathToItemsCollection[items=$items, ]';
  }

  GitPathToItemsCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['items'] == null) {
      items = null;
    } else {
      items = List.mapFromJson(json['items']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (items != null)
      json['items'] = items;
    return json;
  }

  static List<GitPathToItemsCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPathToItemsCollection>() : json.map((value) => GitPathToItemsCollection.fromJson(value)).toList();
  }

  static Map<String, GitPathToItemsCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPathToItemsCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPathToItemsCollection.fromJson(value));
    }
    return map;
  }
}

