part of azure_devops_sdk.api;

class GitRefUpdate {
  
  bool isLocked = null;
  
  String name = null;
  
  String newObjectId = null;
  
  String oldObjectId = null;
  
  String repositoryId = null;
  GitRefUpdate();

  @override
  String toString() {
    return 'GitRefUpdate[isLocked=$isLocked, name=$name, newObjectId=$newObjectId, oldObjectId=$oldObjectId, repositoryId=$repositoryId, ]';
  }

  GitRefUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isLocked'] == null) {
      isLocked = null;
    } else {
          isLocked = json['isLocked'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['newObjectId'] == null) {
      newObjectId = null;
    } else {
          newObjectId = json['newObjectId'];
    }
    if (json['oldObjectId'] == null) {
      oldObjectId = null;
    } else {
          oldObjectId = json['oldObjectId'];
    }
    if (json['repositoryId'] == null) {
      repositoryId = null;
    } else {
          repositoryId = json['repositoryId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isLocked != null)
      json['isLocked'] = isLocked;
    if (name != null)
      json['name'] = name;
    if (newObjectId != null)
      json['newObjectId'] = newObjectId;
    if (oldObjectId != null)
      json['oldObjectId'] = oldObjectId;
    if (repositoryId != null)
      json['repositoryId'] = repositoryId;
    return json;
  }

  static List<GitRefUpdate> listFromJson(List<dynamic> json) {
    return json == null ? List<GitRefUpdate>() : json.map((value) => GitRefUpdate.fromJson(value)).toList();
  }

  static Map<String, GitRefUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitRefUpdate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitRefUpdate.fromJson(value));
    }
    return map;
  }
}

