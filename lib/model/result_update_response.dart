part of azure_devops_sdk.api;

class ResultUpdateResponse {
  
  List<int> attachmentIds = [];
  
  DateTime lastUpdated = null;
  
  String lastUpdatedBy = null;
  
  String lastUpdatedByName = null;
  
  int maxReservedSubResultId = null;
  
  int revision = null;
  
  int testPlanId = null;
  
  int testResultId = null;
  ResultUpdateResponse();

  @override
  String toString() {
    return 'ResultUpdateResponse[attachmentIds=$attachmentIds, lastUpdated=$lastUpdated, lastUpdatedBy=$lastUpdatedBy, lastUpdatedByName=$lastUpdatedByName, maxReservedSubResultId=$maxReservedSubResultId, revision=$revision, testPlanId=$testPlanId, testResultId=$testResultId, ]';
  }

  ResultUpdateResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attachmentIds'] == null) {
      attachmentIds = null;
    } else {
      attachmentIds = (json['attachmentIds'] as List).cast<int>();
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
    if (json['lastUpdatedByName'] == null) {
      lastUpdatedByName = null;
    } else {
          lastUpdatedByName = json['lastUpdatedByName'];
    }
    if (json['maxReservedSubResultId'] == null) {
      maxReservedSubResultId = null;
    } else {
          maxReservedSubResultId = json['maxReservedSubResultId'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['testPlanId'] == null) {
      testPlanId = null;
    } else {
          testPlanId = json['testPlanId'];
    }
    if (json['testResultId'] == null) {
      testResultId = null;
    } else {
          testResultId = json['testResultId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attachmentIds != null)
      json['attachmentIds'] = attachmentIds;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedByName != null)
      json['lastUpdatedByName'] = lastUpdatedByName;
    if (maxReservedSubResultId != null)
      json['maxReservedSubResultId'] = maxReservedSubResultId;
    if (revision != null)
      json['revision'] = revision;
    if (testPlanId != null)
      json['testPlanId'] = testPlanId;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    return json;
  }

  static List<ResultUpdateResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ResultUpdateResponse>() : json.map((value) => ResultUpdateResponse.fromJson(value)).toList();
  }

  static Map<String, ResultUpdateResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResultUpdateResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResultUpdateResponse.fromJson(value));
    }
    return map;
  }
}

