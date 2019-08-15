part of azure_devops_sdk.api;

class PropertiesCollection {
  /* The count of properties in the collection. */
  int count = null;
  
  Object item = null;
  /* The set of keys in the collection. */
  List<String> keys = [];
  /* The set of values in the collection. */
  List<String> values = [];
  PropertiesCollection();

  @override
  String toString() {
    return 'PropertiesCollection[count=$count, item=$item, keys=$keys, values=$values, ]';
  }

  PropertiesCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['item'] == null) {
      item = null;
    } else {
          item = json['item'];
    }
    if (json['keys'] == null) {
      keys = null;
    } else {
      keys = (json['keys'] as List).cast<String>();
    }
    if (json['values'] == null) {
      values = null;
    } else {
      values = (json['values'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (item != null)
      json['item'] = item;
    if (keys != null)
      json['keys'] = keys;
    if (values != null)
      json['values'] = values;
    return json;
  }

  static List<PropertiesCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<PropertiesCollection>() : json.map((value) => PropertiesCollection.fromJson(value)).toList();
  }

  static Map<String, PropertiesCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PropertiesCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PropertiesCollection.fromJson(value));
    }
    return map;
  }
}

