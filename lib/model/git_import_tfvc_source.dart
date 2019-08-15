part of azure_devops_sdk.api;

class GitImportTfvcSource {
  /* Set true to import History, false otherwise */
  bool importHistory = null;
  /* Get history for last n days (max allowed value is 180 days) */
  int importHistoryDurationInDays = null;
  /* Path which we want to import (this can be copied from Path Control in Explorer) */
  String path = null;
  GitImportTfvcSource();

  @override
  String toString() {
    return 'GitImportTfvcSource[importHistory=$importHistory, importHistoryDurationInDays=$importHistoryDurationInDays, path=$path, ]';
  }

  GitImportTfvcSource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['importHistory'] == null) {
      importHistory = null;
    } else {
          importHistory = json['importHistory'];
    }
    if (json['importHistoryDurationInDays'] == null) {
      importHistoryDurationInDays = null;
    } else {
          importHistoryDurationInDays = json['importHistoryDurationInDays'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (importHistory != null)
      json['importHistory'] = importHistory;
    if (importHistoryDurationInDays != null)
      json['importHistoryDurationInDays'] = importHistoryDurationInDays;
    if (path != null)
      json['path'] = path;
    return json;
  }

  static List<GitImportTfvcSource> listFromJson(List<dynamic> json) {
    return json == null ? List<GitImportTfvcSource>() : json.map((value) => GitImportTfvcSource.fromJson(value)).toList();
  }

  static Map<String, GitImportTfvcSource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitImportTfvcSource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitImportTfvcSource.fromJson(value));
    }
    return map;
  }
}

