part of azure_devops_sdk.api;

class ProcessRule {
  /* List of actions to take when the rule is triggered. */
  List<RuleAction> actions = [];
  /* List of conditions when the rule should be triggered. */
  List<RuleCondition> conditions = [];
  /* Indicates if the rule is disabled. */
  bool isDisabled = null;
  /* Name for the rule. */
  String name = null;
  ProcessRule();

  @override
  String toString() {
    return 'ProcessRule[actions=$actions, conditions=$conditions, isDisabled=$isDisabled, name=$name, ]';
  }

  ProcessRule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actions'] == null) {
      actions = null;
    } else {
      actions = RuleAction.listFromJson(json['actions']);
    }
    if (json['conditions'] == null) {
      conditions = null;
    } else {
      conditions = RuleCondition.listFromJson(json['conditions']);
    }
    if (json['isDisabled'] == null) {
      isDisabled = null;
    } else {
          isDisabled = json['isDisabled'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actions != null)
      json['actions'] = actions;
    if (conditions != null)
      json['conditions'] = conditions;
    if (isDisabled != null)
      json['isDisabled'] = isDisabled;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<ProcessRule> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessRule>() : json.map((value) => ProcessRule.fromJson(value)).toList();
  }

  static Map<String, ProcessRule> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessRule>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessRule.fromJson(value));
    }
    return map;
  }
}

