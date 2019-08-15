part of azure_devops_sdk.api;

class GitResolution {
  
  IdentityRef author = null;
  GitResolution();

  @override
  String toString() {
    return 'GitResolution[author=$author, ]';
  }

  GitResolution.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['author'] == null) {
      author = null;
    } else {
      author = IdentityRef.fromJson(json['author']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (author != null)
      json['author'] = author;
    return json;
  }

  static List<GitResolution> listFromJson(List<dynamic> json) {
    return json == null ? List<GitResolution>() : json.map((value) => GitResolution.fromJson(value)).toList();
  }

  static Map<String, GitResolution> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitResolution>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitResolution.fromJson(value));
    }
    return map;
  }
}

