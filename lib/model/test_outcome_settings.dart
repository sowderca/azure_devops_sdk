part of azure_devops_sdk.api;

class TestOutcomeSettings {
  /* Value to configure how test outcomes for the same tests across suites are shown */
  bool syncOutcomeAcrossSuites = null;
  TestOutcomeSettings();

  @override
  String toString() {
    return 'TestOutcomeSettings[syncOutcomeAcrossSuites=$syncOutcomeAcrossSuites, ]';
  }

  TestOutcomeSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['syncOutcomeAcrossSuites'] == null) {
      syncOutcomeAcrossSuites = null;
    } else {
          syncOutcomeAcrossSuites = json['syncOutcomeAcrossSuites'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (syncOutcomeAcrossSuites != null)
      json['syncOutcomeAcrossSuites'] = syncOutcomeAcrossSuites;
    return json;
  }

  static List<TestOutcomeSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<TestOutcomeSettings>() : json.map((value) => TestOutcomeSettings.fromJson(value)).toList();
  }

  static Map<String, TestOutcomeSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestOutcomeSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestOutcomeSettings.fromJson(value));
    }
    return map;
  }
}

