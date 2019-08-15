part of azure_devops_sdk.api;

class TfvcMergeSource {
  /* Indicates if this a rename source. If false, it is a merge source. */
  bool isRename = null;
  /* The server item of the merge source */
  String serverItem = null;
  /* Start of the version range */
  int versionFrom = null;
  /* End of the version range */
  int versionTo = null;
  TfvcMergeSource();

  @override
  String toString() {
    return 'TfvcMergeSource[isRename=$isRename, serverItem=$serverItem, versionFrom=$versionFrom, versionTo=$versionTo, ]';
  }

  TfvcMergeSource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isRename'] == null) {
      isRename = null;
    } else {
          isRename = json['isRename'];
    }
    if (json['serverItem'] == null) {
      serverItem = null;
    } else {
          serverItem = json['serverItem'];
    }
    if (json['versionFrom'] == null) {
      versionFrom = null;
    } else {
          versionFrom = json['versionFrom'];
    }
    if (json['versionTo'] == null) {
      versionTo = null;
    } else {
          versionTo = json['versionTo'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isRename != null)
      json['isRename'] = isRename;
    if (serverItem != null)
      json['serverItem'] = serverItem;
    if (versionFrom != null)
      json['versionFrom'] = versionFrom;
    if (versionTo != null)
      json['versionTo'] = versionTo;
    return json;
  }

  static List<TfvcMergeSource> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcMergeSource>() : json.map((value) => TfvcMergeSource.fromJson(value)).toList();
  }

  static Map<String, TfvcMergeSource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcMergeSource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcMergeSource.fromJson(value));
    }
    return map;
  }
}

