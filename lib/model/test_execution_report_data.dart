part of azure_devops_sdk.api;

class TestExecutionReportData {
  
  List<DatedTestFieldData> reportData = [];
  TestExecutionReportData();

  @override
  String toString() {
    return 'TestExecutionReportData[reportData=$reportData, ]';
  }

  TestExecutionReportData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['reportData'] == null) {
      reportData = null;
    } else {
      reportData = DatedTestFieldData.listFromJson(json['reportData']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (reportData != null)
      json['reportData'] = reportData;
    return json;
  }

  static List<TestExecutionReportData> listFromJson(List<dynamic> json) {
    return json == null ? List<TestExecutionReportData>() : json.map((value) => TestExecutionReportData.fromJson(value)).toList();
  }

  static Map<String, TestExecutionReportData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestExecutionReportData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestExecutionReportData.fromJson(value));
    }
    return map;
  }
}

