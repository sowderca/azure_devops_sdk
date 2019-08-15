part of azure_devops_sdk.api;

class TaskAgentJobRequest {
  
  List<TaskAgentDelaySource> agentDelays = [];
  
  JObject agentSpecification = null;
  /* The date/time this request was assigned. */
  DateTime assignTime = null;
  /* Additional data about the request. */
  Map<String, String> data = {};
  
  TaskOrchestrationOwner definition = null;
  /* A list of demands required to fulfill this request. */
  List<Demand> demands = [];
  
  String expectedDuration = null;
  /* The date/time this request was finished. */
  DateTime finishTime = null;
  /* The host which triggered this request. */
  String hostId = null;
  /* ID of the job resulting from this request. */
  String jobId = null;
  /* Name of the job resulting from this request. */
  String jobName = null;
  /* The deadline for the agent to renew the lock. */
  DateTime lockedUntil = null;
  
  List<TaskAgentReference> matchedAgents = [];
  
  bool matchesAllAgentsInPool = null;
  
  String orchestrationId = null;
  
  TaskOrchestrationOwner owner = null;
  
  String planGroup = null;
  /* Internal ID for the orchestration plan connected with this request. */
  String planId = null;
  /* Internal detail representing the type of orchestration plan. */
  String planType = null;
  /* The ID of the pool this request targets */
  int poolId = null;
  /* The ID of the queue this request targets */
  int queueId = null;
  /* The date/time this request was queued. */
  DateTime queueTime = null;
  /* The date/time this request was receieved by an agent. */
  DateTime receiveTime = null;
  /* ID of the request. */
  int requestId = null;
  
  TaskAgentReference reservedAgent = null;
  /* The result of this request. */
  String result = null;
  //enum resultEnum {  succeeded,  succeededWithIssues,  failed,  canceled,  skipped,  abandoned,  };{
  /* Scope of the pipeline; matches the project ID. */
  String scopeId = null;
  /* The service which owns this request. */
  String serviceOwner = null;
  
  String statusMessage = null;
  
  bool userDelayed = null;
  TaskAgentJobRequest();

  @override
  String toString() {
    return 'TaskAgentJobRequest[agentDelays=$agentDelays, agentSpecification=$agentSpecification, assignTime=$assignTime, data=$data, definition=$definition, demands=$demands, expectedDuration=$expectedDuration, finishTime=$finishTime, hostId=$hostId, jobId=$jobId, jobName=$jobName, lockedUntil=$lockedUntil, matchedAgents=$matchedAgents, matchesAllAgentsInPool=$matchesAllAgentsInPool, orchestrationId=$orchestrationId, owner=$owner, planGroup=$planGroup, planId=$planId, planType=$planType, poolId=$poolId, queueId=$queueId, queueTime=$queueTime, receiveTime=$receiveTime, requestId=$requestId, reservedAgent=$reservedAgent, result=$result, scopeId=$scopeId, serviceOwner=$serviceOwner, statusMessage=$statusMessage, userDelayed=$userDelayed, ]';
  }

  TaskAgentJobRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agentDelays'] == null) {
      agentDelays = null;
    } else {
      agentDelays = TaskAgentDelaySource.listFromJson(json['agentDelays']);
    }
    if (json['agentSpecification'] == null) {
      agentSpecification = null;
    } else {
      agentSpecification = JObject.fromJson(json['agentSpecification']);
    }
    if (json['assignTime'] == null) {
      assignTime = null;
    } else {
      assignTime = DateTime.parse(json['assignTime']);
    }
    if (json['data'] == null) {
      data = null;
    } else {
          data = (json['data'] as Map).cast<String, String>();
    }
    if (json['definition'] == null) {
      definition = null;
    } else {
      definition = TaskOrchestrationOwner.fromJson(json['definition']);
    }
    if (json['demands'] == null) {
      demands = null;
    } else {
      demands = Demand.listFromJson(json['demands']);
    }
    if (json['expectedDuration'] == null) {
      expectedDuration = null;
    } else {
          expectedDuration = json['expectedDuration'];
    }
    if (json['finishTime'] == null) {
      finishTime = null;
    } else {
      finishTime = DateTime.parse(json['finishTime']);
    }
    if (json['hostId'] == null) {
      hostId = null;
    } else {
          hostId = json['hostId'];
    }
    if (json['jobId'] == null) {
      jobId = null;
    } else {
          jobId = json['jobId'];
    }
    if (json['jobName'] == null) {
      jobName = null;
    } else {
          jobName = json['jobName'];
    }
    if (json['lockedUntil'] == null) {
      lockedUntil = null;
    } else {
      lockedUntil = DateTime.parse(json['lockedUntil']);
    }
    if (json['matchedAgents'] == null) {
      matchedAgents = null;
    } else {
      matchedAgents = TaskAgentReference.listFromJson(json['matchedAgents']);
    }
    if (json['matchesAllAgentsInPool'] == null) {
      matchesAllAgentsInPool = null;
    } else {
          matchesAllAgentsInPool = json['matchesAllAgentsInPool'];
    }
    if (json['orchestrationId'] == null) {
      orchestrationId = null;
    } else {
          orchestrationId = json['orchestrationId'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = TaskOrchestrationOwner.fromJson(json['owner']);
    }
    if (json['planGroup'] == null) {
      planGroup = null;
    } else {
          planGroup = json['planGroup'];
    }
    if (json['planId'] == null) {
      planId = null;
    } else {
          planId = json['planId'];
    }
    if (json['planType'] == null) {
      planType = null;
    } else {
          planType = json['planType'];
    }
    if (json['poolId'] == null) {
      poolId = null;
    } else {
          poolId = json['poolId'];
    }
    if (json['queueId'] == null) {
      queueId = null;
    } else {
          queueId = json['queueId'];
    }
    if (json['queueTime'] == null) {
      queueTime = null;
    } else {
      queueTime = DateTime.parse(json['queueTime']);
    }
    if (json['receiveTime'] == null) {
      receiveTime = null;
    } else {
      receiveTime = DateTime.parse(json['receiveTime']);
    }
    if (json['requestId'] == null) {
      requestId = null;
    } else {
          requestId = json['requestId'];
    }
    if (json['reservedAgent'] == null) {
      reservedAgent = null;
    } else {
      reservedAgent = TaskAgentReference.fromJson(json['reservedAgent']);
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
    if (json['scopeId'] == null) {
      scopeId = null;
    } else {
          scopeId = json['scopeId'];
    }
    if (json['serviceOwner'] == null) {
      serviceOwner = null;
    } else {
          serviceOwner = json['serviceOwner'];
    }
    if (json['statusMessage'] == null) {
      statusMessage = null;
    } else {
          statusMessage = json['statusMessage'];
    }
    if (json['userDelayed'] == null) {
      userDelayed = null;
    } else {
          userDelayed = json['userDelayed'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agentDelays != null)
      json['agentDelays'] = agentDelays;
    if (agentSpecification != null)
      json['agentSpecification'] = agentSpecification;
    if (assignTime != null)
      json['assignTime'] = assignTime == null ? null : assignTime.toUtc().toIso8601String();
    if (data != null)
      json['data'] = data;
    if (definition != null)
      json['definition'] = definition;
    if (demands != null)
      json['demands'] = demands;
    if (expectedDuration != null)
      json['expectedDuration'] = expectedDuration;
    if (finishTime != null)
      json['finishTime'] = finishTime == null ? null : finishTime.toUtc().toIso8601String();
    if (hostId != null)
      json['hostId'] = hostId;
    if (jobId != null)
      json['jobId'] = jobId;
    if (jobName != null)
      json['jobName'] = jobName;
    if (lockedUntil != null)
      json['lockedUntil'] = lockedUntil == null ? null : lockedUntil.toUtc().toIso8601String();
    if (matchedAgents != null)
      json['matchedAgents'] = matchedAgents;
    if (matchesAllAgentsInPool != null)
      json['matchesAllAgentsInPool'] = matchesAllAgentsInPool;
    if (orchestrationId != null)
      json['orchestrationId'] = orchestrationId;
    if (owner != null)
      json['owner'] = owner;
    if (planGroup != null)
      json['planGroup'] = planGroup;
    if (planId != null)
      json['planId'] = planId;
    if (planType != null)
      json['planType'] = planType;
    if (poolId != null)
      json['poolId'] = poolId;
    if (queueId != null)
      json['queueId'] = queueId;
    if (queueTime != null)
      json['queueTime'] = queueTime == null ? null : queueTime.toUtc().toIso8601String();
    if (receiveTime != null)
      json['receiveTime'] = receiveTime == null ? null : receiveTime.toUtc().toIso8601String();
    if (requestId != null)
      json['requestId'] = requestId;
    if (reservedAgent != null)
      json['reservedAgent'] = reservedAgent;
    if (result != null)
      json['result'] = result;
    if (scopeId != null)
      json['scopeId'] = scopeId;
    if (serviceOwner != null)
      json['serviceOwner'] = serviceOwner;
    if (statusMessage != null)
      json['statusMessage'] = statusMessage;
    if (userDelayed != null)
      json['userDelayed'] = userDelayed;
    return json;
  }

  static List<TaskAgentJobRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentJobRequest>() : json.map((value) => TaskAgentJobRequest.fromJson(value)).toList();
  }

  static Map<String, TaskAgentJobRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentJobRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentJobRequest.fromJson(value));
    }
    return map;
  }
}

