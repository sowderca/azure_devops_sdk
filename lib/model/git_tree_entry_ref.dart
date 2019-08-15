part of azure_devops_sdk.api;

class GitTreeEntryRef {
  /* Blob or tree */
  String gitObjectType = null;
  //enum gitObjectTypeEnum {  bad,  commit,  tree,  blob,  tag,  ext2,  ofsDelta,  refDelta,  };{
  /* Mode represented as octal string */
  String mode = null;
  /* SHA1 hash of git object */
  String objectId = null;
  /* Path relative to parent tree object */
  String relativePath = null;
  /* Size of content */
  int size = null;
  /* url to retrieve tree or blob */
  String url = null;
  GitTreeEntryRef();

  @override
  String toString() {
    return 'GitTreeEntryRef[gitObjectType=$gitObjectType, mode=$mode, objectId=$objectId, relativePath=$relativePath, size=$size, url=$url, ]';
  }

  GitTreeEntryRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['gitObjectType'] == null) {
      gitObjectType = null;
    } else {
          gitObjectType = json['gitObjectType'];
    }
    if (json['mode'] == null) {
      mode = null;
    } else {
          mode = json['mode'];
    }
    if (json['objectId'] == null) {
      objectId = null;
    } else {
          objectId = json['objectId'];
    }
    if (json['relativePath'] == null) {
      relativePath = null;
    } else {
          relativePath = json['relativePath'];
    }
    if (json['size'] == null) {
      size = null;
    } else {
          size = json['size'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (gitObjectType != null)
      json['gitObjectType'] = gitObjectType;
    if (mode != null)
      json['mode'] = mode;
    if (objectId != null)
      json['objectId'] = objectId;
    if (relativePath != null)
      json['relativePath'] = relativePath;
    if (size != null)
      json['size'] = size;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitTreeEntryRef> listFromJson(List<dynamic> json) {
    return json == null ? List<GitTreeEntryRef>() : json.map((value) => GitTreeEntryRef.fromJson(value)).toList();
  }

  static Map<String, GitTreeEntryRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitTreeEntryRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitTreeEntryRef.fromJson(value));
    }
    return map;
  }
}

