part of azure_devops_sdk.api;

class TeamFieldValuesPatch {
  
  String defaultValue = null;
  
  List<TeamFieldValue> values = [];
  TeamFieldValuesPatch();

  @override
  String toString() {
    return 'TeamFieldValuesPatch[defaultValue=$defaultValue, values=$values, ]';
  }

  TeamFieldValuesPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['defaultValue'] == null) {
      defaultValue = null;
    } else {
          defaultValue = json['defaultValue'];
    }
    if (json['values'] == null) {
      values = null;
    } else {
      values = TeamFieldValue.listFromJson(json['values']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (defaultValue != null)
      json['defaultValue'] = defaultValue;
    if (values != null)
      json['values'] = values;
    return json;
  }

  static List<TeamFieldValuesPatch> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamFieldValuesPatch>() : json.map((value) => TeamFieldValuesPatch.fromJson(value)).toList();
  }

  static Map<String, TeamFieldValuesPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamFieldValuesPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamFieldValuesPatch.fromJson(value));
    }
    return map;
  }
}

