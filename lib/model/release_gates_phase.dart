part of azure_devops_sdk.api;

class ReleaseGatesPhase {
  /* Deployment jobs of the phase. */
  List<DeploymentJob> deploymentJobs = [];
  /* Phase execution error logs. */
  String errorLog = null;
  /* List of manual intervention tasks execution information in phase. */
  List<ManualIntervention> manualInterventions = [];
  /* Name of the phase. */
  String name = null;
  /* ID of the phase. */
  String phaseId = null;
  /* Type of the phase. */
  String phaseType = null;
  //enum phaseTypeEnum {  undefined,  agentBasedDeployment,  runOnServer,  machineGroupBasedDeployment,  deploymentGates,  };{
  /* Rank of the phase. */
  int rank = null;
  /* Run Plan ID of the phase. */
  String runPlanId = null;
  /* Phase start time. */
  DateTime startedOn = null;
  /* Status of the phase. */
  String status = null;
  //enum statusEnum {  undefined,  notStarted,  inProgress,  partiallySucceeded,  succeeded,  failed,  canceled,  skipped,  cancelling,  };{
  ReleaseGatesPhase();

  @override
  String toString() {
    return 'ReleaseGatesPhase[deploymentJobs=$deploymentJobs, errorLog=$errorLog, manualInterventions=$manualInterventions, name=$name, phaseId=$phaseId, phaseType=$phaseType, rank=$rank, runPlanId=$runPlanId, startedOn=$startedOn, status=$status, ]';
  }

  ReleaseGatesPhase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deploymentJobs'] == null) {
      deploymentJobs = null;
    } else {
      deploymentJobs = DeploymentJob.listFromJson(json['deploymentJobs']);
    }
    if (json['errorLog'] == null) {
      errorLog = null;
    } else {
          errorLog = json['errorLog'];
    }
    if (json['manualInterventions'] == null) {
      manualInterventions = null;
    } else {
      manualInterventions = ManualIntervention.listFromJson(json['manualInterventions']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['phaseId'] == null) {
      phaseId = null;
    } else {
          phaseId = json['phaseId'];
    }
    if (json['phaseType'] == null) {
      phaseType = null;
    } else {
          phaseType = json['phaseType'];
    }
    if (json['rank'] == null) {
      rank = null;
    } else {
          rank = json['rank'];
    }
    if (json['runPlanId'] == null) {
      runPlanId = null;
    } else {
          runPlanId = json['runPlanId'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deploymentJobs != null)
      json['deploymentJobs'] = deploymentJobs;
    if (errorLog != null)
      json['errorLog'] = errorLog;
    if (manualInterventions != null)
      json['manualInterventions'] = manualInterventions;
    if (name != null)
      json['name'] = name;
    if (phaseId != null)
      json['phaseId'] = phaseId;
    if (phaseType != null)
      json['phaseType'] = phaseType;
    if (rank != null)
      json['rank'] = rank;
    if (runPlanId != null)
      json['runPlanId'] = runPlanId;
    if (startedOn != null)
      json['startedOn'] = startedOn == null ? null : startedOn.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<ReleaseGatesPhase> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseGatesPhase>() : json.map((value) => ReleaseGatesPhase.fromJson(value)).toList();
  }

  static Map<String, ReleaseGatesPhase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseGatesPhase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseGatesPhase.fromJson(value));
    }
    return map;
  }
}

