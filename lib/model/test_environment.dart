part of azure_devops_sdk.api;

class TestEnvironment {
  /* Test Environment Id. */
  String environmentId = null;
  /* Test Environment Name. */
  String environmentName = null;
  TestEnvironment();

  @override
  String toString() {
    return 'TestEnvironment[environmentId=$environmentId, environmentName=$environmentName, ]';
  }

  TestEnvironment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['environmentId'] == null) {
      environmentId = null;
    } else {
          environmentId = json['environmentId'];
    }
    if (json['environmentName'] == null) {
      environmentName = null;
    } else {
          environmentName = json['environmentName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (environmentId != null)
      json['environmentId'] = environmentId;
    if (environmentName != null)
      json['environmentName'] = environmentName;
    return json;
  }

  static List<TestEnvironment> listFromJson(List<dynamic> json) {
    return json == null ? List<TestEnvironment>() : json.map((value) => TestEnvironment.fromJson(value)).toList();
  }

  static Map<String, TestEnvironment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestEnvironment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestEnvironment.fromJson(value));
    }
    return map;
  }
}

