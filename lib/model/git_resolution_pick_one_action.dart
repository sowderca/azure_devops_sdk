part of azure_devops_sdk.api;

class GitResolutionPickOneAction {
  
  IdentityRef author = null;
  GitResolutionPickOneAction();

  @override
  String toString() {
    return 'GitResolutionPickOneAction[author=$author, ]';
  }

  GitResolutionPickOneAction.fromJson(Map<String, dynamic> json) {
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

  static List<GitResolutionPickOneAction> listFromJson(List<dynamic> json) {
    return json == null ? List<GitResolutionPickOneAction>() : json.map((value) => GitResolutionPickOneAction.fromJson(value)).toList();
  }

  static Map<String, GitResolutionPickOneAction> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitResolutionPickOneAction>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitResolutionPickOneAction.fromJson(value));
    }
    return map;
  }
}

