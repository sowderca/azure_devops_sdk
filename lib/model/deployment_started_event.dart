part of azure_devops_sdk.api;

class DeploymentStartedEvent {
  
  ReleaseEnvironment environment = null;
  
  ProjectReference project = null;
  
  Release release = null;
  DeploymentStartedEvent();

  @override
  String toString() {
    return 'DeploymentStartedEvent[environment=$environment, project=$project, release=$release, ]';
  }

  DeploymentStartedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['environment'] == null) {
      environment = null;
    } else {
      environment = ReleaseEnvironment.fromJson(json['environment']);
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ProjectReference.fromJson(json['project']);
    }
    if (json['release'] == null) {
      release = null;
    } else {
      release = Release.fromJson(json['release']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (environment != null)
      json['environment'] = environment;
    if (project != null)
      json['project'] = project;
    if (release != null)
      json['release'] = release;
    return json;
  }

  static List<DeploymentStartedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentStartedEvent>() : json.map((value) => DeploymentStartedEvent.fromJson(value)).toList();
  }

  static Map<String, DeploymentStartedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentStartedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentStartedEvent.fromJson(value));
    }
    return map;
  }
}

