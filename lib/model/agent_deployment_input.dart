part of azure_devops_sdk.api;

class AgentDeploymentInput {
  /* Gets or sets the job condition. */
  String condition = null;
  /* Gets or sets the job cancel timeout in minutes for deployment which are cancelled by user for this release environment. */
  int jobCancelTimeoutInMinutes = null;
  /* Gets or sets the override inputs. */
  Map<String, String> overrideInputs = {};
  /* Gets or sets the job execution timeout in minutes for deployment which are queued against this release environment. */
  int timeoutInMinutes = null;
  AgentDeploymentInput();

  @override
  String toString() {
    return 'AgentDeploymentInput[condition=$condition, jobCancelTimeoutInMinutes=$jobCancelTimeoutInMinutes, overrideInputs=$overrideInputs, timeoutInMinutes=$timeoutInMinutes, ]';
  }

  AgentDeploymentInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['condition'] == null) {
      condition = null;
    } else {
          condition = json['condition'];
    }
    if (json['jobCancelTimeoutInMinutes'] == null) {
      jobCancelTimeoutInMinutes = null;
    } else {
          jobCancelTimeoutInMinutes = json['jobCancelTimeoutInMinutes'];
    }
    if (json['overrideInputs'] == null) {
      overrideInputs = null;
    } else {
          overrideInputs = (json['overrideInputs'] as Map).cast<String, String>();
    }
    if (json['timeoutInMinutes'] == null) {
      timeoutInMinutes = null;
    } else {
          timeoutInMinutes = json['timeoutInMinutes'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (condition != null)
      json['condition'] = condition;
    if (jobCancelTimeoutInMinutes != null)
      json['jobCancelTimeoutInMinutes'] = jobCancelTimeoutInMinutes;
    if (overrideInputs != null)
      json['overrideInputs'] = overrideInputs;
    if (timeoutInMinutes != null)
      json['timeoutInMinutes'] = timeoutInMinutes;
    return json;
  }

  static List<AgentDeploymentInput> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentDeploymentInput>() : json.map((value) => AgentDeploymentInput.fromJson(value)).toList();
  }

  static Map<String, AgentDeploymentInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentDeploymentInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentDeploymentInput.fromJson(value));
    }
    return map;
  }
}

