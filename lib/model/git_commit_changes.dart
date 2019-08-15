part of azure_devops_sdk.api;

class GitCommitChanges {
  
  ChangeCountDictionary changeCounts = null;
  
  List<GitChange> changes = [];
  GitCommitChanges();

  @override
  String toString() {
    return 'GitCommitChanges[changeCounts=$changeCounts, changes=$changes, ]';
  }

  GitCommitChanges.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changeCounts'] == null) {
      changeCounts = null;
    } else {
      changeCounts = ChangeCountDictionary.fromJson(json['changeCounts']);
    }
    if (json['changes'] == null) {
      changes = null;
    } else {
      changes = GitChange.listFromJson(json['changes']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changeCounts != null)
      json['changeCounts'] = changeCounts;
    if (changes != null)
      json['changes'] = changes;
    return json;
  }

  static List<GitCommitChanges> listFromJson(List<dynamic> json) {
    return json == null ? List<GitCommitChanges>() : json.map((value) => GitCommitChanges.fromJson(value)).toList();
  }

  static Map<String, GitCommitChanges> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitCommitChanges>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitCommitChanges.fromJson(value));
    }
    return map;
  }
}

