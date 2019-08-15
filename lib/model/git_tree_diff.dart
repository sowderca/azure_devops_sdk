part of azure_devops_sdk.api;

class GitTreeDiff {
  /* ObjectId of the base tree of this diff. */
  String baseTreeId = null;
  /* List of tree entries that differ between the base and target tree.  Renames and object type changes are returned as a delete for the old object and add for the new object.  If a continuation token is returned in the response header, some tree entries are yet to be processed and may yeild more diff entries. If the continuation token is not returned all the diff entries have been included in this response. */
  List<GitTreeDiffEntry> diffEntries = [];
  /* ObjectId of the target tree of this diff. */
  String targetTreeId = null;
  /* REST Url to this resource. */
  String url = null;
  GitTreeDiff();

  @override
  String toString() {
    return 'GitTreeDiff[baseTreeId=$baseTreeId, diffEntries=$diffEntries, targetTreeId=$targetTreeId, url=$url, ]';
  }

  GitTreeDiff.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['baseTreeId'] == null) {
      baseTreeId = null;
    } else {
          baseTreeId = json['baseTreeId'];
    }
    if (json['diffEntries'] == null) {
      diffEntries = null;
    } else {
      diffEntries = GitTreeDiffEntry.listFromJson(json['diffEntries']);
    }
    if (json['targetTreeId'] == null) {
      targetTreeId = null;
    } else {
          targetTreeId = json['targetTreeId'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (baseTreeId != null)
      json['baseTreeId'] = baseTreeId;
    if (diffEntries != null)
      json['diffEntries'] = diffEntries;
    if (targetTreeId != null)
      json['targetTreeId'] = targetTreeId;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitTreeDiff> listFromJson(List<dynamic> json) {
    return json == null ? List<GitTreeDiff>() : json.map((value) => GitTreeDiff.fromJson(value)).toList();
  }

  static Map<String, GitTreeDiff> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitTreeDiff>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitTreeDiff.fromJson(value));
    }
    return map;
  }
}

