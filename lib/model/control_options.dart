part of azure_devops_sdk.api;

class ControlOptions {
  /* Always run the job. */
  bool alwaysRun = null;
  /* Indicates whether to continue job on error or not. */
  bool continueOnError = null;
  /* Indicates the job enabled or not. */
  bool enabled = null;
  ControlOptions();

  @override
  String toString() {
    return 'ControlOptions[alwaysRun=$alwaysRun, continueOnError=$continueOnError, enabled=$enabled, ]';
  }

  ControlOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['alwaysRun'] == null) {
      alwaysRun = null;
    } else {
          alwaysRun = json['alwaysRun'];
    }
    if (json['continueOnError'] == null) {
      continueOnError = null;
    } else {
          continueOnError = json['continueOnError'];
    }
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (alwaysRun != null)
      json['alwaysRun'] = alwaysRun;
    if (continueOnError != null)
      json['continueOnError'] = continueOnError;
    if (enabled != null)
      json['enabled'] = enabled;
    return json;
  }

  static List<ControlOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<ControlOptions>() : json.map((value) => ControlOptions.fromJson(value)).toList();
  }

  static Map<String, ControlOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ControlOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ControlOptions.fromJson(value));
    }
    return map;
  }
}

