part of azure_devops_sdk.api;

class TestResultsSummary {
  
  PageSummary overallPageSummary = null;
  
  RequestSummary overallRequestSummary = null;
  
  ScenarioSummary overallScenarioSummary = null;
  
  TestSummary overallTestSummary = null;
  
  TransactionSummary overallTransactionSummary = null;
  
  List<PageSummary> topSlowPages = [];
  
  List<RequestSummary> topSlowRequests = [];
  
  List<TestSummary> topSlowTests = [];
  
  List<TransactionSummary> topSlowTransactions = [];
  TestResultsSummary();

  @override
  String toString() {
    return 'TestResultsSummary[overallPageSummary=$overallPageSummary, overallRequestSummary=$overallRequestSummary, overallScenarioSummary=$overallScenarioSummary, overallTestSummary=$overallTestSummary, overallTransactionSummary=$overallTransactionSummary, topSlowPages=$topSlowPages, topSlowRequests=$topSlowRequests, topSlowTests=$topSlowTests, topSlowTransactions=$topSlowTransactions, ]';
  }

  TestResultsSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['overallPageSummary'] == null) {
      overallPageSummary = null;
    } else {
      overallPageSummary = PageSummary.fromJson(json['overallPageSummary']);
    }
    if (json['overallRequestSummary'] == null) {
      overallRequestSummary = null;
    } else {
      overallRequestSummary = RequestSummary.fromJson(json['overallRequestSummary']);
    }
    if (json['overallScenarioSummary'] == null) {
      overallScenarioSummary = null;
    } else {
      overallScenarioSummary = ScenarioSummary.fromJson(json['overallScenarioSummary']);
    }
    if (json['overallTestSummary'] == null) {
      overallTestSummary = null;
    } else {
      overallTestSummary = TestSummary.fromJson(json['overallTestSummary']);
    }
    if (json['overallTransactionSummary'] == null) {
      overallTransactionSummary = null;
    } else {
      overallTransactionSummary = TransactionSummary.fromJson(json['overallTransactionSummary']);
    }
    if (json['topSlowPages'] == null) {
      topSlowPages = null;
    } else {
      topSlowPages = PageSummary.listFromJson(json['topSlowPages']);
    }
    if (json['topSlowRequests'] == null) {
      topSlowRequests = null;
    } else {
      topSlowRequests = RequestSummary.listFromJson(json['topSlowRequests']);
    }
    if (json['topSlowTests'] == null) {
      topSlowTests = null;
    } else {
      topSlowTests = TestSummary.listFromJson(json['topSlowTests']);
    }
    if (json['topSlowTransactions'] == null) {
      topSlowTransactions = null;
    } else {
      topSlowTransactions = TransactionSummary.listFromJson(json['topSlowTransactions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (overallPageSummary != null)
      json['overallPageSummary'] = overallPageSummary;
    if (overallRequestSummary != null)
      json['overallRequestSummary'] = overallRequestSummary;
    if (overallScenarioSummary != null)
      json['overallScenarioSummary'] = overallScenarioSummary;
    if (overallTestSummary != null)
      json['overallTestSummary'] = overallTestSummary;
    if (overallTransactionSummary != null)
      json['overallTransactionSummary'] = overallTransactionSummary;
    if (topSlowPages != null)
      json['topSlowPages'] = topSlowPages;
    if (topSlowRequests != null)
      json['topSlowRequests'] = topSlowRequests;
    if (topSlowTests != null)
      json['topSlowTests'] = topSlowTests;
    if (topSlowTransactions != null)
      json['topSlowTransactions'] = topSlowTransactions;
    return json;
  }

  static List<TestResultsSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultsSummary>() : json.map((value) => TestResultsSummary.fromJson(value)).toList();
  }

  static Map<String, TestResultsSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultsSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultsSummary.fromJson(value));
    }
    return map;
  }
}

