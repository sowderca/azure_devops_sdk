part of azure_devops_sdk.api;

class ExpressionFilterModel {
  /* Flat list of clauses in this subscription */
  List<ExpressionFilterClause> clauses = [];
  /* Grouping of clauses in the subscription */
  List<ExpressionFilterGroup> groups = [];
  /* Max depth of the Subscription tree */
  int maxGroupLevel = null;
  ExpressionFilterModel();

  @override
  String toString() {
    return 'ExpressionFilterModel[clauses=$clauses, groups=$groups, maxGroupLevel=$maxGroupLevel, ]';
  }

  ExpressionFilterModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['clauses'] == null) {
      clauses = null;
    } else {
      clauses = ExpressionFilterClause.listFromJson(json['clauses']);
    }
    if (json['groups'] == null) {
      groups = null;
    } else {
      groups = ExpressionFilterGroup.listFromJson(json['groups']);
    }
    if (json['maxGroupLevel'] == null) {
      maxGroupLevel = null;
    } else {
          maxGroupLevel = json['maxGroupLevel'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clauses != null)
      json['clauses'] = clauses;
    if (groups != null)
      json['groups'] = groups;
    if (maxGroupLevel != null)
      json['maxGroupLevel'] = maxGroupLevel;
    return json;
  }

  static List<ExpressionFilterModel> listFromJson(List<dynamic> json) {
    return json == null ? List<ExpressionFilterModel>() : json.map((value) => ExpressionFilterModel.fromJson(value)).toList();
  }

  static Map<String, ExpressionFilterModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExpressionFilterModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExpressionFilterModel.fromJson(value));
    }
    return map;
  }
}

