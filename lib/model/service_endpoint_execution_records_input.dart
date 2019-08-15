part of azure_devops_sdk.api;

class ServiceEndpointExecutionRecordsInput {
  
  ServiceEndpointExecutionData data = null;
  
  List<String> endpointIds = [];
  ServiceEndpointExecutionRecordsInput();

  @override
  String toString() {
    return 'ServiceEndpointExecutionRecordsInput[data=$data, endpointIds=$endpointIds, ]';
  }

  ServiceEndpointExecutionRecordsInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['data'] == null) {
      data = null;
    } else {
      data = ServiceEndpointExecutionData.fromJson(json['data']);
    }
    if (json['endpointIds'] == null) {
      endpointIds = null;
    } else {
      endpointIds = (json['endpointIds'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (endpointIds != null)
      json['endpointIds'] = endpointIds;
    return json;
  }

  static List<ServiceEndpointExecutionRecordsInput> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointExecutionRecordsInput>() : json.map((value) => ServiceEndpointExecutionRecordsInput.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointExecutionRecordsInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointExecutionRecordsInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointExecutionRecordsInput.fromJson(value));
    }
    return map;
  }
}

