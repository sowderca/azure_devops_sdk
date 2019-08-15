part of azure_devops_sdk.api;

class TfvcChangesetsRequestData {
  /* List of changeset Ids. */
  List<int> changesetIds = [];
  /* Length of the comment. */
  int commentLength = null;
  /* Whether to include the _links field on the shallow references */
  bool includeLinks = null;
  TfvcChangesetsRequestData();

  @override
  String toString() {
    return 'TfvcChangesetsRequestData[changesetIds=$changesetIds, commentLength=$commentLength, includeLinks=$includeLinks, ]';
  }

  TfvcChangesetsRequestData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changesetIds'] == null) {
      changesetIds = null;
    } else {
      changesetIds = (json['changesetIds'] as List).cast<int>();
    }
    if (json['commentLength'] == null) {
      commentLength = null;
    } else {
          commentLength = json['commentLength'];
    }
    if (json['includeLinks'] == null) {
      includeLinks = null;
    } else {
          includeLinks = json['includeLinks'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changesetIds != null)
      json['changesetIds'] = changesetIds;
    if (commentLength != null)
      json['commentLength'] = commentLength;
    if (includeLinks != null)
      json['includeLinks'] = includeLinks;
    return json;
  }

  static List<TfvcChangesetsRequestData> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcChangesetsRequestData>() : json.map((value) => TfvcChangesetsRequestData.fromJson(value)).toList();
  }

  static Map<String, TfvcChangesetsRequestData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcChangesetsRequestData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcChangesetsRequestData.fromJson(value));
    }
    return map;
  }
}

