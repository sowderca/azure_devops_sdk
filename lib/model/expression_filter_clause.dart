part of azure_devops_sdk.api;

class ExpressionFilterClause {
  
  String fieldName = null;
  /* The order in which this clause appeared in the filter query */
  int index = null;
  /* Logical Operator 'AND', 'OR' or NULL (only for the first clause in the filter) */
  String logicalOperator = null;
  
  String operator_ = null;
  
  String value = null;
  ExpressionFilterClause();

  @override
  String toString() {
    return 'ExpressionFilterClause[fieldName=$fieldName, index=$index, logicalOperator=$logicalOperator, operator_=$operator_, value=$value, ]';
  }

  ExpressionFilterClause.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fieldName'] == null) {
      fieldName = null;
    } else {
          fieldName = json['fieldName'];
    }
    if (json['index'] == null) {
      index = null;
    } else {
          index = json['index'];
    }
    if (json['logicalOperator'] == null) {
      logicalOperator = null;
    } else {
          logicalOperator = json['logicalOperator'];
    }
    if (json['operator'] == null) {
      operator_ = null;
    } else {
          operator_ = json['operator'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fieldName != null)
      json['fieldName'] = fieldName;
    if (index != null)
      json['index'] = index;
    if (logicalOperator != null)
      json['logicalOperator'] = logicalOperator;
    if (operator_ != null)
      json['operator'] = operator_;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<ExpressionFilterClause> listFromJson(List<dynamic> json) {
    return json == null ? List<ExpressionFilterClause>() : json.map((value) => ExpressionFilterClause.fromJson(value)).toList();
  }

  static Map<String, ExpressionFilterClause> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExpressionFilterClause>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExpressionFilterClause.fromJson(value));
    }
    return map;
  }
}

