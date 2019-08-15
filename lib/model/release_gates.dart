part of azure_devops_sdk.api;

class ReleaseGates {
  /* Contains the gates job details of each evaluation. */
  List<DeploymentJob> deploymentJobs = [];
  /* ID of release gates. */
  int id = null;
  /* List of ignored gates. */
  List<IgnoredGate> ignoredGates = [];
  /* Gates last modified time. */
  DateTime lastModifiedOn = null;
  /* Run plan ID of the gates. */
  String runPlanId = null;
  /* Gates stabilization completed date and time. */
  DateTime stabilizationCompletedOn = null;
  /* Gates evaluation started time. */
  DateTime startedOn = null;
  /* Status of release gates. */
  String status = null;
  //enum statusEnum {  none,  pending,  inProgress,  succeeded,  failed,  canceled,  };{
  /* Date and time at which all gates executed successfully. */
  DateTime succeedingSince = null;
  ReleaseGates();

  @override
  String toString() {
    return 'ReleaseGates[deploymentJobs=$deploymentJobs, id=$id, ignoredGates=$ignoredGates, lastModifiedOn=$lastModifiedOn, runPlanId=$runPlanId, stabilizationCompletedOn=$stabilizationCompletedOn, startedOn=$startedOn, status=$status, succeedingSince=$succeedingSince, ]';
  }

  ReleaseGates.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deploymentJobs'] == null) {
      deploymentJobs = null;
    } else {
      deploymentJobs = DeploymentJob.listFromJson(json['deploymentJobs']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['ignoredGates'] == null) {
      ignoredGates = null;
    } else {
      ignoredGates = IgnoredGate.listFromJson(json['ignoredGates']);
    }
    if (json['lastModifiedOn'] == null) {
      lastModifiedOn = null;
    } else {
      lastModifiedOn = DateTime.parse(json['lastModifiedOn']);
    }
    if (json['runPlanId'] == null) {
      runPlanId = null;
    } else {
          runPlanId = json['runPlanId'];
    }
    if (json['stabilizationCompletedOn'] == null) {
      stabilizationCompletedOn = null;
    } else {
      stabilizationCompletedOn = DateTime.parse(json['stabilizationCompletedOn']);
    }
    if (json['startedOn'] == null) {
      startedOn = null;
    } else {
      startedOn = DateTime.parse(json['startedOn']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['succeedingSince'] == null) {
      succeedingSince = null;
    } else {
      succeedingSince = DateTime.parse(json['succeedingSince']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deploymentJobs != null)
      json['deploymentJobs'] = deploymentJobs;
    if (id != null)
      json['id'] = id;
    if (ignoredGates != null)
      json['ignoredGates'] = ignoredGates;
    if (lastModifiedOn != null)
      json['lastModifiedOn'] = lastModifiedOn == null ? null : lastModifiedOn.toUtc().toIso8601String();
    if (runPlanId != null)
      json['runPlanId'] = runPlanId;
    if (stabilizationCompletedOn != null)
      json['stabilizationCompletedOn'] = stabilizationCompletedOn == null ? null : stabilizationCompletedOn.toUtc().toIso8601String();
    if (startedOn != null)
      json['startedOn'] = startedOn == null ? null : startedOn.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    if (succeedingSince != null)
      json['succeedingSince'] = succeedingSince == null ? null : succeedingSince.toUtc().toIso8601String();
    return json;
  }

  static List<ReleaseGates> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseGates>() : json.map((value) => ReleaseGates.fromJson(value)).toList();
  }

  static Map<String, ReleaseGates> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseGates>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseGates.fromJson(value));
    }
    return map;
  }
}

