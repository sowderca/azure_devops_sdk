part of azure_devops_sdk.api;

class ServiceEndpointExecutionData {
  
  ServiceEndpointExecutionOwner definition = null;
  /* Gets the finish time of service endpoint execution. */
  DateTime finishTime = null;
  /* Gets the Id of service endpoint execution data. */
  int id = null;
  
  ServiceEndpointExecutionOwner owner = null;
  /* Gets the plan type of service endpoint execution data. */
  String planType = null;
  /* Gets the result of service endpoint execution. */
  String result = null;
  //enum resultEnum {  succeeded,  succeededWithIssues,  failed,  canceled,  skipped,  abandoned,  };{
  /* Gets the start time of service endpoint execution. */
  DateTime startTime = null;
  ServiceEndpointExecutionData();

  @override
  String toString() {
    return 'ServiceEndpointExecutionData[definition=$definition, finishTime=$finishTime, id=$id, owner=$owner, planType=$planType, result=$result, startTime=$startTime, ]';
  }

  ServiceEndpointExecutionData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definition'] == null) {
      definition = null;
    } else {
      definition = ServiceEndpointExecutionOwner.fromJson(json['definition']);
    }
    if (json['finishTime'] == null) {
      finishTime = null;
    } else {
      finishTime = DateTime.parse(json['finishTime']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = ServiceEndpointExecutionOwner.fromJson(json['owner']);
    }
    if (json['planType'] == null) {
      planType = null;
    } else {
          planType = json['planType'];
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
    if (json['startTime'] == null) {
      startTime = null;
    } else {
      startTime = DateTime.parse(json['startTime']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definition != null)
      json['definition'] = definition;
    if (finishTime != null)
      json['finishTime'] = finishTime == null ? null : finishTime.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (owner != null)
      json['owner'] = owner;
    if (planType != null)
      json['planType'] = planType;
    if (result != null)
      json['result'] = result;
    if (startTime != null)
      json['startTime'] = startTime == null ? null : startTime.toUtc().toIso8601String();
    return json;
  }

  static List<ServiceEndpointExecutionData> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointExecutionData>() : json.map((value) => ServiceEndpointExecutionData.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointExecutionData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointExecutionData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointExecutionData.fromJson(value));
    }
    return map;
  }
}

