part of azure_devops_sdk.api;

class TransactionSummary {
  
  double averageResponseTime = null;
  
  double averageTransactionTime = null;
  
  List<SummaryPercentileData> percentileData = [];
  
  String scenarioName = null;
  
  String testName = null;
  
  int totalTransactions = null;
  
  String transactionName = null;
  TransactionSummary();

  @override
  String toString() {
    return 'TransactionSummary[averageResponseTime=$averageResponseTime, averageTransactionTime=$averageTransactionTime, percentileData=$percentileData, scenarioName=$scenarioName, testName=$testName, totalTransactions=$totalTransactions, transactionName=$transactionName, ]';
  }

  TransactionSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['averageResponseTime'] == null) {
      averageResponseTime = null;
    } else {
          averageResponseTime = json['averageResponseTime'].toDouble();
    }
    if (json['averageTransactionTime'] == null) {
      averageTransactionTime = null;
    } else {
          averageTransactionTime = json['averageTransactionTime'].toDouble();
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
    if (json['totalTransactions'] == null) {
      totalTransactions = null;
    } else {
          totalTransactions = json['totalTransactions'];
    }
    if (json['transactionName'] == null) {
      transactionName = null;
    } else {
          transactionName = json['transactionName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (averageResponseTime != null)
      json['averageResponseTime'] = averageResponseTime;
    if (averageTransactionTime != null)
      json['averageTransactionTime'] = averageTransactionTime;
    if (percentileData != null)
      json['percentileData'] = percentileData;
    if (scenarioName != null)
      json['scenarioName'] = scenarioName;
    if (testName != null)
      json['testName'] = testName;
    if (totalTransactions != null)
      json['totalTransactions'] = totalTransactions;
    if (transactionName != null)
      json['transactionName'] = transactionName;
    return json;
  }

  static List<TransactionSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<TransactionSummary>() : json.map((value) => TransactionSummary.fromJson(value)).toList();
  }

  static Map<String, TransactionSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TransactionSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TransactionSummary.fromJson(value));
    }
    return map;
  }
}

