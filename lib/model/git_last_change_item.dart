part of azure_devops_sdk.api;

class GitLastChangeItem {
  /* Gets or sets the commit Id this item was modified most recently for the provided version. */
  String commitId = null;
  /* Gets or sets the path of the item. */
  String path = null;
  GitLastChangeItem();

  @override
  String toString() {
    return 'GitLastChangeItem[commitId=$commitId, path=$path, ]';
  }

  GitLastChangeItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['commitId'] == null) {
      commitId = null;
    } else {
          commitId = json['commitId'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (commitId != null)
      json['commitId'] = commitId;
    if (path != null)
      json['path'] = path;
    return json;
  }

  static List<GitLastChangeItem> listFromJson(List<dynamic> json) {
    return json == null ? List<GitLastChangeItem>() : json.map((value) => GitLastChangeItem.fromJson(value)).toList();
  }

  static Map<String, GitLastChangeItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitLastChangeItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitLastChangeItem.fromJson(value));
    }
    return map;
  }
}

