part of azure_devops_sdk.api;

class ReleaseApproval {
  /* Gets or sets the type of approval. */
  String approvalType = null;
  //enum approvalTypeEnum {  undefined,  preDeploy,  postDeploy,  all,  };{
  
  IdentityRef approvedBy = null;
  
  IdentityRef approver = null;
  /* Gets or sets attempt which specifies as which deployment attempt it belongs. */
  int attempt = null;
  /* Gets or sets comments for approval. */
  String comments = null;
  /* Gets date on which it got created. */
  DateTime createdOn = null;
  /* Gets history which specifies all approvals associated with this approval. */
  List<ReleaseApprovalHistory> history = [];
  /* Gets the unique identifier of this field. */
  int id = null;
  /* Gets or sets as approval is automated or not. */
  bool isAutomated = null;
  /* Gets date on which it got modified. */
  DateTime modifiedOn = null;
  /* Gets or sets rank which specifies the order of the approval. e.g. Same rank denotes parallel approval. */
  int rank = null;
  
  ReleaseShallowReference release = null;
  
  ReleaseDefinitionShallowReference releaseDefinition = null;
  
  ReleaseEnvironmentShallowReference releaseEnvironment = null;
  /* Gets the revision number. */
  int revision = null;
  /* Gets or sets the status of the approval. */
  String status = null;
  //enum statusEnum {  undefined,  pending,  approved,  rejected,  reassigned,  canceled,  skipped,  };{
  /* Gets url to access the approval. */
  String url = null;
  ReleaseApproval();

  @override
  String toString() {
    return 'ReleaseApproval[approvalType=$approvalType, approvedBy=$approvedBy, approver=$approver, attempt=$attempt, comments=$comments, createdOn=$createdOn, history=$history, id=$id, isAutomated=$isAutomated, modifiedOn=$modifiedOn, rank=$rank, release=$release, releaseDefinition=$releaseDefinition, releaseEnvironment=$releaseEnvironment, revision=$revision, status=$status, url=$url, ]';
  }

  ReleaseApproval.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['approvalType'] == null) {
      approvalType = null;
    } else {
          approvalType = json['approvalType'];
    }
    if (json['approvedBy'] == null) {
      approvedBy = null;
    } else {
      approvedBy = IdentityRef.fromJson(json['approvedBy']);
    }
    if (json['approver'] == null) {
      approver = null;
    } else {
      approver = IdentityRef.fromJson(json['approver']);
    }
    if (json['attempt'] == null) {
      attempt = null;
    } else {
          attempt = json['attempt'];
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
    if (json['history'] == null) {
      history = null;
    } else {
      history = ReleaseApprovalHistory.listFromJson(json['history']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isAutomated'] == null) {
      isAutomated = null;
    } else {
          isAutomated = json['isAutomated'];
    }
    if (json['modifiedOn'] == null) {
      modifiedOn = null;
    } else {
      modifiedOn = DateTime.parse(json['modifiedOn']);
    }
    if (json['rank'] == null) {
      rank = null;
    } else {
          rank = json['rank'];
    }
    if (json['release'] == null) {
      release = null;
    } else {
      release = ReleaseShallowReference.fromJson(json['release']);
    }
    if (json['releaseDefinition'] == null) {
      releaseDefinition = null;
    } else {
      releaseDefinition = ReleaseDefinitionShallowReference.fromJson(json['releaseDefinition']);
    }
    if (json['releaseEnvironment'] == null) {
      releaseEnvironment = null;
    } else {
      releaseEnvironment = ReleaseEnvironmentShallowReference.fromJson(json['releaseEnvironment']);
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (approvalType != null)
      json['approvalType'] = approvalType;
    if (approvedBy != null)
      json['approvedBy'] = approvedBy;
    if (approver != null)
      json['approver'] = approver;
    if (attempt != null)
      json['attempt'] = attempt;
    if (comments != null)
      json['comments'] = comments;
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (history != null)
      json['history'] = history;
    if (id != null)
      json['id'] = id;
    if (isAutomated != null)
      json['isAutomated'] = isAutomated;
    if (modifiedOn != null)
      json['modifiedOn'] = modifiedOn == null ? null : modifiedOn.toUtc().toIso8601String();
    if (rank != null)
      json['rank'] = rank;
    if (release != null)
      json['release'] = release;
    if (releaseDefinition != null)
      json['releaseDefinition'] = releaseDefinition;
    if (releaseEnvironment != null)
      json['releaseEnvironment'] = releaseEnvironment;
    if (revision != null)
      json['revision'] = revision;
    if (status != null)
      json['status'] = status;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ReleaseApproval> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseApproval>() : json.map((value) => ReleaseApproval.fromJson(value)).toList();
  }

  static Map<String, ReleaseApproval> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseApproval>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseApproval.fromJson(value));
    }
    return map;
  }
}

