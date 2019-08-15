part of azure_devops_sdk.api;

class SubscriptionEvaluation {
  
  List<SubscriptionEvaluationClause> clauses = [];
  
  DiagnosticIdentity user = null;
  SubscriptionEvaluation();

  @override
  String toString() {
    return 'SubscriptionEvaluation[clauses=$clauses, user=$user, ]';
  }

  SubscriptionEvaluation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['clauses'] == null) {
      clauses = null;
    } else {
      clauses = SubscriptionEvaluationClause.listFromJson(json['clauses']);
    }
    if (json['user'] == null) {
      user = null;
    } else {
      user = DiagnosticIdentity.fromJson(json['user']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clauses != null)
      json['clauses'] = clauses;
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<SubscriptionEvaluation> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionEvaluation>() : json.map((value) => SubscriptionEvaluation.fromJson(value)).toList();
  }

  static Map<String, SubscriptionEvaluation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionEvaluation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionEvaluation.fromJson(value));
    }
    return map;
  }
}

