part of azure_devops_sdk.api;

class RuleAction {
  /* Type of action to take when the rule is triggered. */
  String actionType = null;
  //enum actionTypeEnum {  makeRequired,  makeReadOnly,  setDefaultValue,  setDefaultFromClock,  setDefaultFromCurrentUser,  setDefaultFromField,  copyValue,  copyFromClock,  copyFromCurrentUser,  copyFromField,  setValueToEmpty,  copyFromServerClock,  copyFromServerCurrentUser,  };{
  /* Field on which the action should be taken. */
  String targetField = null;
  /* Value to apply on target field, once the action is taken. */
  String value = null;
  RuleAction();

  @override
  String toString() {
    return 'RuleAction[actionType=$actionType, targetField=$targetField, value=$value, ]';
  }

  RuleAction.fromJson(Map<String, dynamic> json) {
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

  static List<RuleAction> listFromJson(List<dynamic> json) {
    return json == null ? List<RuleAction>() : json.map((value) => RuleAction.fromJson(value)).toList();
  }

  static Map<String, RuleAction> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RuleAction>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RuleAction.fromJson(value));
    }
    return map;
  }
}

