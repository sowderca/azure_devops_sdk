part of azure_devops_sdk.api;

class LegacyTestCaseResultIdentifier {
  
  String areaUri = null;
  
  int testResultId = null;
  
  int testRunId = null;
  LegacyTestCaseResultIdentifier();

  @override
  String toString() {
    return 'LegacyTestCaseResultIdentifier[areaUri=$areaUri, testResultId=$testResultId, testRunId=$testRunId, ]';
  }

  LegacyTestCaseResultIdentifier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['areaUri'] == null) {
      areaUri = null;
    } else {
          areaUri = json['areaUri'];
    }
    if (json['testResultId'] == null) {
      testResultId = null;
    } else {
          testResultId = json['testResultId'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (areaUri != null)
      json['areaUri'] = areaUri;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<LegacyTestCaseResultIdentifier> listFromJson(List<dynamic> json) {
    return json == null ? List<LegacyTestCaseResultIdentifier>() : json.map((value) => LegacyTestCaseResultIdentifier.fromJson(value)).toList();
  }

  static Map<String, LegacyTestCaseResultIdentifier> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LegacyTestCaseResultIdentifier>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LegacyTestCaseResultIdentifier.fromJson(value));
    }
    return map;
  }
}

