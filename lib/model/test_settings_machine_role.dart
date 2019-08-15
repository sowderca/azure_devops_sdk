part of azure_devops_sdk.api;

class TestSettingsMachineRole {
  
  bool isExecution = null;
  
  String name = null;
  TestSettingsMachineRole();

  @override
  String toString() {
    return 'TestSettingsMachineRole[isExecution=$isExecution, name=$name, ]';
  }

  TestSettingsMachineRole.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isExecution'] == null) {
      isExecution = null;
    } else {
          isExecution = json['isExecution'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isExecution != null)
      json['isExecution'] = isExecution;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<TestSettingsMachineRole> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSettingsMachineRole>() : json.map((value) => TestSettingsMachineRole.fromJson(value)).toList();
  }

  static Map<String, TestSettingsMachineRole> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSettingsMachineRole>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSettingsMachineRole.fromJson(value));
    }
    return map;
  }
}

