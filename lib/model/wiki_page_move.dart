part of azure_devops_sdk.api;

class WikiPageMove {
  /* New order of the wiki page. */
  int newOrder = null;
  /* New path of the wiki page. */
  String newPath = null;
  /* Current path of the wiki page. */
  String path = null;
  WikiPageMove();

  @override
  String toString() {
    return 'WikiPageMove[newOrder=$newOrder, newPath=$newPath, path=$path, ]';
  }

  WikiPageMove.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['newOrder'] == null) {
      newOrder = null;
    } else {
          newOrder = json['newOrder'];
    }
    if (json['newPath'] == null) {
      newPath = null;
    } else {
          newPath = json['newPath'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (newOrder != null)
      json['newOrder'] = newOrder;
    if (newPath != null)
      json['newPath'] = newPath;
    if (path != null)
      json['path'] = path;
    return json;
  }

  static List<WikiPageMove> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiPageMove>() : json.map((value) => WikiPageMove.fromJson(value)).toList();
  }

  static Map<String, WikiPageMove> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiPageMove>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiPageMove.fromJson(value));
    }
    return map;
  }
}

