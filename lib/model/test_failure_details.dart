part of azure_devops_sdk.api;

class TestFailureDetails {
  
  int count = null;
  
  List<TestCaseResultIdentifier> testResults = [];
  TestFailureDetails();

  @override
  String toString() {
    return 'TestFailureDetails[count=$count, testResults=$testResults, ]';
  }

  TestFailureDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['testResults'] == null) {
      testResults = null;
    } else {
      testResults = TestCaseResultIdentifier.listFromJson(json['testResults']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (testResults != null)
      json['testResults'] = testResults;
    return json;
  }

  static List<TestFailureDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<TestFailureDetails>() : json.map((value) => TestFailureDetails.fromJson(value)).toList();
  }

  static Map<String, TestFailureDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestFailureDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestFailureDetails.fromJson(value));
    }
    return map;
  }
}

