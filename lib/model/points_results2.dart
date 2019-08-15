part of azure_devops_sdk.api;

class PointsResults2 {
  
  int changeNumber = null;
  
  String lastFailureType = null;
  
  int lastResolutionStateId = null;
  
  String lastResultOutcome = null;
  
  String lastResultState = null;
  
  int lastTestResultId = null;
  
  int lastTestRunId = null;
  
  DateTime lastUpdated = null;
  
  String lastUpdatedBy = null;
  
  int planId = null;
  
  int pointId = null;
  PointsResults2();

  @override
  String toString() {
    return 'PointsResults2[changeNumber=$changeNumber, lastFailureType=$lastFailureType, lastResolutionStateId=$lastResolutionStateId, lastResultOutcome=$lastResultOutcome, lastResultState=$lastResultState, lastTestResultId=$lastTestResultId, lastTestRunId=$lastTestRunId, lastUpdated=$lastUpdated, lastUpdatedBy=$lastUpdatedBy, planId=$planId, pointId=$pointId, ]';
  }

  PointsResults2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changeNumber'] == null) {
      changeNumber = null;
    } else {
          changeNumber = json['changeNumber'];
    }
    if (json['lastFailureType'] == null) {
      lastFailureType = null;
    } else {
          lastFailureType = json['lastFailureType'];
    }
    if (json['lastResolutionStateId'] == null) {
      lastResolutionStateId = null;
    } else {
          lastResolutionStateId = json['lastResolutionStateId'];
    }
    if (json['lastResultOutcome'] == null) {
      lastResultOutcome = null;
    } else {
          lastResultOutcome = json['lastResultOutcome'];
    }
    if (json['lastResultState'] == null) {
      lastResultState = null;
    } else {
          lastResultState = json['lastResultState'];
    }
    if (json['lastTestResultId'] == null) {
      lastTestResultId = null;
    } else {
          lastTestResultId = json['lastTestResultId'];
    }
    if (json['lastTestRunId'] == null) {
      lastTestRunId = null;
    } else {
          lastTestRunId = json['lastTestRunId'];
    }
    if (json['lastUpdated'] == null) {
      lastUpdated = null;
    } else {
      lastUpdated = DateTime.parse(json['lastUpdated']);
    }
    if (json['lastUpdatedBy'] == null) {
      lastUpdatedBy = null;
    } else {
          lastUpdatedBy = json['lastUpdatedBy'];
    }
    if (json['planId'] == null) {
      planId = null;
    } else {
          planId = json['planId'];
    }
    if (json['pointId'] == null) {
      pointId = null;
    } else {
          pointId = json['pointId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changeNumber != null)
      json['changeNumber'] = changeNumber;
    if (lastFailureType != null)
      json['lastFailureType'] = lastFailureType;
    if (lastResolutionStateId != null)
      json['lastResolutionStateId'] = lastResolutionStateId;
    if (lastResultOutcome != null)
      json['lastResultOutcome'] = lastResultOutcome;
    if (lastResultState != null)
      json['lastResultState'] = lastResultState;
    if (lastTestResultId != null)
      json['lastTestResultId'] = lastTestResultId;
    if (lastTestRunId != null)
      json['lastTestRunId'] = lastTestRunId;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (planId != null)
      json['planId'] = planId;
    if (pointId != null)
      json['pointId'] = pointId;
    return json;
  }

  static List<PointsResults2> listFromJson(List<dynamic> json) {
    return json == null ? List<PointsResults2>() : json.map((value) => PointsResults2.fromJson(value)).toList();
  }

  static Map<String, PointsResults2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PointsResults2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PointsResults2.fromJson(value));
    }
    return map;
  }
}

