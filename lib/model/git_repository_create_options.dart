part of azure_devops_sdk.api;

class GitRepositoryCreateOptions {
  
  String name = null;
  
  GitRepositoryRef parentRepository = null;
  
  TeamProjectReference project = null;
  GitRepositoryCreateOptions();

  @override
  String toString() {
    return 'GitRepositoryCreateOptions[name=$name, parentRepository=$parentRepository, project=$project, ]';
  }

  GitRepositoryCreateOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['parentRepository'] == null) {
      parentRepository = null;
    } else {
      parentRepository = GitRepositoryRef.fromJson(json['parentRepository']);
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = TeamProjectReference.fromJson(json['project']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (parentRepository != null)
      json['parentRepository'] = parentRepository;
    if (project != null)
      json['project'] = project;
    return json;
  }

  static List<GitRepositoryCreateOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<GitRepositoryCreateOptions>() : json.map((value) => GitRepositoryCreateOptions.fromJson(value)).toList();
  }

  static Map<String, GitRepositoryCreateOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitRepositoryCreateOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitRepositoryCreateOptions.fromJson(value));
    }
    return map;
  }
}

