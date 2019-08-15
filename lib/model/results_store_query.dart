part of azure_devops_sdk.api;

class ResultsStoreQuery {
  
  bool dayPrecision = null;
  
  String queryText = null;
  
  String teamProjectName = null;
  
  String timeZone = null;
  ResultsStoreQuery();

  @override
  String toString() {
    return 'ResultsStoreQuery[dayPrecision=$dayPrecision, queryText=$queryText, teamProjectName=$teamProjectName, timeZone=$timeZone, ]';
  }

  ResultsStoreQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dayPrecision'] == null) {
      dayPrecision = null;
    } else {
          dayPrecision = json['dayPrecision'];
    }
    if (json['queryText'] == null) {
      queryText = null;
    } else {
          queryText = json['queryText'];
    }
    if (json['teamProjectName'] == null) {
      teamProjectName = null;
    } else {
          teamProjectName = json['teamProjectName'];
    }
    if (json['timeZone'] == null) {
      timeZone = null;
    } else {
          timeZone = json['timeZone'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dayPrecision != null)
      json['dayPrecision'] = dayPrecision;
    if (queryText != null)
      json['queryText'] = queryText;
    if (teamProjectName != null)
      json['teamProjectName'] = teamProjectName;
    if (timeZone != null)
      json['timeZone'] = timeZone;
    return json;
  }

  static List<ResultsStoreQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<ResultsStoreQuery>() : json.map((value) => ResultsStoreQuery.fromJson(value)).toList();
  }

  static Map<String, ResultsStoreQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResultsStoreQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResultsStoreQuery.fromJson(value));
    }
    return map;
  }
}

