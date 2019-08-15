part of azure_devops_sdk.api;

class GitRecycleBinRepositoryDetails {
  /* Setting to false will undo earlier deletion and restore the repository. */
  bool deleted = null;
  GitRecycleBinRepositoryDetails();

  @override
  String toString() {
    return 'GitRecycleBinRepositoryDetails[deleted=$deleted, ]';
  }

  GitRecycleBinRepositoryDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deleted'] == null) {
      deleted = null;
    } else {
          deleted = json['deleted'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deleted != null)
      json['deleted'] = deleted;
    return json;
  }

  static List<GitRecycleBinRepositoryDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<GitRecycleBinRepositoryDetails>() : json.map((value) => GitRecycleBinRepositoryDetails.fromJson(value)).toList();
  }

  static Map<String, GitRecycleBinRepositoryDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitRecycleBinRepositoryDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitRecycleBinRepositoryDetails.fromJson(value));
    }
    return map;
  }
}

