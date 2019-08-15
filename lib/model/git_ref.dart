part of azure_devops_sdk.api;

class GitRef {
  
  ReferenceLinks links = null;
  
  IdentityRef creator = null;
  
  bool isLocked = null;
  
  IdentityRef isLockedBy = null;
  
  String name = null;
  
  String objectId = null;
  
  String peeledObjectId = null;
  
  List<GitStatus> statuses = [];
  
  String url = null;
  GitRef();

  @override
  String toString() {
    return 'GitRef[links=$links, creator=$creator, isLocked=$isLocked, isLockedBy=$isLockedBy, name=$name, objectId=$objectId, peeledObjectId=$peeledObjectId, statuses=$statuses, url=$url, ]';
  }

  GitRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['creator'] == null) {
      creator = null;
    } else {
      creator = IdentityRef.fromJson(json['creator']);
    }
    if (json['isLocked'] == null) {
      isLocked = null;
    } else {
          isLocked = json['isLocked'];
    }
    if (json['isLockedBy'] == null) {
      isLockedBy = null;
    } else {
      isLockedBy = IdentityRef.fromJson(json['isLockedBy']);
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
    if (json['peeledObjectId'] == null) {
      peeledObjectId = null;
    } else {
          peeledObjectId = json['peeledObjectId'];
    }
    if (json['statuses'] == null) {
      statuses = null;
    } else {
      statuses = GitStatus.listFromJson(json['statuses']);
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
    if (creator != null)
      json['creator'] = creator;
    if (isLocked != null)
      json['isLocked'] = isLocked;
    if (isLockedBy != null)
      json['isLockedBy'] = isLockedBy;
    if (name != null)
      json['name'] = name;
    if (objectId != null)
      json['objectId'] = objectId;
    if (peeledObjectId != null)
      json['peeledObjectId'] = peeledObjectId;
    if (statuses != null)
      json['statuses'] = statuses;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitRef> listFromJson(List<dynamic> json) {
    return json == null ? List<GitRef>() : json.map((value) => GitRef.fromJson(value)).toList();
  }

  static Map<String, GitRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitRef.fromJson(value));
    }
    return map;
  }
}

