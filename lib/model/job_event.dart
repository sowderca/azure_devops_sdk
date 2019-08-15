part of azure_devops_sdk.api;

class JobEvent {
  
  String jobId = null;
  
  String name = null;
  JobEvent();

  @override
  String toString() {
    return 'JobEvent[jobId=$jobId, name=$name, ]';
  }

  JobEvent.fromJson(Map<String, dynamic> json) {
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

  static List<JobEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<JobEvent>() : json.map((value) => JobEvent.fromJson(value)).toList();
  }

  static Map<String, JobEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JobEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JobEvent.fromJson(value));
    }
    return map;
  }
}

