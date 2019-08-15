part of azure_devops_sdk.api;

class Board {
  /* Id of the resource */
  String id = null;
  /* Name of the resource */
  String name = null;
  /* Full http link to the resource */
  String url = null;
  Board();

  @override
  String toString() {
    return 'Board[id=$id, name=$name, url=$url, ]';
  }

  Board.fromJson(Map<String, dynamic> json) {
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

  static List<Board> listFromJson(List<dynamic> json) {
    return json == null ? List<Board>() : json.map((value) => Board.fromJson(value)).toList();
  }

  static Map<String, Board> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Board>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Board.fromJson(value));
    }
    return map;
  }
}

