part of azure_devops_sdk.api;

class PageSummary {
  
  double averagePageTime = null;
  
  String pageUrl = null;
  
  int percentagePagesMeetingGoal = null;
  
  List<SummaryPercentileData> percentileData = [];
  
  String scenarioName = null;
  
  String testName = null;
  
  int totalPages = null;
  PageSummary();

  @override
  String toString() {
    return 'PageSummary[averagePageTime=$averagePageTime, pageUrl=$pageUrl, percentagePagesMeetingGoal=$percentagePagesMeetingGoal, percentileData=$percentileData, scenarioName=$scenarioName, testName=$testName, totalPages=$totalPages, ]';
  }

  PageSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['averagePageTime'] == null) {
      averagePageTime = null;
    } else {
          averagePageTime = json['averagePageTime'].toDouble();
    }
    if (json['pageUrl'] == null) {
      pageUrl = null;
    } else {
          pageUrl = json['pageUrl'];
    }
    if (json['percentagePagesMeetingGoal'] == null) {
      percentagePagesMeetingGoal = null;
    } else {
          percentagePagesMeetingGoal = json['percentagePagesMeetingGoal'];
    }
    if (json['percentileData'] == null) {
      percentileData = null;
    } else {
      percentileData = SummaryPercentileData.listFromJson(json['percentileData']);
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
    if (json['totalPages'] == null) {
      totalPages = null;
    } else {
          totalPages = json['totalPages'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (averagePageTime != null)
      json['averagePageTime'] = averagePageTime;
    if (pageUrl != null)
      json['pageUrl'] = pageUrl;
    if (percentagePagesMeetingGoal != null)
      json['percentagePagesMeetingGoal'] = percentagePagesMeetingGoal;
    if (percentileData != null)
      json['percentileData'] = percentileData;
    if (scenarioName != null)
      json['scenarioName'] = scenarioName;
    if (testName != null)
      json['testName'] = testName;
    if (totalPages != null)
      json['totalPages'] = totalPages;
    return json;
  }

  static List<PageSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<PageSummary>() : json.map((value) => PageSummary.fromJson(value)).toList();
  }

  static Map<String, PageSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PageSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PageSummary.fromJson(value));
    }
    return map;
  }
}

