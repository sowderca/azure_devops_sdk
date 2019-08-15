part of azure_devops_sdk.api;

class SuiteEntryUpdateModel {
  /* Id of the child suite in the test suite. */
  int childSuiteId = null;
  /* Updated sequence number for the test case or child test suite in the test suite. */
  int sequenceNumber = null;
  /* Id of the test case in the test suite. */
  int testCaseId = null;
  SuiteEntryUpdateModel();

  @override
  String toString() {
    return 'SuiteEntryUpdateModel[childSuiteId=$childSuiteId, sequenceNumber=$sequenceNumber, testCaseId=$testCaseId, ]';
  }

  SuiteEntryUpdateModel.fromJson(Map<String, dynamic> json) {
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
    if (testCaseId != null)
      json['testCaseId'] = testCaseId;
    return json;
  }

  static List<SuiteEntryUpdateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<SuiteEntryUpdateModel>() : json.map((value) => SuiteEntryUpdateModel.fromJson(value)).toList();
  }

  static Map<String, SuiteEntryUpdateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SuiteEntryUpdateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SuiteEntryUpdateModel.fromJson(value));
    }
    return map;
  }
}

