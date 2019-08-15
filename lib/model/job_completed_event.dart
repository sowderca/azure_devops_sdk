part of azure_devops_sdk.api;

class JobCompletedEvent {
  
  String jobId = null;
  
  String name = null;
  JobCompletedEvent();

  @override
  String toString() {
    return 'JobCompletedEvent[jobId=$jobId, name=$name, ]';
  }

  JobCompletedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<JobCompletedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<JobCompletedEvent>() : json.map((value) => JobCompletedEvent.fromJson(value)).toList();
  }

  static Map<String, JobCompletedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JobCompletedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JobCompletedEvent.fromJson(value));
    }
    return map;
  }
}

