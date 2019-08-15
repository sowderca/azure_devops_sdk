part of azure_devops_sdk.api;

class Condition {
  /* Gets or sets the condition type. */
  String conditionType = null;
  //enum conditionTypeEnum {  undefined,  event,  environmentState,  artifact,  };{
  /* Gets or sets the name of the condition. e.g. 'ReleaseStarted'. */
  String name = null;
  /* Gets or set value of the condition. */
  String value = null;
  Condition();

  @override
  String toString() {
    return 'Condition[conditionType=$conditionType, name=$name, value=$value, ]';
  }

  Condition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['conditionType'] == null) {
      conditionType = null;
    } else {
          conditionType = json['conditionType'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
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
    if (name != null)
      json['name'] = name;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<Condition> listFromJson(List<dynamic> json) {
    return json == null ? List<Condition>() : json.map((value) => Condition.fromJson(value)).toList();
  }

  static Map<String, Condition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Condition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Condition.fromJson(value));
    }
    return map;
  }
}

