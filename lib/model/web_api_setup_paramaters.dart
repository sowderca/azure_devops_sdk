part of azure_devops_sdk.api;

class WebApiSetupParamaters {
  
  Map<String, String> configurations = {};
  WebApiSetupParamaters();

  @override
  String toString() {
    return 'WebApiSetupParamaters[configurations=$configurations, ]';
  }

  WebApiSetupParamaters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['configurations'] == null) {
      configurations = null;
    } else {
          configurations = (json['configurations'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (configurations != null)
      json['configurations'] = configurations;
    return json;
  }

  static List<WebApiSetupParamaters> listFromJson(List<dynamic> json) {
    return json == null ? List<WebApiSetupParamaters>() : json.map((value) => WebApiSetupParamaters.fromJson(value)).toList();
  }

  static Map<String, WebApiSetupParamaters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebApiSetupParamaters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebApiSetupParamaters.fromJson(value));
    }
    return map;
  }
}

