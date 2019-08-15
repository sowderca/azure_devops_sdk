part of azure_devops_sdk.api;

class ReleaseApprovalHistory {
  
  IdentityRef approver = null;
  
  IdentityRef changedBy = null;
  /* Approval history comments. */
  String comments = null;
  /* Time when this approval created. */
  DateTime createdOn = null;
  /* Time when this approval modified. */
  DateTime modifiedOn = null;
  /* Approval history revision. */
  int revision = null;
  ReleaseApprovalHistory();

  @override
  String toString() {
    return 'ReleaseApprovalHistory[approver=$approver, changedBy=$changedBy, comments=$comments, createdOn=$createdOn, modifiedOn=$modifiedOn, revision=$revision, ]';
  }

  ReleaseApprovalHistory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['approver'] == null) {
      approver = null;
    } else {
      approver = IdentityRef.fromJson(json['approver']);
    }
    if (json['changedBy'] == null) {
      changedBy = null;
    } else {
      changedBy = IdentityRef.fromJson(json['changedBy']);
    }
    if (json['comments'] == null) {
      comments = null;
    } else {
          comments = json['comments'];
    }
    if (json['createdOn'] == null) {
      createdOn = null;
    } else {
      createdOn = DateTime.parse(json['createdOn']);
    }
    if (json['modifiedOn'] == null) {
      modifiedOn = null;
    } else {
      modifiedOn = DateTime.parse(json['modifiedOn']);
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (approver != null)
      json['approver'] = approver;
    if (changedBy != null)
      json['changedBy'] = changedBy;
    if (comments != null)
      json['comments'] = comments;
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (modifiedOn != null)
      json['modifiedOn'] = modifiedOn == null ? null : modifiedOn.toUtc().toIso8601String();
    if (revision != null)
      json['revision'] = revision;
    return json;
  }

  static List<ReleaseApprovalHistory> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseApprovalHistory>() : json.map((value) => ReleaseApprovalHistory.fromJson(value)).toList();
  }

  static Map<String, ReleaseApprovalHistory> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseApprovalHistory>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseApprovalHistory.fromJson(value));
    }
    return map;
  }
}

