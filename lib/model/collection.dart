part of azure_devops_sdk.api;

class Collection {
  /* Name of the collection. */
  String name = null;
  Collection();

  @override
  String toString() {
    return 'Collection[name=$name, ]';
  }

  Collection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<Collection> listFromJson(List<dynamic> json) {
    return json == null ? List<Collection>() : json.map((value) => Collection.fromJson(value)).toList();
  }

  static Map<String, Collection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Collection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Collection.fromJson(value));
    }
    return map;
  }
}

