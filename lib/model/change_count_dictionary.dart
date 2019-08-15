part of azure_devops_sdk.api;

class ChangeCountDictionary {
  ChangeCountDictionary();

  @override
  String toString() {
    return 'ChangeCountDictionary[]';
  }

  ChangeCountDictionary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    return json;
  }

  static List<ChangeCountDictionary> listFromJson(List<dynamic> json) {
    return json == null ? List<ChangeCountDictionary>() : json.map((value) => ChangeCountDictionary.fromJson(value)).toList();
  }

  static Map<String, ChangeCountDictionary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ChangeCountDictionary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ChangeCountDictionary.fromJson(value));
    }
    return map;
  }
}

