part of azure_devops_sdk.api;

class DeploymentMachinesChangeEvent {
  
  DeploymentGroupReference machineGroupReference = null;
  
  List<DeploymentMachineChangedData> machines = [];
  DeploymentMachinesChangeEvent();

  @override
  String toString() {
    return 'DeploymentMachinesChangeEvent[machineGroupReference=$machineGroupReference, machines=$machines, ]';
  }

  DeploymentMachinesChangeEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['machineGroupReference'] == null) {
      machineGroupReference = null;
    } else {
      machineGroupReference = DeploymentGroupReference.fromJson(json['machineGroupReference']);
    }
    if (json['machines'] == null) {
      machines = null;
    } else {
      machines = DeploymentMachineChangedData.listFromJson(json['machines']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (machineGroupReference != null)
      json['machineGroupReference'] = machineGroupReference;
    if (machines != null)
      json['machines'] = machines;
    return json;
  }

  static List<DeploymentMachinesChangeEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentMachinesChangeEvent>() : json.map((value) => DeploymentMachinesChangeEvent.fromJson(value)).toList();
  }

  static Map<String, DeploymentMachinesChangeEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentMachinesChangeEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentMachinesChangeEvent.fromJson(value));
    }
    return map;
  }
}

