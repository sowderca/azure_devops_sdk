part of azure_devops_sdk.api;

class TfvcStatistics {
  /* Id of the last changeset the stats are based on. */
  int changesetId = null;
  /* Count of files at the requested scope. */
  int fileCountTotal = null;
  TfvcStatistics();

  @override
  String toString() {
    return 'TfvcStatistics[changesetId=$changesetId, fileCountTotal=$fileCountTotal, ]';
  }

  TfvcStatistics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changesetId'] == null) {
      changesetId = null;
    } else {
          changesetId = json['changesetId'];
    }
    if (json['fileCountTotal'] == null) {
      fileCountTotal = null;
    } else {
          fileCountTotal = json['fileCountTotal'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changesetId != null)
      json['changesetId'] = changesetId;
    if (fileCountTotal != null)
      json['fileCountTotal'] = fileCountTotal;
    return json;
  }

  static List<TfvcStatistics> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcStatistics>() : json.map((value) => TfvcStatistics.fromJson(value)).toList();
  }

  static Map<String, TfvcStatistics> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcStatistics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcStatistics.fromJson(value));
    }
    return map;
  }
}

