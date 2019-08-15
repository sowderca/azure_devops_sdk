part of azure_devops_sdk.api;

class GitLastChangeTreeItems {
  /* The list of commits referenced by Items, if they were requested. */
  List<GitCommitRef> commits = [];
  /* The last change of items. */
  List<GitLastChangeItem> items = [];
  /* The last explored time, in case the result is not comprehensive. Null otherwise. */
  DateTime lastExploredTime = null;
  GitLastChangeTreeItems();

  @override
  String toString() {
    return 'GitLastChangeTreeItems[commits=$commits, items=$items, lastExploredTime=$lastExploredTime, ]';
  }

  GitLastChangeTreeItems.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['commits'] == null) {
      commits = null;
    } else {
      commits = GitCommitRef.listFromJson(json['commits']);
    }
    if (json['items'] == null) {
      items = null;
    } else {
      items = GitLastChangeItem.listFromJson(json['items']);
    }
    if (json['lastExploredTime'] == null) {
      lastExploredTime = null;
    } else {
      lastExploredTime = DateTime.parse(json['lastExploredTime']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (commits != null)
      json['commits'] = commits;
    if (items != null)
      json['items'] = items;
    if (lastExploredTime != null)
      json['lastExploredTime'] = lastExploredTime == null ? null : lastExploredTime.toUtc().toIso8601String();
    return json;
  }

  static List<GitLastChangeTreeItems> listFromJson(List<dynamic> json) {
    return json == null ? List<GitLastChangeTreeItems>() : json.map((value) => GitLastChangeTreeItems.fromJson(value)).toList();
  }

  static Map<String, GitLastChangeTreeItems> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitLastChangeTreeItems>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitLastChangeTreeItems.fromJson(value));
    }
    return map;
  }
}

