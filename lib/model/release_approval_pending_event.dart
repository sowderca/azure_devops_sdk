part of azure_devops_sdk.api;

class ReleaseApprovalPendingEvent {
  
  ReleaseApproval approval = null;
  
  ApprovalOptions approvalOptions = null;
  
  List<ReleaseApproval> completedApprovals = [];
  
  String definitionName = null;
  
  Deployment deployment = null;
  
  int environmentId = null;
  
  String environmentName = null;
  
  List<ReleaseEnvironment> environments = [];
  
  bool isMultipleRankApproval = null;
  
  List<ReleaseApproval> pendingApprovals = [];
  
  String releaseCreator = null;
  
  String releaseName = null;
  
  String title = null;
  
  String webAccessUri = null;
  ReleaseApprovalPendingEvent();

  @override
  String toString() {
    return 'ReleaseApprovalPendingEvent[approval=$approval, approvalOptions=$approvalOptions, completedApprovals=$completedApprovals, definitionName=$definitionName, deployment=$deployment, environmentId=$environmentId, environmentName=$environmentName, environments=$environments, isMultipleRankApproval=$isMultipleRankApproval, pendingApprovals=$pendingApprovals, releaseCreator=$releaseCreator, releaseName=$releaseName, title=$title, webAccessUri=$webAccessUri, ]';
  }

  ReleaseApprovalPendingEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['approval'] == null) {
      approval = null;
    } else {
      approval = ReleaseApproval.fromJson(json['approval']);
    }
    if (json['approvalOptions'] == null) {
      approvalOptions = null;
    } else {
      approvalOptions = ApprovalOptions.fromJson(json['approvalOptions']);
    }
    if (json['completedApprovals'] == null) {
      completedApprovals = null;
    } else {
      completedApprovals = ReleaseApproval.listFromJson(json['completedApprovals']);
    }
    if (json['definitionName'] == null) {
      definitionName = null;
    } else {
          definitionName = json['definitionName'];
    }
    if (json['deployment'] == null) {
      deployment = null;
    } else {
      deployment = Deployment.fromJson(json['deployment']);
    }
    if (json['environmentId'] == null) {
      environmentId = null;
    } else {
          environmentId = json['environmentId'];
    }
    if (json['environmentName'] == null) {
      environmentName = null;
    } else {
          environmentName = json['environmentName'];
    }
    if (json['environments'] == null) {
      environments = null;
    } else {
      environments = ReleaseEnvironment.listFromJson(json['environments']);
    }
    if (json['isMultipleRankApproval'] == null) {
      isMultipleRankApproval = null;
    } else {
          isMultipleRankApproval = json['isMultipleRankApproval'];
    }
    if (json['pendingApprovals'] == null) {
      pendingApprovals = null;
    } else {
      pendingApprovals = ReleaseApproval.listFromJson(json['pendingApprovals']);
    }
    if (json['releaseCreator'] == null) {
      releaseCreator = null;
    } else {
          releaseCreator = json['releaseCreator'];
    }
    if (json['releaseName'] == null) {
      releaseName = null;
    } else {
          releaseName = json['releaseName'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['webAccessUri'] == null) {
      webAccessUri = null;
    } else {
          webAccessUri = json['webAccessUri'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (approval != null)
      json['approval'] = approval;
    if (approvalOptions != null)
      json['approvalOptions'] = approvalOptions;
    if (completedApprovals != null)
      json['completedApprovals'] = completedApprovals;
    if (definitionName != null)
      json['definitionName'] = definitionName;
    if (deployment != null)
      json['deployment'] = deployment;
    if (environmentId != null)
      json['environmentId'] = environmentId;
    if (environmentName != null)
      json['environmentName'] = environmentName;
    if (environments != null)
      json['environments'] = environments;
    if (isMultipleRankApproval != null)
      json['isMultipleRankApproval'] = isMultipleRankApproval;
    if (pendingApprovals != null)
      json['pendingApprovals'] = pendingApprovals;
    if (releaseCreator != null)
      json['releaseCreator'] = releaseCreator;
    if (releaseName != null)
      json['releaseName'] = releaseName;
    if (title != null)
      json['title'] = title;
    if (webAccessUri != null)
      json['webAccessUri'] = webAccessUri;
    return json;
  }

  static List<ReleaseApprovalPendingEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseApprovalPendingEvent>() : json.map((value) => ReleaseApprovalPendingEvent.fromJson(value)).toList();
  }

  static Map<String, ReleaseApprovalPendingEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseApprovalPendingEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseApprovalPendingEvent.fromJson(value));
    }
    return map;
  }
}

