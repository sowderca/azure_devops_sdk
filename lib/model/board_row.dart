part of azure_devops_sdk.api;

class BoardRow {
  
  String id = null;
  
  String name = null;
  BoardRow();

  @override
  String toString() {
    return 'BoardRow[id=$id, name=$name, ]';
  }

  BoardRow.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<BoardRow> listFromJson(List<dynamic> json) {
    return json == null ? List<BoardRow>() : json.map((value) => BoardRow.fromJson(value)).toList();
  }

  static Map<String, BoardRow> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoardRow>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoardRow.fromJson(value));
    }
    return map;
  }
}

