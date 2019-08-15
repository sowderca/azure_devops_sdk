part of azure_devops_sdk.api;

class FavoriteItem {
  /* Application specific data for the entry. */
  String data = null;
  /* Unique Id of the the entry. */
  String id = null;
  /* Display text for favorite entry. */
  String name = null;
  /* Application specific favorite entry type. Empty or Null represents that Favorite item is a Folder. */
  String type = null;
  FavoriteItem();

  @override
  String toString() {
    return 'FavoriteItem[data=$data, id=$id, name=$name, type=$type, ]';
  }

  FavoriteItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['data'] == null) {
      data = null;
    } else {
          data = json['data'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<FavoriteItem> listFromJson(List<dynamic> json) {
    return json == null ? List<FavoriteItem>() : json.map((value) => FavoriteItem.fromJson(value)).toList();
  }

  static Map<String, FavoriteItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FavoriteItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FavoriteItem.fromJson(value));
    }
    return map;
  }
}

