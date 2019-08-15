part of azure_devops_sdk.api;

class AgentJobRequestMessage {
  
  JobEnvironment environment = null;
  
  String jobId = null;
  
  String jobName = null;
  
  String jobRefName = null;
  
  String messageType = null;
  
  TaskOrchestrationPlanReference plan = null;
  
  TimelineReference timeline = null;
  AgentJobRequestMessage();

  @override
  String toString() {
    return 'AgentJobRequestMessage[environment=$environment, jobId=$jobId, jobName=$jobName, jobRefName=$jobRefName, messageType=$messageType, plan=$plan, timeline=$timeline, ]';
  }

  AgentJobRequestMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['environment'] == null) {
      environment = null;
    } else {
      environment = JobEnvironment.fromJson(json['environment']);
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
    if (json['jobRefName'] == null) {
      jobRefName = null;
    } else {
          jobRefName = json['jobRefName'];
    }
    if (json['messageType'] == null) {
      messageType = null;
    } else {
          messageType = json['messageType'];
    }
    if (json['plan'] == null) {
      plan = null;
    } else {
      plan = TaskOrchestrationPlanReference.fromJson(json['plan']);
    }
    if (json['timeline'] == null) {
      timeline = null;
    } else {
      timeline = TimelineReference.fromJson(json['timeline']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (environment != null)
      json['environment'] = environment;
    if (jobId != null)
      json['jobId'] = jobId;
    if (jobName != null)
      json['jobName'] = jobName;
    if (jobRefName != null)
      json['jobRefName'] = jobRefName;
    if (messageType != null)
      json['messageType'] = messageType;
    if (plan != null)
      json['plan'] = plan;
    if (timeline != null)
      json['timeline'] = timeline;
    return json;
  }

  static List<AgentJobRequestMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentJobRequestMessage>() : json.map((value) => AgentJobRequestMessage.fromJson(value)).toList();
  }

  static Map<String, AgentJobRequestMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentJobRequestMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentJobRequestMessage.fromJson(value));
    }
    return map;
  }
}
