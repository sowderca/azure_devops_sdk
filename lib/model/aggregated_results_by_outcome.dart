part of azure_devops_sdk.api;

class AggregatedResultsByOutcome {
  
  int count = null;
  
  String duration = null;
  
  String groupByField = null;
  
  Object groupByValue = null;
  
  String outcome = null;
  //enum outcomeEnum {  unspecified,  none,  passed,  failed,  inconclusive,  timeout,  aborted,  blocked,  notExecuted,  warning,  error,  notApplicable,  paused,  inProgress,  notImpacted,  };{
  
  int rerunResultCount = null;
  AggregatedResultsByOutcome();

  @override
  String toString() {
    return 'AggregatedResultsByOutcome[count=$count, duration=$duration, groupByField=$groupByField, groupByValue=$groupByValue, outcome=$outcome, rerunResultCount=$rerunResultCount, ]';
  }

  AggregatedResultsByOutcome.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['duration'] == null) {
      duration = null;
    } else {
          duration = json['duration'];
    }
    if (json['groupByField'] == null) {
      groupByField = null;
    } else {
          groupByField = json['groupByField'];
    }
    if (json['groupByValue'] == null) {
      groupByValue = null;
    } else {
          groupByValue = json['groupByValue'];
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['rerunResultCount'] == null) {
      rerunResultCount = null;
    } else {
          rerunResultCount = json['rerunResultCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (duration != null)
      json['duration'] = duration;
    if (groupByField != null)
      json['groupByField'] = groupByField;
    if (groupByValue != null)
      json['groupByValue'] = groupByValue;
    if (outcome != null)
      json['outcome'] = outcome;
    if (rerunResultCount != null)
      json['rerunResultCount'] = rerunResultCount;
    return json;
  }

  static List<AggregatedResultsByOutcome> listFromJson(List<dynamic> json) {
    return json == null ? List<AggregatedResultsByOutcome>() : json.map((value) => AggregatedResultsByOutcome.fromJson(value)).toList();
  }

  static Map<String, AggregatedResultsByOutcome> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AggregatedResultsByOutcome>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AggregatedResultsByOutcome.fromJson(value));
    }
    return map;
  }
}

