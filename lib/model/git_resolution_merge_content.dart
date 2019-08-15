part of azure_devops_sdk.api;

class GitResolutionMergeContent {
  
  IdentityRef author = null;
  GitResolutionMergeContent();

  @override
  String toString() {
    return 'GitResolutionMergeContent[author=$author, ]';
  }

  GitResolutionMergeContent.fromJson(Map<String, dynamic> json) {
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

  static List<GitResolutionMergeContent> listFromJson(List<dynamic> json) {
    return json == null ? List<GitResolutionMergeContent>() : json.map((value) => GitResolutionMergeContent.fromJson(value)).toList();
  }

  static Map<String, GitResolutionMergeContent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitResolutionMergeContent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitResolutionMergeContent.fromJson(value));
    }
    return map;
  }
}

