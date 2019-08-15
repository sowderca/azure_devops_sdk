part of azure_devops_sdk.api;

class RuleCondition {
  /* Type of condition. $When. This condition limits the execution of its children to cases when another field has a particular value, i.e. when the Is value of the referenced field is equal to the given literal value. $WhenNot.This condition limits the execution of its children to cases when another field does not have a particular value, i.e.when the Is value of the referenced field is not equal to the given literal value. $WhenChanged.This condition limits the execution of its children to cases when another field has changed, i.e.when the Is value of the referenced field is not equal to the Was value of that field. $WhenNotChanged.This condition limits the execution of its children to cases when another field has not changed, i.e.when the Is value of the referenced field is equal to the Was value of that field. */
  String conditionType = null;
  //enum conditionTypeEnum {  when,  whenNot,  whenChanged,  whenNotChanged,  whenWas,  whenStateChangedTo,  whenStateChangedFromAndTo,  whenWorkItemIsCreated,  whenValueIsDefined,  whenValueIsNotDefined,  };{
  /* Field that defines condition. */
  String field = null;
  /* Value of field to define the condition for rule. */
  String value = null;
  RuleCondition();

  @override
  String toString() {
    return 'RuleCondition[conditionType=$conditionType, field=$field, value=$value, ]';
  }

  RuleCondition.fromJson(Map<String, dynamic> json) {
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

  static List<RuleCondition> listFromJson(List<dynamic> json) {
    return json == null ? List<RuleCondition>() : json.map((value) => RuleCondition.fromJson(value)).toList();
  }

  static Map<String, RuleCondition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RuleCondition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RuleCondition.fromJson(value));
    }
    return map;
  }
}

