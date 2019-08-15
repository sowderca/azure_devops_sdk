part of azure_devops_sdk.api;

class TestResultMetaData {
  /* AutomatedTestName of test result. */
  String automatedTestName = null;
  /* AutomatedTestStorage of test result. */
  String automatedTestStorage = null;
  /* List of Flaky Identifier for TestCaseReferenceId */
  List<TestFlakyIdentifier> flakyIdentifiers = [];
  /* Owner of test result. */
  String owner = null;
  /* Priority of test result. */
  int priority = null;
  /* ID of TestCaseReference. */
  int testCaseReferenceId = null;
  /* TestCaseTitle of test result. */
  String testCaseTitle = null;
  TestResultMetaData();

  @override
  String toString() {
    return 'TestResultMetaData[automatedTestName=$automatedTestName, automatedTestStorage=$automatedTestStorage, flakyIdentifiers=$flakyIdentifiers, owner=$owner, priority=$priority, testCaseReferenceId=$testCaseReferenceId, testCaseTitle=$testCaseTitle, ]';
  }

  TestResultMetaData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['automatedTestName'] == null) {
      automatedTestName = null;
    } else {
          automatedTestName = json['automatedTestName'];
    }
    if (json['automatedTestStorage'] == null) {
      automatedTestStorage = null;
    } else {
          automatedTestStorage = json['automatedTestStorage'];
    }
    if (json['flakyIdentifiers'] == null) {
      flakyIdentifiers = null;
    } else {
      flakyIdentifiers = TestFlakyIdentifier.listFromJson(json['flakyIdentifiers']);
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
          owner = json['owner'];
    }
    if (json['priority'] == null) {
      priority = null;
    } else {
          priority = json['priority'];
    }
    if (json['testCaseReferenceId'] == null) {
      testCaseReferenceId = null;
    } else {
          testCaseReferenceId = json['testCaseReferenceId'];
    }
    if (json['testCaseTitle'] == null) {
      testCaseTitle = null;
    } else {
          testCaseTitle = json['testCaseTitle'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (automatedTestName != null)
      json['automatedTestName'] = automatedTestName;
    if (automatedTestStorage != null)
      json['automatedTestStorage'] = automatedTestStorage;
    if (flakyIdentifiers != null)
      json['flakyIdentifiers'] = flakyIdentifiers;
    if (owner != null)
      json['owner'] = owner;
    if (priority != null)
      json['priority'] = priority;
    if (testCaseReferenceId != null)
      json['testCaseReferenceId'] = testCaseReferenceId;
    if (testCaseTitle != null)
      json['testCaseTitle'] = testCaseTitle;
    return json;
  }

  static List<TestResultMetaData> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultMetaData>() : json.map((value) => TestResultMetaData.fromJson(value)).toList();
  }

  static Map<String, TestResultMetaData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultMetaData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultMetaData.fromJson(value));
    }
    return map;
  }
}

