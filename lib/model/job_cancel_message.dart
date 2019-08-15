part of azure_devops_sdk.api;

class JobCancelMessage {
  
  String jobId = null;
  
  String timeout = null;
  JobCancelMessage();

  @override
  String toString() {
    return 'JobCancelMessage[jobId=$jobId, timeout=$timeout, ]';
  }

  JobCancelMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['jobId'] == null) {
      jobId = null;
    } else {
          jobId = json['jobId'];
    }
    if (json['timeout'] == null) {
      timeout = null;
    } else {
          timeout = json['timeout'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (jobId != null)
      json['jobId'] = jobId;
    if (timeout != null)
      json['timeout'] = timeout;
    return json;
  }

  static List<JobCancelMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<JobCancelMessage>() : json.map((value) => JobCancelMessage.fromJson(value)).toList();
  }

  static Map<String, JobCancelMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JobCancelMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JobCancelMessage.fromJson(value));
    }
    return map;
  }
}

