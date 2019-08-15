part of azure_devops_sdk.api;

class GitResolutionPathConflict {
  
  IdentityRef author = null;
  GitResolutionPathConflict();

  @override
  String toString() {
    return 'GitResolutionPathConflict[author=$author, ]';
  }

  GitResolutionPathConflict.fromJson(Map<String, dynamic> json) {
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

  static List<GitResolutionPathConflict> listFromJson(List<dynamic> json) {
    return json == null ? List<GitResolutionPathConflict>() : json.map((value) => GitResolutionPathConflict.fromJson(value)).toList();
  }

  static Map<String, GitResolutionPathConflict> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitResolutionPathConflict>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitResolutionPathConflict.fromJson(value));
    }
    return map;
  }
}

