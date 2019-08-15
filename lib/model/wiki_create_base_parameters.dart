part of azure_devops_sdk.api;

class WikiCreateBaseParameters {
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
  WikiCreateBaseParameters();

  @override
  String toString() {
    return 'WikiCreateBaseParameters[mappedPath=$mappedPath, name=$name, projectId=$projectId, repositoryId=$repositoryId, type=$type, ]';
  }

  WikiCreateBaseParameters.fromJson(Map<String, dynamic> json) {
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

  static List<WikiCreateBaseParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiCreateBaseParameters>() : json.map((value) => WikiCreateBaseParameters.fromJson(value)).toList();
  }

  static Map<String, WikiCreateBaseParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiCreateBaseParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiCreateBaseParameters.fromJson(value));
    }
    return map;
  }
}

