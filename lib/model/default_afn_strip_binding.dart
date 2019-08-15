part of azure_devops_sdk.api;

class DefaultAfnStripBinding {
  
  int testCaseId = null;
  
  int testResultId = null;
  
  int testRunId = null;
  DefaultAfnStripBinding();

  @override
  String toString() {
    return 'DefaultAfnStripBinding[testCaseId=$testCaseId, testResultId=$testResultId, testRunId=$testRunId, ]';
  }

  DefaultAfnStripBinding.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['testCaseId'] == null) {
      testCaseId = null;
    } else {
          testCaseId = json['testCaseId'];
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
    if (testCaseId != null)
      json['testCaseId'] = testCaseId;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<DefaultAfnStripBinding> listFromJson(List<dynamic> json) {
    return json == null ? List<DefaultAfnStripBinding>() : json.map((value) => DefaultAfnStripBinding.fromJson(value)).toList();
  }

  static Map<String, DefaultAfnStripBinding> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DefaultAfnStripBinding>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DefaultAfnStripBinding.fromJson(value));
    }
    return map;
  }
}

