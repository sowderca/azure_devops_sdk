part of azure_devops_sdk.api;

class JToken {
  
  JToken first = null;
  /* Gets a value indicating whether this token has child tokens. */
  bool hasValues = null;
  
  JToken item = null;
  
  JToken last = null;
  
  JToken next = null;
  /* Gets or sets the parent. */
  String parent = null;
  /* Gets the path of the JSON token. */
  String path = null;
  
  JToken previous = null;
  
  JToken root = null;
  /* Gets the node type for this JToken. */
  String type = null;
  JToken();

  @override
  String toString() {
    return 'JToken[first=$first, hasValues=$hasValues, item=$item, last=$last, next=$next, parent=$parent, path=$path, previous=$previous, root=$root, type=$type, ]';
  }

  JToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['first'] == null) {
      first = null;
    } else {
      first = JToken.fromJson(json['first']);
    }
    if (json['hasValues'] == null) {
      hasValues = null;
    } else {
          hasValues = json['hasValues'];
    }
    if (json['item'] == null) {
      item = null;
    } else {
      item = JToken.fromJson(json['item']);
    }
    if (json['last'] == null) {
      last = null;
    } else {
      last = JToken.fromJson(json['last']);
    }
    if (json['next'] == null) {
      next = null;
    } else {
      next = JToken.fromJson(json['next']);
    }
    if (json['parent'] == null) {
      parent = null;
    } else {
          parent = json['parent'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['previous'] == null) {
      previous = null;
    } else {
      previous = JToken.fromJson(json['previous']);
    }
    if (json['root'] == null) {
      root = null;
    } else {
      root = JToken.fromJson(json['root']);
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (first != null)
      json['first'] = first;
    if (hasValues != null)
      json['hasValues'] = hasValues;
    if (item != null)
      json['item'] = item;
    if (last != null)
      json['last'] = last;
    if (next != null)
      json['next'] = next;
    if (parent != null)
      json['parent'] = parent;
    if (path != null)
      json['path'] = path;
    if (previous != null)
      json['previous'] = previous;
    if (root != null)
      json['root'] = root;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<JToken> listFromJson(List<dynamic> json) {
    return json == null ? List<JToken>() : json.map((value) => JToken.fromJson(value)).toList();
  }

  static Map<String, JToken> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JToken>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JToken.fromJson(value));
    }
    return map;
  }
}

