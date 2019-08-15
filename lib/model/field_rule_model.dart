part of azure_devops_sdk.api;

class FieldRuleModel {
  
  List<RuleActionModel> actions = [];
  
  List<RuleConditionModel> conditions = [];
  
  String friendlyName = null;
  
  String id = null;
  
  bool isDisabled = null;
  
  bool isSystem = null;
  FieldRuleModel();

  @override
  String toString() {
    return 'FieldRuleModel[actions=$actions, conditions=$conditions, friendlyName=$friendlyName, id=$id, isDisabled=$isDisabled, isSystem=$isSystem, ]';
  }

  FieldRuleModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actions'] == null) {
      actions = null;
    } else {
      actions = RuleActionModel.listFromJson(json['actions']);
    }
    if (json['conditions'] == null) {
      conditions = null;
    } else {
      conditions = RuleConditionModel.listFromJson(json['conditions']);
    }
    if (json['friendlyName'] == null) {
      friendlyName = null;
    } else {
          friendlyName = json['friendlyName'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isDisabled'] == null) {
      isDisabled = null;
    } else {
          isDisabled = json['isDisabled'];
    }
    if (json['isSystem'] == null) {
      isSystem = null;
    } else {
          isSystem = json['isSystem'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actions != null)
      json['actions'] = actions;
    if (conditions != null)
      json['conditions'] = conditions;
    if (friendlyName != null)
      json['friendlyName'] = friendlyName;
    if (id != null)
      json['id'] = id;
    if (isDisabled != null)
      json['isDisabled'] = isDisabled;
    if (isSystem != null)
      json['isSystem'] = isSystem;
    return json;
  }

  static List<FieldRuleModel> listFromJson(List<dynamic> json) {
    return json == null ? List<FieldRuleModel>() : json.map((value) => FieldRuleModel.fromJson(value)).toList();
  }

  static Map<String, FieldRuleModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FieldRuleModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FieldRuleModel.fromJson(value));
    }
    return map;
  }
}

