part of azure_devops_sdk.api;

class RuleConditionModel {
  
  String conditionType = null;
  
  String field = null;
  
  String value = null;
  RuleConditionModel();

  @override
  String toString() {
    return 'RuleConditionModel[conditionType=$conditionType, field=$field, value=$value, ]';
  }

  RuleConditionModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['conditionType'] == null) {
      conditionType = null;
    } else {
          conditionType = json['conditionType'];
    }
    if (json['field'] == null) {
      field = null;
    } else {
          field = json['field'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (conditionType != null)
      json['conditionType'] = conditionType;
    if (field != null)
      json['field'] = field;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<RuleConditionModel> listFromJson(List<dynamic> json) {
    return json == null ? List<RuleConditionModel>() : json.map((value) => RuleConditionModel.fromJson(value)).toList();
  }

  static Map<String, RuleConditionModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RuleConditionModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RuleConditionModel.fromJson(value));
    }
    return map;
  }
}

