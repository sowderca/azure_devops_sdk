part of azure_devops_sdk.api;

class DeploymentGatesChangeEvent {
  
  List<String> gateNames = [];
  DeploymentGatesChangeEvent();

  @override
  String toString() {
    return 'DeploymentGatesChangeEvent[gateNames=$gateNames, ]';
  }

  DeploymentGatesChangeEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['gateNames'] == null) {
      gateNames = null;
    } else {
      gateNames = (json['gateNames'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (gateNames != null)
      json['gateNames'] = gateNames;
    return json;
  }

  static List<DeploymentGatesChangeEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentGatesChangeEvent>() : json.map((value) => DeploymentGatesChangeEvent.fromJson(value)).toList();
  }

  static Map<String, DeploymentGatesChangeEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentGatesChangeEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentGatesChangeEvent.fromJson(value));
    }
    return map;
  }
}

