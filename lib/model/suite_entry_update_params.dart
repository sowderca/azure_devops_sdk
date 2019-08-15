part of azure_devops_sdk.api;

class SuiteEntryUpdateParams {
  /* Id of the suite entry in the test suite: either a test case id or child suite id. */
  int id = null;
  /* Sequence number for the suite entry object in the test suite. */
  int sequenceNumber = null;
  /* Defines whether the entry is of type test case or suite. */
  String suiteEntryType = null;
  //enum suiteEntryTypeEnum {  testCase,  suite,  };{
  SuiteEntryUpdateParams();

  @override
  String toString() {
    return 'SuiteEntryUpdateParams[id=$id, sequenceNumber=$sequenceNumber, suiteEntryType=$suiteEntryType, ]';
  }

  SuiteEntryUpdateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['sequenceNumber'] == null) {
      sequenceNumber = null;
    } else {
          sequenceNumber = json['sequenceNumber'];
    }
    if (json['suiteEntryType'] == null) {
      suiteEntryType = null;
    } else {
          suiteEntryType = json['suiteEntryType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (sequenceNumber != null)
      json['sequenceNumber'] = sequenceNumber;
    if (suiteEntryType != null)
      json['suiteEntryType'] = suiteEntryType;
    return json;
  }

  static List<SuiteEntryUpdateParams> listFromJson(List<dynamic> json) {
    return json == null ? List<SuiteEntryUpdateParams>() : json.map((value) => SuiteEntryUpdateParams.fromJson(value)).toList();
  }

  static Map<String, SuiteEntryUpdateParams> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SuiteEntryUpdateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SuiteEntryUpdateParams.fromJson(value));
    }
    return map;
  }
}

