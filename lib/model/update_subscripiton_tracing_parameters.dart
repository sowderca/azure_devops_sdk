part of azure_devops_sdk.api;

class UpdateSubscripitonTracingParameters {
  
  bool enabled = null;
  UpdateSubscripitonTracingParameters();

  @override
  String toString() {
    return 'UpdateSubscripitonTracingParameters[enabled=$enabled, ]';
  }

  UpdateSubscripitonTracingParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (enabled != null)
      json['enabled'] = enabled;
    return json;
  }

  static List<UpdateSubscripitonTracingParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateSubscripitonTracingParameters>() : json.map((value) => UpdateSubscripitonTracingParameters.fromJson(value)).toList();
  }

  static Map<String, UpdateSubscripitonTracingParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateSubscripitonTracingParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateSubscripitonTracingParameters.fromJson(value));
    }
    return map;
  }
}

