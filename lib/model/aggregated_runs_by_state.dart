part of azure_devops_sdk.api;

class AggregatedRunsByState {
  
  Map<String, AggregatedResultsByOutcome> resultsByOutcome = {};
  
  int runsCount = null;
  
  String state = null;
  //enum stateEnum {  unspecified,  notStarted,  inProgress,  completed,  aborted,  waiting,  needsInvestigation,  };{
  AggregatedRunsByState();

  @override
  String toString() {
    return 'AggregatedRunsByState[resultsByOutcome=$resultsByOutcome, runsCount=$runsCount, state=$state, ]';
  }

  AggregatedRunsByState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['resultsByOutcome'] == null) {
      resultsByOutcome = null;
    } else {
      resultsByOutcome = AggregatedResultsByOutcome.mapFromJson(json['resultsByOutcome']);
    }
    if (json['runsCount'] == null) {
      runsCount = null;
    } else {
          runsCount = json['runsCount'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (resultsByOutcome != null)
      json['resultsByOutcome'] = resultsByOutcome;
    if (runsCount != null)
      json['runsCount'] = runsCount;
    if (state != null)
      json['state'] = state;
    return json;
  }

  static List<AggregatedRunsByState> listFromJson(List<dynamic> json) {
    return json == null ? List<AggregatedRunsByState>() : json.map((value) => AggregatedRunsByState.fromJson(value)).toList();
  }

  static Map<String, AggregatedRunsByState> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AggregatedRunsByState>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AggregatedRunsByState.fromJson(value));
    }
    return map;
  }
}

