part of azure_devops_sdk.api;

class TaskAgentCloudRequest {
  
  TaskAgentReference agent = null;
  
  int agentCloudId = null;
  
  DateTime agentConnectedTime = null;
  
  JObject agentData = null;
  
  JObject agentSpecification = null;
  
  TaskAgentPoolReference pool = null;
  
  DateTime provisionedTime = null;
  
  DateTime provisionRequestTime = null;
  
  DateTime releaseRequestTime = null;
  
  String requestId = null;
  TaskAgentCloudRequest();

  @override
  String toString() {
    return 'TaskAgentCloudRequest[agent=$agent, agentCloudId=$agentCloudId, agentConnectedTime=$agentConnectedTime, agentData=$agentData, agentSpecification=$agentSpecification, pool=$pool, provisionedTime=$provisionedTime, provisionRequestTime=$provisionRequestTime, releaseRequestTime=$releaseRequestTime, requestId=$requestId, ]';
  }

  TaskAgentCloudRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agent'] == null) {
      agent = null;
    } else {
      agent = TaskAgentReference.fromJson(json['agent']);
    }
    if (json['agentCloudId'] == null) {
      agentCloudId = null;
    } else {
          agentCloudId = json['agentCloudId'];
    }
    if (json['agentConnectedTime'] == null) {
      agentConnectedTime = null;
    } else {
      agentConnectedTime = DateTime.parse(json['agentConnectedTime']);
    }
    if (json['agentData'] == null) {
      agentData = null;
    } else {
      agentData = JObject.fromJson(json['agentData']);
    }
    if (json['agentSpecification'] == null) {
      agentSpecification = null;
    } else {
      agentSpecification = JObject.fromJson(json['agentSpecification']);
    }
    if (json['pool'] == null) {
      pool = null;
    } else {
      pool = TaskAgentPoolReference.fromJson(json['pool']);
    }
    if (json['provisionedTime'] == null) {
      provisionedTime = null;
    } else {
      provisionedTime = DateTime.parse(json['provisionedTime']);
    }
    if (json['provisionRequestTime'] == null) {
      provisionRequestTime = null;
    } else {
      provisionRequestTime = DateTime.parse(json['provisionRequestTime']);
    }
    if (json['releaseRequestTime'] == null) {
      releaseRequestTime = null;
    } else {
      releaseRequestTime = DateTime.parse(json['releaseRequestTime']);
    }
    if (json['requestId'] == null) {
      requestId = null;
    } else {
          requestId = json['requestId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agent != null)
      json['agent'] = agent;
    if (agentCloudId != null)
      json['agentCloudId'] = agentCloudId;
    if (agentConnectedTime != null)
      json['agentConnectedTime'] = agentConnectedTime == null ? null : agentConnectedTime.toUtc().toIso8601String();
    if (agentData != null)
      json['agentData'] = agentData;
    if (agentSpecification != null)
      json['agentSpecification'] = agentSpecification;
    if (pool != null)
      json['pool'] = pool;
    if (provisionedTime != null)
      json['provisionedTime'] = provisionedTime == null ? null : provisionedTime.toUtc().toIso8601String();
    if (provisionRequestTime != null)
      json['provisionRequestTime'] = provisionRequestTime == null ? null : provisionRequestTime.toUtc().toIso8601String();
    if (releaseRequestTime != null)
      json['releaseRequestTime'] = releaseRequestTime == null ? null : releaseRequestTime.toUtc().toIso8601String();
    if (requestId != null)
      json['requestId'] = requestId;
    return json;
  }

  static List<TaskAgentCloudRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentCloudRequest>() : json.map((value) => TaskAgentCloudRequest.fromJson(value)).toList();
  }

  static Map<String, TaskAgentCloudRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentCloudRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentCloudRequest.fromJson(value));
    }
    return map;
  }
}

