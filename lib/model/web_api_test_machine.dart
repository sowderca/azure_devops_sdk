part of azure_devops_sdk.api;

class WebApiTestMachine {
  
  DateTime lastHeartBeat = null;
  
  String machineName = null;
  
  String status = null;
  WebApiTestMachine();

  @override
  String toString() {
    return 'WebApiTestMachine[lastHeartBeat=$lastHeartBeat, machineName=$machineName, status=$status, ]';
  }

  WebApiTestMachine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['lastHeartBeat'] == null) {
      lastHeartBeat = null;
    } else {
      lastHeartBeat = DateTime.parse(json['lastHeartBeat']);
    }
    if (json['machineName'] == null) {
      machineName = null;
    } else {
          machineName = json['machineName'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lastHeartBeat != null)
      json['lastHeartBeat'] = lastHeartBeat == null ? null : lastHeartBeat.toUtc().toIso8601String();
    if (machineName != null)
      json['machineName'] = machineName;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<WebApiTestMachine> listFromJson(List<dynamic> json) {
    return json == null ? List<WebApiTestMachine>() : json.map((value) => WebApiTestMachine.fromJson(value)).toList();
  }

  static Map<String, WebApiTestMachine> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebApiTestMachine>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebApiTestMachine.fromJson(value));
    }
    return map;
  }
}

