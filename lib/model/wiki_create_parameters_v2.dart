part of azure_devops_sdk.api;

class WikiCreateParametersV2 {
  /* Folder path inside repository which is shown as Wiki. Not required for ProjectWiki type. */
  String mappedPath = null;
  /* Wiki name. */
  String name = null;
  /* ID of the project in which the wiki is to be created. */
  String projectId = null;
  /* ID of the git repository that backs up the wiki. Not required for ProjectWiki type. */
  String repositoryId = null;
  /* Type of the wiki. */
  String type = null;
  //enum typeEnum {  projectWiki,  codeWiki,  };{
  WikiCreateParametersV2();

  @override
  String toString() {
    return 'WikiCreateParametersV2[mappedPath=$mappedPath, name=$name, projectId=$projectId, repositoryId=$repositoryId, type=$type, ]';
  }

  WikiCreateParametersV2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['mappedPath'] == null) {
      mappedPath = null;
    } else {
          mappedPath = json['mappedPath'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['repositoryId'] == null) {
      repositoryId = null;
    } else {
          repositoryId = json['repositoryId'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mappedPath != null)
      json['mappedPath'] = mappedPath;
    if (name != null)
      json['name'] = name;
    if (projectId != null)
      json['projectId'] = projectId;
    if (repositoryId != null)
      json['repositoryId'] = repositoryId;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<WikiCreateParametersV2> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiCreateParametersV2>() : json.map((value) => WikiCreateParametersV2.fromJson(value)).toList();
  }

  static Map<String, WikiCreateParametersV2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiCreateParametersV2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiCreateParametersV2.fromJson(value));
    }
    return map;
  }
}

