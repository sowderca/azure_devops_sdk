part of azure_devops_sdk.api;

class AggregatedRunsByOutcome {
  
  String outcome = null;
  //enum outcomeEnum {  passed,  failed,  notImpacted,  others,  };{
  
  int runsCount = null;
  AggregatedRunsByOutcome();

  @override
  String toString() {
    return 'AggregatedRunsByOutcome[outcome=$outcome, runsCount=$runsCount, ]';
  }

  AggregatedRunsByOutcome.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['runsCount'] == null) {
      runsCount = null;
    } else {
          runsCount = json['runsCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (outcome != null)
      json['outcome'] = outcome;
    if (runsCount != null)
      json['runsCount'] = runsCount;
    return json;
  }

  static List<AggregatedRunsByOutcome> listFromJson(List<dynamic> json) {
    return json == null ? List<AggregatedRunsByOutcome>() : json.map((value) => AggregatedRunsByOutcome.fromJson(value)).toList();
  }

  static Map<String, AggregatedRunsByOutcome> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AggregatedRunsByOutcome>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AggregatedRunsByOutcome.fromJson(value));
    }
    return map;
  }
}

