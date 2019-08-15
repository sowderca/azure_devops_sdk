part of azure_devops_sdk.api;

class DeploymentApprovalPendingEvent {
  
  ReleaseApproval approval = null;
  
  ApprovalOptions approvalOptions = null;
  
  List<ReleaseApproval> completedApprovals = [];
  
  Map<String, Object> data = {};
  
  Deployment deployment = null;
  
  bool isMultipleRankApproval = null;
  
  List<ReleaseApproval> pendingApprovals = [];
  
  ProjectReference project = null;
  
  Release release = null;
  DeploymentApprovalPendingEvent();

  @override
  String toString() {
    return 'DeploymentApprovalPendingEvent[approval=$approval, approvalOptions=$approvalOptions, completedApprovals=$completedApprovals, data=$data, deployment=$deployment, isMultipleRankApproval=$isMultipleRankApproval, pendingApprovals=$pendingApprovals, project=$project, release=$release, ]';
  }

  DeploymentApprovalPendingEvent.fromJson(Map<String, dynamic> json) {
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
    if (approvalOptions != null)
      json['approvalOptions'] = approvalOptions;
    if (completedApprovals != null)
      json['completedApprovals'] = completedApprovals;
    if (data != null)
      json['data'] = data;
    if (deployment != null)
      json['deployment'] = deployment;
    if (isMultipleRankApproval != null)
      json['isMultipleRankApproval'] = isMultipleRankApproval;
    if (pendingApprovals != null)
      json['pendingApprovals'] = pendingApprovals;
    if (project != null)
      json['project'] = project;
    if (release != null)
      json['release'] = release;
    return json;
  }

  static List<DeploymentApprovalPendingEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentApprovalPendingEvent>() : json.map((value) => DeploymentApprovalPendingEvent.fromJson(value)).toList();
  }

  static Map<String, DeploymentApprovalPendingEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentApprovalPendingEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentApprovalPendingEvent.fromJson(value));
    }
    return map;
  }
}

