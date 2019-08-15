part of azure_devops_sdk.api;

class TestDrop {
  
  DropAccessData accessData = null;
  /* Time at which the drop is created */
  DateTime createdDate = null;
  /* Identifies the type of drop */
  String dropType = null;
  /* Drop Id */
  String id = null;
  
  LoadTestDefinition loadTestDefinition = null;
  /* Test Run Id */
  String testRunId = null;
  TestDrop();

  @override
  String toString() {
    return 'TestDrop[accessData=$accessData, createdDate=$createdDate, dropType=$dropType, id=$id, loadTestDefinition=$loadTestDefinition, testRunId=$testRunId, ]';
  }

  TestDrop.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accessData'] == null) {
      accessData = null;
    } else {
      accessData = DropAccessData.fromJson(json['accessData']);
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['dropType'] == null) {
      dropType = null;
    } else {
          dropType = json['dropType'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['loadTestDefinition'] == null) {
      loadTestDefinition = null;
    } else {
      loadTestDefinition = LoadTestDefinition.fromJson(json['loadTestDefinition']);
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accessData != null)
      json['accessData'] = accessData;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (dropType != null)
      json['dropType'] = dropType;
    if (id != null)
      json['id'] = id;
    if (loadTestDefinition != null)
      json['loadTestDefinition'] = loadTestDefinition;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<TestDrop> listFromJson(List<dynamic> json) {
    return json == null ? List<TestDrop>() : json.map((value) => TestDrop.fromJson(value)).toList();
  }

  static Map<String, TestDrop> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestDrop>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestDrop.fromJson(value));
    }
    return map;
  }
}

