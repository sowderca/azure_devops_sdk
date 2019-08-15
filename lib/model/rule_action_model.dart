part of azure_devops_sdk.api;

class RuleActionModel {
  
  String actionType = null;
  
  String targetField = null;
  
  String value = null;
  RuleActionModel();

  @override
  String toString() {
    return 'RuleActionModel[actionType=$actionType, targetField=$targetField, value=$value, ]';
  }

  RuleActionModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionType'] == null) {
      actionType = null;
    } else {
          actionType = json['actionType'];
    }
    if (json['targetField'] == null) {
      targetField = null;
    } else {
          targetField = json['targetField'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actionType != null)
      json['actionType'] = actionType;
    if (targetField != null)
      json['targetField'] = targetField;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<RuleActionModel> listFromJson(List<dynamic> json) {
    return json == null ? List<RuleActionModel>() : json.map((value) => RuleActionModel.fromJson(value)).toList();
  }

  static Map<String, RuleActionModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RuleActionModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RuleActionModel.fromJson(value));
    }
    return map;
  }
}

