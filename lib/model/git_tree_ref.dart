part of azure_devops_sdk.api;

class GitTreeRef {
  
  ReferenceLinks links = null;
  /* SHA1 hash of git object */
  String objectId = null;
  /* Sum of sizes of all children */
  int size = null;
  /* Blobs and trees under this tree */
  List<GitTreeEntryRef> treeEntries = [];
  /* Url to tree */
  String url = null;
  GitTreeRef();

  @override
  String toString() {
    return 'GitTreeRef[links=$links, objectId=$objectId, size=$size, treeEntries=$treeEntries, url=$url, ]';
  }

  GitTreeRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['objectId'] == null) {
      objectId = null;
    } else {
          objectId = json['objectId'];
    }
    if (json['size'] == null) {
      size = null;
    } else {
          size = json['size'];
    }
    if (json['treeEntries'] == null) {
      treeEntries = null;
    } else {
      treeEntries = GitTreeEntryRef.listFromJson(json['treeEntries']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (objectId != null)
      json['objectId'] = objectId;
    if (size != null)
      json['size'] = size;
    if (treeEntries != null)
      json['treeEntries'] = treeEntries;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitTreeRef> listFromJson(List<dynamic> json) {
    return json == null ? List<GitTreeRef>() : json.map((value) => GitTreeRef.fromJson(value)).toList();
  }

  static Map<String, GitTreeRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitTreeRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitTreeRef.fromJson(value));
    }
    return map;
  }
}

