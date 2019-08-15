part of azure_devops_sdk.api;

class FilterClause {
  
  String fieldName = null;
  
  int index = null;
  
  String logicalOperator = null;
  
  String operator_ = null;
  
  String value = null;
  FilterClause();

  @override
  String toString() {
    return 'FilterClause[fieldName=$fieldName, index=$index, logicalOperator=$logicalOperator, operator_=$operator_, value=$value, ]';
  }

  FilterClause.fromJson(Map<String, dynamic> json) {
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

  static List<FilterClause> listFromJson(List<dynamic> json) {
    return json == null ? List<FilterClause>() : json.map((value) => FilterClause.fromJson(value)).toList();
  }

  static Map<String, FilterClause> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FilterClause>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FilterClause.fromJson(value));
    }
    return map;
  }
}

