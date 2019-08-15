part of azure_devops_sdk.api;

class AccessControlListsCollection {
  AccessControlListsCollection();

  @override
  String toString() {
    return 'AccessControlListsCollection[]';
  }

  AccessControlListsCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<AccessControlListsCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<AccessControlListsCollection>() : json.map((value) => AccessControlListsCollection.fromJson(value)).toList();
  }

  static Map<String, AccessControlListsCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccessControlListsCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccessControlListsCollection.fromJson(value));
    }
    return map;
  }
}

