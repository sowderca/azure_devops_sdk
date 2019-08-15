part of azure_devops_sdk.api;

class SuiteEntry {
  /* Id of child suite in the test suite. */
  int childSuiteId = null;
  /* Sequence number for the test case or child test suite in the test suite. */
  int sequenceNumber = null;
  /* Id for the test suite. */
  int suiteId = null;
  /* Id of a test case in the test suite. */
  int testCaseId = null;
  SuiteEntry();

  @override
  String toString() {
    return 'SuiteEntry[childSuiteId=$childSuiteId, sequenceNumber=$sequenceNumber, suiteId=$suiteId, testCaseId=$testCaseId, ]';
  }

  SuiteEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['childSuiteId'] == null) {
      childSuiteId = null;
    } else {
          childSuiteId = json['childSuiteId'];
    }
    if (json['sequenceNumber'] == null) {
      sequenceNumber = null;
    } else {
          sequenceNumber = json['sequenceNumber'];
    }
    if (json['suiteId'] == null) {
      suiteId = null;
    } else {
          suiteId = json['suiteId'];
    }
    if (json['testCaseId'] == null) {
      testCaseId = null;
    } else {
          testCaseId = json['testCaseId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (childSuiteId != null)
      json['childSuiteId'] = childSuiteId;
    if (sequenceNumber != null)
      json['sequenceNumber'] = sequenceNumber;
    if (suiteId != null)
      json['suiteId'] = suiteId;
    if (testCaseId != null)
      json['testCaseId'] = testCaseId;
    return json;
  }

  static List<SuiteEntry> listFromJson(List<dynamic> json) {
    return json == null ? List<SuiteEntry>() : json.map((value) => SuiteEntry.fromJson(value)).toList();
  }

  static Map<String, SuiteEntry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SuiteEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SuiteEntry.fromJson(value));
    }
    return map;
  }
}

