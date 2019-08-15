part of azure_devops_sdk.api;

class VirtualMachineGroupCreateParameters {
  
  String name = null;
  VirtualMachineGroupCreateParameters();

  @override
  String toString() {
    return 'VirtualMachineGroupCreateParameters[name=$name, ]';
  }

  VirtualMachineGroupCreateParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<VirtualMachineGroupCreateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<VirtualMachineGroupCreateParameters>() : json.map((value) => VirtualMachineGroupCreateParameters.fromJson(value)).toList();
  }

  static Map<String, VirtualMachineGroupCreateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VirtualMachineGroupCreateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VirtualMachineGroupCreateParameters.fromJson(value));
    }
    return map;
  }
}

