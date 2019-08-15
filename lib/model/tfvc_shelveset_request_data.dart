part of azure_devops_sdk.api;

class TfvcShelvesetRequestData {
  /* Whether to include policyOverride and notes Only applies when requesting a single deep shelveset */
  bool includeDetails = null;
  /* Whether to include the _links field on the shallow references. Does not apply when requesting a single deep shelveset object. Links will always be included in the deep shelveset. */
  bool includeLinks = null;
  /* Whether to include workItems */
  bool includeWorkItems = null;
  /* Max number of changes to include */
  int maxChangeCount = null;
  /* Max length of comment */
  int maxCommentLength = null;
  /* Shelveset's name */
  String name = null;
  /* Owner's ID. Could be a name or a guid. */
  String owner = null;
  TfvcShelvesetRequestData();

  @override
  String toString() {
    return 'TfvcShelvesetRequestData[includeDetails=$includeDetails, includeLinks=$includeLinks, includeWorkItems=$includeWorkItems, maxChangeCount=$maxChangeCount, maxCommentLength=$maxCommentLength, name=$name, owner=$owner, ]';
  }

  TfvcShelvesetRequestData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['includeDetails'] == null) {
      includeDetails = null;
    } else {
          includeDetails = json['includeDetails'];
    }
    if (json['includeLinks'] == null) {
      includeLinks = null;
    } else {
          includeLinks = json['includeLinks'];
    }
    if (json['includeWorkItems'] == null) {
      includeWorkItems = null;
    } else {
          includeWorkItems = json['includeWorkItems'];
    }
    if (json['maxChangeCount'] == null) {
      maxChangeCount = null;
    } else {
          maxChangeCount = json['maxChangeCount'];
    }
    if (json['maxCommentLength'] == null) {
      maxCommentLength = null;
    } else {
          maxCommentLength = json['maxCommentLength'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
          owner = json['owner'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (includeDetails != null)
      json['includeDetails'] = includeDetails;
    if (includeLinks != null)
      json['includeLinks'] = includeLinks;
    if (includeWorkItems != null)
      json['includeWorkItems'] = includeWorkItems;
    if (maxChangeCount != null)
      json['maxChangeCount'] = maxChangeCount;
    if (maxCommentLength != null)
      json['maxCommentLength'] = maxCommentLength;
    if (name != null)
      json['name'] = name;
    if (owner != null)
      json['owner'] = owner;
    return json;
  }

  static List<TfvcShelvesetRequestData> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcShelvesetRequestData>() : json.map((value) => TfvcShelvesetRequestData.fromJson(value)).toList();
  }

  static Map<String, TfvcShelvesetRequestData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcShelvesetRequestData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcShelvesetRequestData.fromJson(value));
    }
    return map;
  }
}

