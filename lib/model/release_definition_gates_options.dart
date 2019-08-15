part of azure_devops_sdk.api;

class ReleaseDefinitionGatesOptions {
  /* Gets or sets as the gates enabled or not. */
  bool isEnabled = null;
  /* Gets or sets the minimum duration for steady results after a successful gates evaluation. */
  int minimumSuccessDuration = null;
  /* Gets or sets the time between re-evaluation of gates. */
  int samplingInterval = null;
  /* Gets or sets the delay before evaluation. */
  int stabilizationTime = null;
  /* Gets or sets the timeout after which gates fail. */
  int timeout = null;
  ReleaseDefinitionGatesOptions();

  @override
  String toString() {
    return 'ReleaseDefinitionGatesOptions[isEnabled=$isEnabled, minimumSuccessDuration=$minimumSuccessDuration, samplingInterval=$samplingInterval, stabilizationTime=$stabilizationTime, timeout=$timeout, ]';
  }

  ReleaseDefinitionGatesOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isEnabled'] == null) {
      isEnabled = null;
    } else {
          isEnabled = json['isEnabled'];
    }
    if (json['minimumSuccessDuration'] == null) {
      minimumSuccessDuration = null;
    } else {
          minimumSuccessDuration = json['minimumSuccessDuration'];
    }
    if (json['samplingInterval'] == null) {
      samplingInterval = null;
    } else {
          samplingInterval = json['samplingInterval'];
    }
    if (json['stabilizationTime'] == null) {
      stabilizationTime = null;
    } else {
          stabilizationTime = json['stabilizationTime'];
    }
    if (json['timeout'] == null) {
      timeout = null;
    } else {
          timeout = json['timeout'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isEnabled != null)
      json['isEnabled'] = isEnabled;
    if (minimumSuccessDuration != null)
      json['minimumSuccessDuration'] = minimumSuccessDuration;
    if (samplingInterval != null)
      json['samplingInterval'] = samplingInterval;
    if (stabilizationTime != null)
      json['stabilizationTime'] = stabilizationTime;
    if (timeout != null)
      json['timeout'] = timeout;
    return json;
  }

  static List<ReleaseDefinitionGatesOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionGatesOptions>() : json.map((value) => ReleaseDefinitionGatesOptions.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionGatesOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionGatesOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionGatesOptions.fromJson(value));
    }
    return map;
  }
}

