part of azure_devops_sdk.api;

class JobReference {
  /* Attempt number of the job */
  int attempt = null;
  /* Matrixing in YAML generates copies of a job with different inputs in matrix. JobName is the name of those input. Maximum supported length for name is 256 character. */
  String jobName = null;
  JobReference();

  @override
  String toString() {
    return 'JobReference[attempt=$attempt, jobName=$jobName, ]';
  }

  JobReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attempt'] == null) {
      attempt = null;
    } else {
          attempt = json['attempt'];
    }
    if (json['jobName'] == null) {
      jobName = null;
    } else {
          jobName = json['jobName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attempt != null)
      json['attempt'] = attempt;
    if (jobName != null)
      json['jobName'] = jobName;
    return json;
  }

  static List<JobReference> listFromJson(List<dynamic> json) {
    return json == null ? List<JobReference>() : json.map((value) => JobReference.fromJson(value)).toList();
  }

  static Map<String, JobReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JobReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JobReference.fromJson(value));
    }
    return map;
  }
}

