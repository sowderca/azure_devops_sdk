part of azure_devops_sdk.api;

class FlakySettings {
  
  FlakyDetection flakyDetection = null;
  /* FlakyInSummaryReport defines flaky data should show in summary report or not. */
  bool flakyInSummaryReport = null;
  /* ManualMarkUnmarkFlaky defines manual marking unmarking of flaky testcase. */
  bool manualMarkUnmarkFlaky = null;
  FlakySettings();

  @override
  String toString() {
    return 'FlakySettings[flakyDetection=$flakyDetection, flakyInSummaryReport=$flakyInSummaryReport, manualMarkUnmarkFlaky=$manualMarkUnmarkFlaky, ]';
  }

  FlakySettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['flakyDetection'] == null) {
      flakyDetection = null;
    } else {
      flakyDetection = FlakyDetection.fromJson(json['flakyDetection']);
    }
    if (json['flakyInSummaryReport'] == null) {
      flakyInSummaryReport = null;
    } else {
          flakyInSummaryReport = json['flakyInSummaryReport'];
    }
    if (json['manualMarkUnmarkFlaky'] == null) {
      manualMarkUnmarkFlaky = null;
    } else {
          manualMarkUnmarkFlaky = json['manualMarkUnmarkFlaky'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (flakyDetection != null)
      json['flakyDetection'] = flakyDetection;
    if (flakyInSummaryReport != null)
      json['flakyInSummaryReport'] = flakyInSummaryReport;
    if (manualMarkUnmarkFlaky != null)
      json['manualMarkUnmarkFlaky'] = manualMarkUnmarkFlaky;
    return json;
  }

  static List<FlakySettings> listFromJson(List<dynamic> json) {
    return json == null ? List<FlakySettings>() : json.map((value) => FlakySettings.fromJson(value)).toList();
  }

  static Map<String, FlakySettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FlakySettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FlakySettings.fromJson(value));
    }
    return map;
  }
}

