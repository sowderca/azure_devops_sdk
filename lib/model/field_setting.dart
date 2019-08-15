part of azure_devops_sdk.api;

class FieldSetting {
  FieldSetting();

  @override
  String toString() {
    return 'FieldSetting[]';
  }

  FieldSetting.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<FieldSetting> listFromJson(List<dynamic> json) {
    return json == null ? List<FieldSetting>() : json.map((value) => FieldSetting.fromJson(value)).toList();
  }

  static Map<String, FieldSetting> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FieldSetting>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FieldSetting.fromJson(value));
    }
    return map;
  }
}

