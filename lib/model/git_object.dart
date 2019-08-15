part of azure_devops_sdk.api;

class GitObject {
  /* Object Id (Sha1Id). */
  String objectId = null;
  /* Type of object (Commit, Tree, Blob, Tag) */
  String objectType = null;
  //enum objectTypeEnum {  bad,  commit,  tree,  blob,  tag,  ext2,  ofsDelta,  refDelta,  };{
  GitObject();

  @override
  String toString() {
    return 'GitObject[objectId=$objectId, objectType=$objectType, ]';
  }

  GitObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['objectId'] == null) {
      objectId = null;
    } else {
          objectId = json['objectId'];
    }
    if (json['objectType'] == null) {
      objectType = null;
    } else {
          objectType = json['objectType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (objectId != null)
      json['objectId'] = objectId;
    if (objectType != null)
      json['objectType'] = objectType;
    return json;
  }

  static List<GitObject> listFromJson(List<dynamic> json) {
    return json == null ? List<GitObject>() : json.map((value) => GitObject.fromJson(value)).toList();
  }

  static Map<String, GitObject> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitObject.fromJson(value));
    }
    return map;
  }
}

