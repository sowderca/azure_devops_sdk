part of azure_devops_sdk.api;

class ServiceEndpointRequest {
  
  DataSourceDetails dataSourceDetails = null;
  
  ResultTransformationDetails resultTransformationDetails = null;
  
  ServiceEndpointDetails serviceEndpointDetails = null;
  ServiceEndpointRequest();

  @override
  String toString() {
    return 'ServiceEndpointRequest[dataSourceDetails=$dataSourceDetails, resultTransformationDetails=$resultTransformationDetails, serviceEndpointDetails=$serviceEndpointDetails, ]';
  }

  ServiceEndpointRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dataSourceDetails'] == null) {
      dataSourceDetails = null;
    } else {
      dataSourceDetails = DataSourceDetails.fromJson(json['dataSourceDetails']);
    }
    if (json['resultTransformationDetails'] == null) {
      resultTransformationDetails = null;
    } else {
      resultTransformationDetails = ResultTransformationDetails.fromJson(json['resultTransformationDetails']);
    }
    if (json['serviceEndpointDetails'] == null) {
      serviceEndpointDetails = null;
    } else {
      serviceEndpointDetails = ServiceEndpointDetails.fromJson(json['serviceEndpointDetails']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dataSourceDetails != null)
      json['dataSourceDetails'] = dataSourceDetails;
    if (resultTransformationDetails != null)
      json['resultTransformationDetails'] = resultTransformationDetails;
    if (serviceEndpointDetails != null)
      json['serviceEndpointDetails'] = serviceEndpointDetails;
    return json;
  }

  static List<ServiceEndpointRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointRequest>() : json.map((value) => ServiceEndpointRequest.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointRequest.fromJson(value));
    }
    return map;
  }
}

