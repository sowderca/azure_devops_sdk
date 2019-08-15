part of azure_devops_sdk.api;

class DeploymentManualInterventionPendingEvent {
  
  Deployment deployment = null;
  
  List<String> emailRecipients = [];
  
  IdentityRef environmentOwner = null;
  
  ManualIntervention manualIntervention = null;
  
  ProjectReference project = null;
  
  Release release = null;
  DeploymentManualInterventionPendingEvent();

  @override
  String toString() {
    return 'DeploymentManualInterventionPendingEvent[deployment=$deployment, emailRecipients=$emailRecipients, environmentOwner=$environmentOwner, manualIntervention=$manualIntervention, project=$project, release=$release, ]';
  }

  DeploymentManualInterventionPendingEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deployment'] == null) {
      deployment = null;
    } else {
      deployment = Deployment.fromJson(json['deployment']);
    }
    if (json['emailRecipients'] == null) {
      emailRecipients = null;
    } else {
      emailRecipients = (json['emailRecipients'] as List).cast<String>();
    }
    if (json['environmentOwner'] == null) {
      environmentOwner = null;
    } else {
      environmentOwner = IdentityRef.fromJson(json['environmentOwner']);
    }
    if (json['manualIntervention'] == null) {
      manualIntervention = null;
    } else {
      manualIntervention = ManualIntervention.fromJson(json['manualIntervention']);
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
    if (deployment != null)
      json['deployment'] = deployment;
    if (emailRecipients != null)
      json['emailRecipients'] = emailRecipients;
    if (environmentOwner != null)
      json['environmentOwner'] = environmentOwner;
    if (manualIntervention != null)
      json['manualIntervention'] = manualIntervention;
    if (project != null)
      json['project'] = project;
    if (release != null)
      json['release'] = release;
    return json;
  }

  static List<DeploymentManualInterventionPendingEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentManualInterventionPendingEvent>() : json.map((value) => DeploymentManualInterventionPendingEvent.fromJson(value)).toList();
  }

  static Map<String, DeploymentManualInterventionPendingEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentManualInterventionPendingEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentManualInterventionPendingEvent.fromJson(value));
    }
    return map;
  }
}

