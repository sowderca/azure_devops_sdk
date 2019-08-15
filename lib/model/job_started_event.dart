part of azure_devops_sdk.api;

class JobStartedEvent {
  
  String jobId = null;
  
  String name = null;
  JobStartedEvent();

  @override
  String toString() {
    return 'JobStartedEvent[jobId=$jobId, name=$name, ]';
  }

  JobStartedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['jobId'] == null) {
      jobId = null;
    } else {
          jobId = json['jobId'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (jobId != null)
      json['jobId'] = jobId;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<JobStartedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<JobStartedEvent>() : json.map((value) => JobStartedEvent.fromJson(value)).toList();
  }

  static Map<String, JobStartedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JobStartedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JobStartedEvent.fromJson(value));
    }
    return map;
  }
}

