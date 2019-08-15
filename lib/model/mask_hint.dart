part of azure_devops_sdk.api;

class MaskHint {
  
  String type = null;
  //enum typeEnum {  variable,  regex,  };{
  
  String value = null;
  MaskHint();

  @override
  String toString() {
    return 'MaskHint[type=$type, value=$value, ]';
  }

  MaskHint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<MaskHint> listFromJson(List<dynamic> json) {
    return json == null ? List<MaskHint>() : json.map((value) => MaskHint.fromJson(value)).toList();
  }

  static Map<String, MaskHint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MaskHint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MaskHint.fromJson(value));
    }
    return map;
  }
}

