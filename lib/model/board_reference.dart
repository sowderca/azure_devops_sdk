part of azure_devops_sdk.api;

class BoardReference {
  /* Id of the resource */
  String id = null;
  /* Name of the resource */
  String name = null;
  /* Full http link to the resource */
  String url = null;
  BoardReference();

  @override
  String toString() {
    return 'BoardReference[id=$id, name=$name, url=$url, ]';
  }

  BoardReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<BoardReference> listFromJson(List<dynamic> json) {
    return json == null ? List<BoardReference>() : json.map((value) => BoardReference.fromJson(value)).toList();
  }

  static Map<String, BoardReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoardReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoardReference.fromJson(value));
    }
    return map;
  }
}

