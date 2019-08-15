part of azure_devops_sdk.api;

class GatesDeploymentInput {
  /* Gets or sets the job condition. */
  String condition = null;
  /* Gets or sets the job cancel timeout in minutes for deployment which are cancelled by user for this release environment. */
  int jobCancelTimeoutInMinutes = null;
  /* Gets or sets the override inputs. */
  Map<String, String> overrideInputs = {};
  /* Gets or sets the job execution timeout in minutes for deployment which are queued against this release environment. */
  int timeoutInMinutes = null;
  GatesDeploymentInput();

  @override
  String toString() {
    return 'GatesDeploymentInput[condition=$condition, jobCancelTimeoutInMinutes=$jobCancelTimeoutInMinutes, overrideInputs=$overrideInputs, timeoutInMinutes=$timeoutInMinutes, ]';
  }

  GatesDeploymentInput.fromJson(Map<String, dynamic> json) {
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

  static List<GatesDeploymentInput> listFromJson(List<dynamic> json) {
    return json == null ? List<GatesDeploymentInput>() : json.map((value) => GatesDeploymentInput.fromJson(value)).toList();
  }

  static Map<String, GatesDeploymentInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GatesDeploymentInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GatesDeploymentInput.fromJson(value));
    }
    return map;
  }
}

