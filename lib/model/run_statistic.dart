part of azure_devops_sdk.api;

class RunStatistic {
  /* Test result count fo the given outcome. */
  int count = null;
  /* Test result outcome */
  String outcome = null;
  
  TestResolutionState resolutionState = null;
  /* State of the test run */
  String state = null;
  RunStatistic();

  @override
  String toString() {
    return 'RunStatistic[count=$count, outcome=$outcome, resolutionState=$resolutionState, state=$state, ]';
  }

  RunStatistic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['resolutionState'] == null) {
      resolutionState = null;
    } else {
      resolutionState = TestResolutionState.fromJson(json['resolutionState']);
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (outcome != null)
      json['outcome'] = outcome;
    if (resolutionState != null)
      json['resolutionState'] = resolutionState;
    if (state != null)
      json['state'] = state;
    return json;
  }

  static List<RunStatistic> listFromJson(List<dynamic> json) {
    return json == null ? List<RunStatistic>() : json.map((value) => RunStatistic.fromJson(value)).toList();
  }

  static Map<String, RunStatistic> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RunStatistic>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RunStatistic.fromJson(value));
    }
    return map;
  }
}

