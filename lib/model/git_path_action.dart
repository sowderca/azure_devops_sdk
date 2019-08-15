part of azure_devops_sdk.api;

class GitPathAction {
  
  String action = null;
  //enum actionEnum {  none,  edit,  delete,  add,  rename,  };{
  
  String base64Content = null;
  
  String path = null;
  
  String rawTextContent = null;
  
  String targetPath = null;
  GitPathAction();

  @override
  String toString() {
    return 'GitPathAction[action=$action, base64Content=$base64Content, path=$path, rawTextContent=$rawTextContent, targetPath=$targetPath, ]';
  }

  GitPathAction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['action'] == null) {
      action = null;
    } else {
          action = json['action'];
    }
    if (json['base64Content'] == null) {
      base64Content = null;
    } else {
          base64Content = json['base64Content'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['rawTextContent'] == null) {
      rawTextContent = null;
    } else {
          rawTextContent = json['rawTextContent'];
    }
    if (json['targetPath'] == null) {
      targetPath = null;
    } else {
          targetPath = json['targetPath'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (action != null)
      json['action'] = action;
    if (base64Content != null)
      json['base64Content'] = base64Content;
    if (path != null)
      json['path'] = path;
    if (rawTextContent != null)
      json['rawTextContent'] = rawTextContent;
    if (targetPath != null)
      json['targetPath'] = targetPath;
    return json;
  }

  static List<GitPathAction> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPathAction>() : json.map((value) => GitPathAction.fromJson(value)).toList();
  }

  static Map<String, GitPathAction> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPathAction>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPathAction.fromJson(value));
    }
    return map;
  }
}

