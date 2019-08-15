part of azure_devops_sdk.api;

class SubscriptionEvaluationClause {
  
  String clause = null;
  
  int order = null;
  
  bool result = null;
  SubscriptionEvaluationClause();

  @override
  String toString() {
    return 'SubscriptionEvaluationClause[clause=$clause, order=$order, result=$result, ]';
  }

  SubscriptionEvaluationClause.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['clause'] == null) {
      clause = null;
    } else {
          clause = json['clause'];
    }
    if (json['order'] == null) {
      order = null;
    } else {
          order = json['order'];
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clause != null)
      json['clause'] = clause;
    if (order != null)
      json['order'] = order;
    if (result != null)
      json['result'] = result;
    return json;
  }

  static List<SubscriptionEvaluationClause> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionEvaluationClause>() : json.map((value) => SubscriptionEvaluationClause.fromJson(value)).toList();
  }

  static Map<String, SubscriptionEvaluationClause> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionEvaluationClause>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionEvaluationClause.fromJson(value));
    }
    return map;
  }
}

