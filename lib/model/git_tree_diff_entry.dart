part of azure_devops_sdk.api;

class GitTreeDiffEntry {
  /* SHA1 hash of the object in the base tree, if it exists. Will be null in case of adds. */
  String baseObjectId = null;
  /* Type of change that affected this entry. */
  String changeType = null;
  //enum changeTypeEnum {  none,  add,  edit,  encoding,  rename,  delete,  undelete,  branch,  merge,  lock,  rollback,  sourceRename,  targetRename,  property,  all,  };{
  /* Object type of the tree entry. Blob, Tree or Commit(\"submodule\") */
  String objectType = null;
  //enum objectTypeEnum {  bad,  commit,  tree,  blob,  tag,  ext2,  ofsDelta,  refDelta,  };{
  /* Relative path in base and target trees. */
  String path = null;
  /* SHA1 hash of the object in the target tree, if it exists. Will be null in case of deletes. */
  String targetObjectId = null;
  GitTreeDiffEntry();

  @override
  String toString() {
    return 'GitTreeDiffEntry[baseObjectId=$baseObjectId, changeType=$changeType, objectType=$objectType, path=$path, targetObjectId=$targetObjectId, ]';
  }

  GitTreeDiffEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['baseObjectId'] == null) {
      baseObjectId = null;
    } else {
          baseObjectId = json['baseObjectId'];
    }
    if (json['changeType'] == null) {
      changeType = null;
    } else {
          changeType = json['changeType'];
    }
    if (json['objectType'] == null) {
      objectType = null;
    } else {
          objectType = json['objectType'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['targetObjectId'] == null) {
      targetObjectId = null;
    } else {
          targetObjectId = json['targetObjectId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (baseObjectId != null)
      json['baseObjectId'] = baseObjectId;
    if (changeType != null)
      json['changeType'] = changeType;
    if (objectType != null)
      json['objectType'] = objectType;
    if (path != null)
      json['path'] = path;
    if (targetObjectId != null)
      json['targetObjectId'] = targetObjectId;
    return json;
  }

  static List<GitTreeDiffEntry> listFromJson(List<dynamic> json) {
    return json == null ? List<GitTreeDiffEntry>() : json.map((value) => GitTreeDiffEntry.fromJson(value)).toList();
  }

  static Map<String, GitTreeDiffEntry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitTreeDiffEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitTreeDiffEntry.fromJson(value));
    }
    return map;
  }
}

