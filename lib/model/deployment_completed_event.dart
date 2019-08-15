part of azure_devops_sdk.api;

class DeploymentCompletedEvent {
  
  String comment = null;
  
  Map<String, Object> data = {};
  
  Deployment deployment = null;
  
  ReleaseEnvironment environment = null;
  
  ProjectReference project = null;
  DeploymentCompletedEvent();

  @override
  String toString() {
    return 'DeploymentCompletedEvent[comment=$comment, data=$data, deployment=$deployment, environment=$environment, project=$project, ]';
  }

  DeploymentCompletedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['data'] == null) {
      data = null;
    } else {
      data = Object.mapFromJson(json['data']);
    }
    if (json['deployment'] == null) {
      deployment = null;
    } else {
      deployment = Deployment.fromJson(json['deployment']);
    }
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
    if (data != null)
      json['data'] = data;
    if (deployment != null)
      json['deployment'] = deployment;
    if (environment != null)
      json['environment'] = environment;
    if (project != null)
      json['project'] = project;
    return json;
  }

  static List<DeploymentCompletedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentCompletedEvent>() : json.map((value) => DeploymentCompletedEvent.fromJson(value)).toList();
  }

  static Map<String, DeploymentCompletedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentCompletedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentCompletedEvent.fromJson(value));
    }
    return map;
  }
}

