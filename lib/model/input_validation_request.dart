part of azure_devops_sdk.api;

class InputValidationRequest {
  
  Map<String, ValidationItem> inputs = {};
  InputValidationRequest();

  @override
  String toString() {
    return 'InputValidationRequest[inputs=$inputs, ]';
  }

  InputValidationRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['inputs'] == null) {
      inputs = null;
    } else {
      inputs = ValidationItem.mapFromJson(json['inputs']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (inputs != null)
      json['inputs'] = inputs;
    return json;
  }

  static List<InputValidationRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<InputValidationRequest>() : json.map((value) => InputValidationRequest.fromJson(value)).toList();
  }

  static Map<String, InputValidationRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InputValidationRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InputValidationRequest.fromJson(value));
    }
    return map;
  }
}

