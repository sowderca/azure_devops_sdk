part of azure_devops_sdk.api;

class TestCaseMetadata2 {
  
  String container = null;
  
  String name = null;
  
  String projectId = null;
  
  int testMetadataId = null;
  TestCaseMetadata2();

  @override
  String toString() {
    return 'TestCaseMetadata2[container=$container, name=$name, projectId=$projectId, testMetadataId=$testMetadataId, ]';
  }

  TestCaseMetadata2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['container'] == null) {
      container = null;
    } else {
          container = json['container'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['testMetadataId'] == null) {
      testMetadataId = null;
    } else {
          testMetadataId = json['testMetadataId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (container != null)
      json['container'] = container;
    if (name != null)
      json['name'] = name;
    if (projectId != null)
      json['projectId'] = projectId;
    if (testMetadataId != null)
      json['testMetadataId'] = testMetadataId;
    return json;
  }

  static List<TestCaseMetadata2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestCaseMetadata2>() : json.map((value) => TestCaseMetadata2.fromJson(value)).toList();
  }

  static Map<String, TestCaseMetadata2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestCaseMetadata2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestCaseMetadata2.fromJson(value));
    }
    return map;
  }
}

