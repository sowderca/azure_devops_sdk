part of azure_devops_sdk.api;

class TestResultsUpdateSettings {
  
  FlakySettings flakySettings = null;
  TestResultsUpdateSettings();

  @override
  String toString() {
    return 'TestResultsUpdateSettings[flakySettings=$flakySettings, ]';
  }

  TestResultsUpdateSettings.fromJson(Map<String, dynamic> json) {
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

  static List<TestResultsUpdateSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultsUpdateSettings>() : json.map((value) => TestResultsUpdateSettings.fromJson(value)).toList();
  }

  static Map<String, TestResultsUpdateSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultsUpdateSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultsUpdateSettings.fromJson(value));
    }
    return map;
  }
}

