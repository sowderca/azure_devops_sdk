part of azure_devops_sdk.api;

class CheckinNote {
  
  String name = null;
  
  String value = null;
  CheckinNote();

  @override
  String toString() {
    return 'CheckinNote[name=$name, value=$value, ]';
  }

  CheckinNote.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (name != null)
      json['name'] = name;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<CheckinNote> listFromJson(List<dynamic> json) {
    return json == null ? List<CheckinNote>() : json.map((value) => CheckinNote.fromJson(value)).toList();
  }

  static Map<String, CheckinNote> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CheckinNote>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CheckinNote.fromJson(value));
    }
    return map;
  }
}

