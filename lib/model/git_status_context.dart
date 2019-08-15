part of azure_devops_sdk.api;

class GitStatusContext {
  /* Genre of the status. Typically name of the service/tool generating the status, can be empty. */
  String genre = null;
  /* Name identifier of the status, cannot be null or empty. */
  String name = null;
  GitStatusContext();

  @override
  String toString() {
    return 'GitStatusContext[genre=$genre, name=$name, ]';
  }

  GitStatusContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['genre'] == null) {
      genre = null;
    } else {
          genre = json['genre'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (genre != null)
      json['genre'] = genre;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<GitStatusContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GitStatusContext>() : json.map((value) => GitStatusContext.fromJson(value)).toList();
  }

  static Map<String, GitStatusContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitStatusContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitStatusContext.fromJson(value));
    }
    return map;
  }
}

