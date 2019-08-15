part of azure_devops_sdk.api;

class GitMerge {
  /* Comment or message of the commit. */
  String comment = null;
  /* An enumeration of the parent commit IDs for the merge  commit. */
  List<String> parents = [];
  GitMerge();

  @override
  String toString() {
    return 'GitMerge[comment=$comment, parents=$parents, ]';
  }

  GitMerge.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['parents'] == null) {
      parents = null;
    } else {
      parents = (json['parents'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
    if (parents != null)
      json['parents'] = parents;
    return json;
  }

  static List<GitMerge> listFromJson(List<dynamic> json) {
    return json == null ? List<GitMerge>() : json.map((value) => GitMerge.fromJson(value)).toList();
  }

  static Map<String, GitMerge> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitMerge>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitMerge.fromJson(value));
    }
    return map;
  }
}

