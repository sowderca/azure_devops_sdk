part of azure_devops_sdk.api;

class TestResultTrendFilter {
  
  List<String> branchNames = [];
  
  int buildCount = null;
  
  List<int> definitionIds = [];
  
  List<int> envDefinitionIds = [];
  
  DateTime maxCompleteDate = null;
  
  String publishContext = null;
  
  List<String> testRunTitles = [];
  
  int trendDays = null;
  TestResultTrendFilter();

  @override
  String toString() {
    return 'TestResultTrendFilter[branchNames=$branchNames, buildCount=$buildCount, definitionIds=$definitionIds, envDefinitionIds=$envDefinitionIds, maxCompleteDate=$maxCompleteDate, publishContext=$publishContext, testRunTitles=$testRunTitles, trendDays=$trendDays, ]';
  }

  TestResultTrendFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['branchNames'] == null) {
      branchNames = null;
    } else {
      branchNames = (json['branchNames'] as List).cast<String>();
    }
    if (json['buildCount'] == null) {
      buildCount = null;
    } else {
          buildCount = json['buildCount'];
    }
    if (json['definitionIds'] == null) {
      definitionIds = null;
    } else {
      definitionIds = (json['definitionIds'] as List).cast<int>();
    }
    if (json['envDefinitionIds'] == null) {
      envDefinitionIds = null;
    } else {
      envDefinitionIds = (json['envDefinitionIds'] as List).cast<int>();
    }
    if (json['maxCompleteDate'] == null) {
      maxCompleteDate = null;
    } else {
      maxCompleteDate = DateTime.parse(json['maxCompleteDate']);
    }
    if (json['publishContext'] == null) {
      publishContext = null;
    } else {
          publishContext = json['publishContext'];
    }
    if (json['testRunTitles'] == null) {
      testRunTitles = null;
    } else {
      testRunTitles = (json['testRunTitles'] as List).cast<String>();
    }
    if (json['trendDays'] == null) {
      trendDays = null;
    } else {
          trendDays = json['trendDays'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (branchNames != null)
      json['branchNames'] = branchNames;
    if (buildCount != null)
      json['buildCount'] = buildCount;
    if (definitionIds != null)
      json['definitionIds'] = definitionIds;
    if (envDefinitionIds != null)
      json['envDefinitionIds'] = envDefinitionIds;
    if (maxCompleteDate != null)
      json['maxCompleteDate'] = maxCompleteDate == null ? null : maxCompleteDate.toUtc().toIso8601String();
    if (publishContext != null)
      json['publishContext'] = publishContext;
    if (testRunTitles != null)
      json['testRunTitles'] = testRunTitles;
    if (trendDays != null)
      json['trendDays'] = trendDays;
    return json;
  }

  static List<TestResultTrendFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultTrendFilter>() : json.map((value) => TestResultTrendFilter.fromJson(value)).toList();
  }

  static Map<String, TestResultTrendFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultTrendFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultTrendFilter.fromJson(value));
    }
    return map;
  }
}

