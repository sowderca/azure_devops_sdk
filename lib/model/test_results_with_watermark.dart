part of azure_devops_sdk.api;

class TestResultsWithWatermark {
  
  DateTime changedDate = null;
  
  List<PointsResults2> pointsResults = [];
  
  int resultId = null;
  
  int runId = null;
  TestResultsWithWatermark();

  @override
  String toString() {
    return 'TestResultsWithWatermark[changedDate=$changedDate, pointsResults=$pointsResults, resultId=$resultId, runId=$runId, ]';
  }

  TestResultsWithWatermark.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changedDate'] == null) {
      changedDate = null;
    } else {
      changedDate = DateTime.parse(json['changedDate']);
    }
    if (json['pointsResults'] == null) {
      pointsResults = null;
    } else {
      pointsResults = PointsResults2.listFromJson(json['pointsResults']);
    }
    if (json['resultId'] == null) {
      resultId = null;
    } else {
          resultId = json['resultId'];
    }
    if (json['runId'] == null) {
      runId = null;
    } else {
          runId = json['runId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changedDate != null)
      json['changedDate'] = changedDate == null ? null : changedDate.toUtc().toIso8601String();
    if (pointsResults != null)
      json['pointsResults'] = pointsResults;
    if (resultId != null)
      json['resultId'] = resultId;
    if (runId != null)
      json['runId'] = runId;
    return json;
  }

  static List<TestResultsWithWatermark> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultsWithWatermark>() : json.map((value) => TestResultsWithWatermark.fromJson(value)).toList();
  }

  static Map<String, TestResultsWithWatermark> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultsWithWatermark>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultsWithWatermark.fromJson(value));
    }
    return map;
  }
}

