part of azure_devops_sdk.api;

class ReleaseDefinitionApprovals {
  
  ApprovalOptions approvalOptions = null;
  /* Gets or sets the approvals. */
  List<ReleaseDefinitionApprovalStep> approvals = [];
  ReleaseDefinitionApprovals();

  @override
  String toString() {
    return 'ReleaseDefinitionApprovals[approvalOptions=$approvalOptions, approvals=$approvals, ]';
  }

  ReleaseDefinitionApprovals.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['approvalOptions'] == null) {
      approvalOptions = null;
    } else {
      approvalOptions = ApprovalOptions.fromJson(json['approvalOptions']);
    }
    if (json['approvals'] == null) {
      approvals = null;
    } else {
      approvals = ReleaseDefinitionApprovalStep.listFromJson(json['approvals']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (approvalOptions != null)
      json['approvalOptions'] = approvalOptions;
    if (approvals != null)
      json['approvals'] = approvals;
    return json;
  }

  static List<ReleaseDefinitionApprovals> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionApprovals>() : json.map((value) => ReleaseDefinitionApprovals.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionApprovals> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionApprovals>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionApprovals.fromJson(value));
    }
    return map;
  }
}

