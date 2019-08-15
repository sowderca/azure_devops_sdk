part of azure_devops_sdk.api;

class ReleaseDefinitionApprovalStep {
  /* ID of the approval or deploy step. */
  int id = null;
  ReleaseDefinitionApprovalStep();

  @override
  String toString() {
    return 'ReleaseDefinitionApprovalStep[id=$id, ]';
  }

  ReleaseDefinitionApprovalStep.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<ReleaseDefinitionApprovalStep> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionApprovalStep>() : json.map((value) => ReleaseDefinitionApprovalStep.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionApprovalStep> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionApprovalStep>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionApprovalStep.fromJson(value));
    }
    return map;
  }
}

