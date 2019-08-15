part of azure_devops_sdk.api;

class GatesDeployPhase {
  /* Gets and sets the name of deploy phase. */
  String name = null;
  /* Indicates the deploy phase type. */
  String phaseType = null;
  //enum phaseTypeEnum {  undefined,  agentBasedDeployment,  runOnServer,  machineGroupBasedDeployment,  deploymentGates,  };{
  /* Gets and sets the rank of deploy phase. */
  int rank = null;
  /* Gets and sets the reference name of deploy phase. */
  String refName = null;
  /* Gets and sets the workflow tasks for the deploy phase. */
  List<WorkflowTask> workflowTasks = [];
  GatesDeployPhase();

  @override
  String toString() {
    return 'GatesDeployPhase[name=$name, phaseType=$phaseType, rank=$rank, refName=$refName, workflowTasks=$workflowTasks, ]';
  }

  GatesDeployPhase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
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
    if (json['refName'] == null) {
      refName = null;
    } else {
          refName = json['refName'];
    }
    if (json['workflowTasks'] == null) {
      workflowTasks = null;
    } else {
      workflowTasks = WorkflowTask.listFromJson(json['workflowTasks']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (phaseType != null)
      json['phaseType'] = phaseType;
    if (rank != null)
      json['rank'] = rank;
    if (refName != null)
      json['refName'] = refName;
    if (workflowTasks != null)
      json['workflowTasks'] = workflowTasks;
    return json;
  }

  static List<GatesDeployPhase> listFromJson(List<dynamic> json) {
    return json == null ? List<GatesDeployPhase>() : json.map((value) => GatesDeployPhase.fromJson(value)).toList();
  }

  static Map<String, GatesDeployPhase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GatesDeployPhase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GatesDeployPhase.fromJson(value));
    }
    return map;
  }
}

