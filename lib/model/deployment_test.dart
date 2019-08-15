part of azure_devops_sdk.api;

class DeploymentTest {
  
  String type = null;
  DeploymentTest();

  @override
  String toString() {
    return 'DeploymentTest[type=$type, ]';
  }

  DeploymentTest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<DeploymentTest> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentTest>() : json.map((value) => DeploymentTest.fromJson(value)).toList();
  }

  static Map<String, DeploymentTest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentTest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentTest.fromJson(value));
    }
    return map;
  }
}

