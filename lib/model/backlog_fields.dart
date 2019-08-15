part of azure_devops_sdk.api;

class BacklogFields {
  /* Field Type (e.g. Order, Activity) to Field Reference Name map */
  Map<String, String> typeFields = {};
  BacklogFields();

  @override
  String toString() {
    return 'BacklogFields[typeFields=$typeFields, ]';
  }

  BacklogFields.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['typeFields'] == null) {
      typeFields = null;
    } else {
          typeFields = (json['typeFields'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeFields != null)
      json['typeFields'] = typeFields;
    return json;
  }

  static List<BacklogFields> listFromJson(List<dynamic> json) {
    return json == null ? List<BacklogFields>() : json.map((value) => BacklogFields.fromJson(value)).toList();
  }

  static Map<String, BacklogFields> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BacklogFields>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BacklogFields.fromJson(value));
    }
    return map;
  }
}

