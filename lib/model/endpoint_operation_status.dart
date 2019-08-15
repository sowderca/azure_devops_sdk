part of azure_devops_sdk.api;

class EndpointOperationStatus {
  
  String state = null;
  
  String statusMessage = null;
  EndpointOperationStatus();

  @override
  String toString() {
    return 'EndpointOperationStatus[state=$state, statusMessage=$statusMessage, ]';
  }

  EndpointOperationStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['statusMessage'] == null) {
      statusMessage = null;
    } else {
          statusMessage = json['statusMessage'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (state != null)
      json['state'] = state;
    if (statusMessage != null)
      json['statusMessage'] = statusMessage;
    return json;
  }

  static List<EndpointOperationStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<EndpointOperationStatus>() : json.map((value) => EndpointOperationStatus.fromJson(value)).toList();
  }

  static Map<String, EndpointOperationStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EndpointOperationStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EndpointOperationStatus.fromJson(value));
    }
    return map;
  }
}

