part of azure_devops_sdk.api;

class PermissionEvaluationBatch {
  /* True if members of the Administrators group should always pass the security check. */
  bool alwaysAllowAdministrators = null;
  /* Array of permission evaluations to evaluate. */
  List<PermissionEvaluation> evaluations = [];
  PermissionEvaluationBatch();

  @override
  String toString() {
    return 'PermissionEvaluationBatch[alwaysAllowAdministrators=$alwaysAllowAdministrators, evaluations=$evaluations, ]';
  }

  PermissionEvaluationBatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['alwaysAllowAdministrators'] == null) {
      alwaysAllowAdministrators = null;
    } else {
          alwaysAllowAdministrators = json['alwaysAllowAdministrators'];
    }
    if (json['evaluations'] == null) {
      evaluations = null;
    } else {
      evaluations = PermissionEvaluation.listFromJson(json['evaluations']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (alwaysAllowAdministrators != null)
      json['alwaysAllowAdministrators'] = alwaysAllowAdministrators;
    if (evaluations != null)
      json['evaluations'] = evaluations;
    return json;
  }

  static List<PermissionEvaluationBatch> listFromJson(List<dynamic> json) {
    return json == null ? List<PermissionEvaluationBatch>() : json.map((value) => PermissionEvaluationBatch.fromJson(value)).toList();
  }

  static Map<String, PermissionEvaluationBatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PermissionEvaluationBatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PermissionEvaluationBatch.fromJson(value));
    }
    return map;
  }
}

