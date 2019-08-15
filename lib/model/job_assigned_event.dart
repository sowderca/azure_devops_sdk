part of azure_devops_sdk.api;

class JobAssignedEvent {
  
  String jobId = null;
  
  String name = null;
  JobAssignedEvent();

  @override
  String toString() {
    return 'JobAssignedEvent[jobId=$jobId, name=$name, ]';
  }

  JobAssignedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<JobAssignedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<JobAssignedEvent>() : json.map((value) => JobAssignedEvent.fromJson(value)).toList();
  }

  static Map<String, JobAssignedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JobAssignedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JobAssignedEvent.fromJson(value));
    }
    return map;
  }
}

