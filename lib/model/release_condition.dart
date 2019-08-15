part of azure_devops_sdk.api;

class ReleaseCondition {
  /* Gets or sets the condition type. */
  String conditionType = null;
  //enum conditionTypeEnum {  undefined,  event,  environmentState,  artifact,  };{
  /* Gets or sets the name of the condition. e.g. 'ReleaseStarted'. */
  String name = null;
  /* Gets or set value of the condition. */
  String value = null;
  ReleaseCondition();

  @override
  String toString() {
    return 'ReleaseCondition[conditionType=$conditionType, name=$name, value=$value, ]';
  }

  ReleaseCondition.fromJson(Map<String, dynamic> json) {
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

  static List<ReleaseCondition> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseCondition>() : json.map((value) => ReleaseCondition.fromJson(value)).toList();
  }

  static Map<String, ReleaseCondition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseCondition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseCondition.fromJson(value));
    }
    return map;
  }
}

