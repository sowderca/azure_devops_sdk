part of azure_devops_sdk.api;

class VirtualMachine {
  
  TaskAgent agent = null;
  
  int id = null;
  
  List<String> tags = [];
  VirtualMachine();

  @override
  String toString() {
    return 'VirtualMachine[agent=$agent, id=$id, tags=$tags, ]';
  }

  VirtualMachine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agent'] == null) {
      agent = null;
    } else {
      agent = TaskAgent.fromJson(json['agent']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = (json['tags'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agent != null)
      json['agent'] = agent;
    if (id != null)
      json['id'] = id;
    if (tags != null)
      json['tags'] = tags;
    return json;
  }

  static List<VirtualMachine> listFromJson(List<dynamic> json) {
    return json == null ? List<VirtualMachine>() : json.map((value) => VirtualMachine.fromJson(value)).toList();
  }

  static Map<String, VirtualMachine> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VirtualMachine>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VirtualMachine.fromJson(value));
    }
    return map;
  }
}

