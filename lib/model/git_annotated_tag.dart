part of azure_devops_sdk.api;

class GitAnnotatedTag {
  /* The tagging Message */
  String message = null;
  /* The name of the annotated tag. */
  String name = null;
  /* The objectId (Sha1Id) of the tag. */
  String objectId = null;
  
  GitUserDate taggedBy = null;
  
  GitObject taggedObject = null;
  
  String url = null;
  GitAnnotatedTag();

  @override
  String toString() {
    return 'GitAnnotatedTag[message=$message, name=$name, objectId=$objectId, taggedBy=$taggedBy, taggedObject=$taggedObject, url=$url, ]';
  }

  GitAnnotatedTag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['objectId'] == null) {
      objectId = null;
    } else {
          objectId = json['objectId'];
    }
    if (json['taggedBy'] == null) {
      taggedBy = null;
    } else {
      taggedBy = GitUserDate.fromJson(json['taggedBy']);
    }
    if (json['taggedObject'] == null) {
      taggedObject = null;
    } else {
      taggedObject = GitObject.fromJson(json['taggedObject']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (name != null)
      json['name'] = name;
    if (objectId != null)
      json['objectId'] = objectId;
    if (taggedBy != null)
      json['taggedBy'] = taggedBy;
    if (taggedObject != null)
      json['taggedObject'] = taggedObject;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitAnnotatedTag> listFromJson(List<dynamic> json) {
    return json == null ? List<GitAnnotatedTag>() : json.map((value) => GitAnnotatedTag.fromJson(value)).toList();
  }

  static Map<String, GitAnnotatedTag> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitAnnotatedTag>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitAnnotatedTag.fromJson(value));
    }
    return map;
  }
}

