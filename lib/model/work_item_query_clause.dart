part of azure_devops_sdk.api;

class WorkItemQueryClause {
  /* Child clauses if the current clause is a logical operator */
  List<WorkItemQueryClause> clauses = [];
  
  WorkItemFieldReference field = null;
  
  WorkItemFieldReference fieldValue = null;
  /* Determines if this is a field to field comparison */
  bool isFieldValue = null;
  /* Logical operator separating the condition clause */
  String logicalOperator = null;
  //enum logicalOperatorEnum {  none,  and,  or,  };{
  
  WorkItemFieldOperation operator_ = null;
  /* Right side of the condition when a field to value comparison */
  String value = null;
  WorkItemQueryClause();

  @override
  String toString() {
    return 'WorkItemQueryClause[clauses=$clauses, field=$field, fieldValue=$fieldValue, isFieldValue=$isFieldValue, logicalOperator=$logicalOperator, operator_=$operator_, value=$value, ]';
  }

  WorkItemQueryClause.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['clauses'] == null) {
      clauses = null;
    } else {
      clauses = WorkItemQueryClause.listFromJson(json['clauses']);
    }
    if (json['field'] == null) {
      field = null;
    } else {
      field = WorkItemFieldReference.fromJson(json['field']);
    }
    if (json['fieldValue'] == null) {
      fieldValue = null;
    } else {
      fieldValue = WorkItemFieldReference.fromJson(json['fieldValue']);
    }
    if (json['isFieldValue'] == null) {
      isFieldValue = null;
    } else {
          isFieldValue = json['isFieldValue'];
    }
    if (json['logicalOperator'] == null) {
      logicalOperator = null;
    } else {
          logicalOperator = json['logicalOperator'];
    }
    if (json['operator'] == null) {
      operator_ = null;
    } else {
      operator_ = WorkItemFieldOperation.fromJson(json['operator']);
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clauses != null)
      json['clauses'] = clauses;
    if (field != null)
      json['field'] = field;
    if (fieldValue != null)
      json['fieldValue'] = fieldValue;
    if (isFieldValue != null)
      json['isFieldValue'] = isFieldValue;
    if (logicalOperator != null)
      json['logicalOperator'] = logicalOperator;
    if (operator_ != null)
      json['operator'] = operator_;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<WorkItemQueryClause> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemQueryClause>() : json.map((value) => WorkItemQueryClause.fromJson(value)).toList();
  }

  static Map<String, WorkItemQueryClause> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemQueryClause>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemQueryClause.fromJson(value));
    }
    return map;
  }
}

