part of azure_devops_sdk.api;

class CardSettings {
  
  CardFieldSettings fields = null;
  CardSettings();

  @override
  String toString() {
    return 'CardSettings[fields=$fields, ]';
  }

  CardSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fields'] == null) {
      fields = null;
    } else {
      fields = CardFieldSettings.fromJson(json['fields']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fields != null)
      json['fields'] = fields;
    return json;
  }

  static List<CardSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<CardSettings>() : json.map((value) => CardSettings.fromJson(value)).toList();
  }

  static Map<String, CardSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CardSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CardSettings.fromJson(value));
    }
    return map;
  }
}

