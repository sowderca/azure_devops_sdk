part of azure_devops_sdk.api;

class TestPointCount {
  /* Test Point Count */
  int count = null;
  /* Test Plan under which the Test Points are */
  int testPlanId = null;
  /* Test Suite under which the Test Points are */
  int testSuiteId = null;
  TestPointCount();

  @override
  String toString() {
    return 'TestPointCount[count=$count, testPlanId=$testPlanId, testSuiteId=$testSuiteId, ]';
  }

  TestPointCount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['testPlanId'] == null) {
      testPlanId = null;
    } else {
          testPlanId = json['testPlanId'];
    }
    if (json['testSuiteId'] == null) {
      testSuiteId = null;
    } else {
          testSuiteId = json['testSuiteId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (testPlanId != null)
      json['testPlanId'] = testPlanId;
    if (testSuiteId != null)
      json['testSuiteId'] = testSuiteId;
    return json;
  }

  static List<TestPointCount> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPointCount>() : json.map((value) => TestPointCount.fromJson(value)).toList();
  }

  static Map<String, TestPointCount> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPointCount>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPointCount.fromJson(value));
    }
    return map;
  }
}

