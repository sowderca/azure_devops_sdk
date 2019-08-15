part of azure_devops_sdk.api;

class RequestSummary {
  
  double averageResponseTime = null;
  
  int failedRequests = null;
  
  int passedRequests = null;
  
  List<SummaryPercentileData> percentileData = [];
  
  double requestsPerSec = null;
  
  String requestUrl = null;
  
  String scenarioName = null;
  
  String testName = null;
  
  int totalRequests = null;
  RequestSummary();

  @override
  String toString() {
    return 'RequestSummary[averageResponseTime=$averageResponseTime, failedRequests=$failedRequests, passedRequests=$passedRequests, percentileData=$percentileData, requestsPerSec=$requestsPerSec, requestUrl=$requestUrl, scenarioName=$scenarioName, testName=$testName, totalRequests=$totalRequests, ]';
  }

  RequestSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['averageResponseTime'] == null) {
      averageResponseTime = null;
    } else {
          averageResponseTime = json['averageResponseTime'].toDouble();
    }
    if (json['failedRequests'] == null) {
      failedRequests = null;
    } else {
          failedRequests = json['failedRequests'];
    }
    if (json['passedRequests'] == null) {
      passedRequests = null;
    } else {
          passedRequests = json['passedRequests'];
    }
    if (json['percentileData'] == null) {
      percentileData = null;
    } else {
      percentileData = SummaryPercentileData.listFromJson(json['percentileData']);
    }
    if (json['requestsPerSec'] == null) {
      requestsPerSec = null;
    } else {
          requestsPerSec = json['requestsPerSec'].toDouble();
    }
    if (json['requestUrl'] == null) {
      requestUrl = null;
    } else {
          requestUrl = json['requestUrl'];
    }
    if (json['scenarioName'] == null) {
      scenarioName = null;
    } else {
          scenarioName = json['scenarioName'];
    }
    if (json['testName'] == null) {
      testName = null;
    } else {
          testName = json['testName'];
    }
    if (json['totalRequests'] == null) {
      totalRequests = null;
    } else {
          totalRequests = json['totalRequests'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (averageResponseTime != null)
      json['averageResponseTime'] = averageResponseTime;
    if (failedRequests != null)
      json['failedRequests'] = failedRequests;
    if (passedRequests != null)
      json['passedRequests'] = passedRequests;
    if (percentileData != null)
      json['percentileData'] = percentileData;
    if (requestsPerSec != null)
      json['requestsPerSec'] = requestsPerSec;
    if (requestUrl != null)
      json['requestUrl'] = requestUrl;
    if (scenarioName != null)
      json['scenarioName'] = scenarioName;
    if (testName != null)
      json['testName'] = testName;
    if (totalRequests != null)
      json['totalRequests'] = totalRequests;
    return json;
  }

  static List<RequestSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestSummary>() : json.map((value) => RequestSummary.fromJson(value)).toList();
  }

  static Map<String, RequestSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestSummary.fromJson(value));
    }
    return map;
  }
}

