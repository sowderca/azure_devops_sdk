part of azure_devops_sdk.api;

class DatedTestFieldData {
  
  DateTime date = null;
  
  TestFieldData value = null;
  DatedTestFieldData();

  @override
  String toString() {
    return 'DatedTestFieldData[date=$date, value=$value, ]';
  }

  DatedTestFieldData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['date'] == null) {
      date = null;
    } else {
      date = DateTime.parse(json['date']);
    }
    if (json['value'] == null) {
      value = null;
    } else {
      value = TestFieldData.fromJson(json['value']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (date != null)
      json['date'] = date == null ? null : date.toUtc().toIso8601String();
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<DatedTestFieldData> listFromJson(List<dynamic> json) {
    return json == null ? List<DatedTestFieldData>() : json.map((value) => DatedTestFieldData.fromJson(value)).toList();
  }

  static Map<String, DatedTestFieldData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DatedTestFieldData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DatedTestFieldData.fromJson(value));
    }
    return map;
  }
}

