part of azure_devops_sdk.api;

class DeploymentApprovalCompletedEvent {
  
  ReleaseApproval approval = null;
  
  ProjectReference project = null;
  
  Release release = null;
  DeploymentApprovalCompletedEvent();

  @override
  String toString() {
    return 'DeploymentApprovalCompletedEvent[approval=$approval, project=$project, release=$release, ]';
  }

  DeploymentApprovalCompletedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['approval'] == null) {
      approval = null;
    } else {
      approval = ReleaseApproval.fromJson(json['approval']);
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
    if (approval != null)
      json['approval'] = approval;
    if (project != null)
      json['project'] = project;
    if (release != null)
      json['release'] = release;
    return json;
  }

  static List<DeploymentApprovalCompletedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentApprovalCompletedEvent>() : json.map((value) => DeploymentApprovalCompletedEvent.fromJson(value)).toList();
  }

  static Map<String, DeploymentApprovalCompletedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentApprovalCompletedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentApprovalCompletedEvent.fromJson(value));
    }
    return map;
  }
}

