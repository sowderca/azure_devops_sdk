part of azure_devops_sdk.api;

class BuildProcessTemplate {
  
  String description = null;
  
  bool fileExists = null;
  
  int id = null;
  
  String parameters = null;
  
  String serverPath = null;
  
  String supportedReasons = null;
  //enum supportedReasonsEnum {  none,  manual,  individualCI,  batchedCI,  schedule,  scheduleForced,  userCreated,  validateShelveset,  checkInShelveset,  pullRequest,  buildCompletion,  triggered,  all,  };{
  
  String teamProject = null;
  
  String templateType = null;
  //enum templateTypeEnum {  custom,  default,  upgrade,  };{
  
  String url = null;
  
  String version = null;
  BuildProcessTemplate();

  @override
  String toString() {
    return 'BuildProcessTemplate[description=$description, fileExists=$fileExists, id=$id, parameters=$parameters, serverPath=$serverPath, supportedReasons=$supportedReasons, teamProject=$teamProject, templateType=$templateType, url=$url, version=$version, ]';
  }

  BuildProcessTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['fileExists'] == null) {
      fileExists = null;
    } else {
          fileExists = json['fileExists'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['parameters'] == null) {
      parameters = null;
    } else {
          parameters = json['parameters'];
    }
    if (json['serverPath'] == null) {
      serverPath = null;
    } else {
          serverPath = json['serverPath'];
    }
    if (json['supportedReasons'] == null) {
      supportedReasons = null;
    } else {
          supportedReasons = json['supportedReasons'];
    }
    if (json['teamProject'] == null) {
      teamProject = null;
    } else {
          teamProject = json['teamProject'];
    }
    if (json['templateType'] == null) {
      templateType = null;
    } else {
          templateType = json['templateType'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (fileExists != null)
      json['fileExists'] = fileExists;
    if (id != null)
      json['id'] = id;
    if (parameters != null)
      json['parameters'] = parameters;
    if (serverPath != null)
      json['serverPath'] = serverPath;
    if (supportedReasons != null)
      json['supportedReasons'] = supportedReasons;
    if (teamProject != null)
      json['teamProject'] = teamProject;
    if (templateType != null)
      json['templateType'] = templateType;
    if (url != null)
      json['url'] = url;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<BuildProcessTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildProcessTemplate>() : json.map((value) => BuildProcessTemplate.fromJson(value)).toList();
  }

  static Map<String, BuildProcessTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildProcessTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildProcessTemplate.fromJson(value));
    }
    return map;
  }
}

