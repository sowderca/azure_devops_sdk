part of azure_devops_sdk.api;

class GitCommitToCreate {
  
  GitRef baseRef = null;
  
  String comment = null;
  
  List<GitPathAction> pathActions = [];
  GitCommitToCreate();

  @override
  String toString() {
    return 'GitCommitToCreate[baseRef=$baseRef, comment=$comment, pathActions=$pathActions, ]';
  }

  GitCommitToCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['baseRef'] == null) {
      baseRef = null;
    } else {
      baseRef = GitRef.fromJson(json['baseRef']);
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['pathActions'] == null) {
      pathActions = null;
    } else {
      pathActions = GitPathAction.listFromJson(json['pathActions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (baseRef != null)
      json['baseRef'] = baseRef;
    if (comment != null)
      json['comment'] = comment;
    if (pathActions != null)
      json['pathActions'] = pathActions;
    return json;
  }

  static List<GitCommitToCreate> listFromJson(List<dynamic> json) {
    return json == null ? List<GitCommitToCreate>() : json.map((value) => GitCommitToCreate.fromJson(value)).toList();
  }

  static Map<String, GitCommitToCreate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitCommitToCreate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitCommitToCreate.fromJson(value));
    }
    return map;
  }
}

