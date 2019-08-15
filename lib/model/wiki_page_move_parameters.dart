part of azure_devops_sdk.api;

class WikiPageMoveParameters {
  /* New order of the wiki page. */
  int newOrder = null;
  /* New path of the wiki page. */
  String newPath = null;
  /* Current path of the wiki page. */
  String path = null;
  WikiPageMoveParameters();

  @override
  String toString() {
    return 'WikiPageMoveParameters[newOrder=$newOrder, newPath=$newPath, path=$path, ]';
  }

  WikiPageMoveParameters.fromJson(Map<String, dynamic> json) {
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

  static List<WikiPageMoveParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiPageMoveParameters>() : json.map((value) => WikiPageMoveParameters.fromJson(value)).toList();
  }

  static Map<String, WikiPageMoveParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiPageMoveParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiPageMoveParameters.fromJson(value));
    }
    return map;
  }
}

