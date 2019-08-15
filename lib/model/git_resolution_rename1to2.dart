part of azure_devops_sdk.api;

class GitResolutionRename1to2 {
  
  IdentityRef author = null;
  GitResolutionRename1to2();

  @override
  String toString() {
    return 'GitResolutionRename1to2[author=$author, ]';
  }

  GitResolutionRename1to2.fromJson(Map<String, dynamic> json) {
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

  static List<GitResolutionRename1to2> listFromJson(List<dynamic> json) {
    return json == null ? List<GitResolutionRename1to2>() : json.map((value) => GitResolutionRename1to2.fromJson(value)).toList();
  }

  static Map<String, GitResolutionRename1to2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitResolutionRename1to2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitResolutionRename1to2.fromJson(value));
    }
    return map;
  }
}

