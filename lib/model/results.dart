part of azure_devops_sdk.api;

class Results {
  /* Outcome of the Test Point */
  String outcome = null;
  //enum outcomeEnum {  unspecified,  none,  passed,  failed,  inconclusive,  timeout,  aborted,  blocked,  notExecuted,  warning,  error,  notApplicable,  paused,  inProgress,  notImpacted,  maxValue,  };{
  Results();

  @override
  String toString() {
    return 'Results[outcome=$outcome, ]';
  }

  Results.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (outcome != null)
      json['outcome'] = outcome;
    return json;
  }

  static List<Results> listFromJson(List<dynamic> json) {
    return json == null ? List<Results>() : json.map((value) => Results.fromJson(value)).toList();
  }

  static Map<String, Results> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Results>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Results.fromJson(value));
    }
    return map;
  }
}

