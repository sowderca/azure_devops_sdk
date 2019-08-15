part of azure_devops_sdk.api;

class TestResultsSettings {
  
  FlakySettings flakySettings = null;
  TestResultsSettings();

  @override
  String toString() {
    return 'TestResultsSettings[flakySettings=$flakySettings, ]';
  }

  TestResultsSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['flakySettings'] == null) {
      flakySettings = null;
    } else {
      flakySettings = FlakySettings.fromJson(json['flakySettings']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (flakySettings != null)
      json['flakySettings'] = flakySettings;
    return json;
  }

  static List<TestResultsSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultsSettings>() : json.map((value) => TestResultsSettings.fromJson(value)).toList();
  }

  static Map<String, TestResultsSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultsSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultsSettings.fromJson(value));
    }
    return map;
  }
}

