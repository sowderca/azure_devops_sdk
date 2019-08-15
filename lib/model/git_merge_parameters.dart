part of azure_devops_sdk.api;

class GitMergeParameters {
  /* Comment or message of the commit. */
  String comment = null;
  /* An enumeration of the parent commit IDs for the merge  commit. */
  List<String> parents = [];
  GitMergeParameters();

  @override
  String toString() {
    return 'GitMergeParameters[comment=$comment, parents=$parents, ]';
  }

  GitMergeParameters.fromJson(Map<String, dynamic> json) {
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

  static List<GitMergeParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<GitMergeParameters>() : json.map((value) => GitMergeParameters.fromJson(value)).toList();
  }

  static Map<String, GitMergeParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitMergeParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitMergeParameters.fromJson(value));
    }
    return map;
  }
}

