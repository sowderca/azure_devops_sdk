part of azure_devops_sdk.api;

class DeploymentJob {
  
  ReleaseTask job = null;
  /* List of  executed tasks with in job. */
  List<ReleaseTask> tasks = [];
  DeploymentJob();

  @override
  String toString() {
    return 'DeploymentJob[job=$job, tasks=$tasks, ]';
  }

  DeploymentJob.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['job'] == null) {
      job = null;
    } else {
      job = ReleaseTask.fromJson(json['job']);
    }
    if (json['tasks'] == null) {
      tasks = null;
    } else {
      tasks = ReleaseTask.listFromJson(json['tasks']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (job != null)
      json['job'] = job;
    if (tasks != null)
      json['tasks'] = tasks;
    return json;
  }

  static List<DeploymentJob> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentJob>() : json.map((value) => DeploymentJob.fromJson(value)).toList();
  }

  static Map<String, DeploymentJob> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentJob>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentJob.fromJson(value));
    }
    return map;
  }
}

