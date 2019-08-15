part of azure_devops_sdk.api;

class ServiceEndpointExecutionRecord {
  
  ServiceEndpointExecutionData data = null;
  /* Gets the Id of service endpoint. */
  String endpointId = null;
  ServiceEndpointExecutionRecord();

  @override
  String toString() {
    return 'ServiceEndpointExecutionRecord[data=$data, endpointId=$endpointId, ]';
  }

  ServiceEndpointExecutionRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['data'] == null) {
      data = null;
    } else {
      data = ServiceEndpointExecutionData.fromJson(json['data']);
    }
    if (json['endpointId'] == null) {
      endpointId = null;
    } else {
          endpointId = json['endpointId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (endpointId != null)
      json['endpointId'] = endpointId;
    return json;
  }

  static List<ServiceEndpointExecutionRecord> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointExecutionRecord>() : json.map((value) => ServiceEndpointExecutionRecord.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointExecutionRecord> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointExecutionRecord>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointExecutionRecord.fromJson(value));
    }
    return map;
  }
}

