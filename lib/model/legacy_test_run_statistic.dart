part of azure_devops_sdk.api;

class LegacyTestRunStatistic {
  
  int count = null;
  
  String outcome = null;
  
  TestResolutionState resolutionState = null;
  
  String state = null;
  
  int testRunId = null;
  LegacyTestRunStatistic();

  @override
  String toString() {
    return 'LegacyTestRunStatistic[count=$count, outcome=$outcome, resolutionState=$resolutionState, state=$state, testRunId=$testRunId, ]';
  }

  LegacyTestRunStatistic.fromJson(Map<String, dynamic> json) {
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
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
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
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<LegacyTestRunStatistic> listFromJson(List<dynamic> json) {
    return json == null ? List<LegacyTestRunStatistic>() : json.map((value) => LegacyTestRunStatistic.fromJson(value)).toList();
  }

  static Map<String, LegacyTestRunStatistic> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LegacyTestRunStatistic>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LegacyTestRunStatistic.fromJson(value));
    }
    return map;
  }
}

