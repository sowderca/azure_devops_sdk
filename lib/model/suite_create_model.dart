part of azure_devops_sdk.api;

class SuiteCreateModel {
  /* Name of test suite. */
  String name = null;
  /* For query based suites, query string that defines the suite. */
  String queryString = null;
  /* For requirements test suites, the IDs of the requirements. */
  List<int> requirementIds = [];
  /* Type of test suite to create. It can have value from DynamicTestSuite, StaticTestSuite and RequirementTestSuite. */
  String suiteType = null;
  SuiteCreateModel();

  @override
  String toString() {
    return 'SuiteCreateModel[name=$name, queryString=$queryString, requirementIds=$requirementIds, suiteType=$suiteType, ]';
  }

  SuiteCreateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['queryString'] == null) {
      queryString = null;
    } else {
          queryString = json['queryString'];
    }
    if (json['requirementIds'] == null) {
      requirementIds = null;
    } else {
      requirementIds = (json['requirementIds'] as List).cast<int>();
    }
    if (json['suiteType'] == null) {
      suiteType = null;
    } else {
          suiteType = json['suiteType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (queryString != null)
      json['queryString'] = queryString;
    if (requirementIds != null)
      json['requirementIds'] = requirementIds;
    if (suiteType != null)
      json['suiteType'] = suiteType;
    return json;
  }

  static List<SuiteCreateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<SuiteCreateModel>() : json.map((value) => SuiteCreateModel.fromJson(value)).toList();
  }

  static Map<String, SuiteCreateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SuiteCreateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SuiteCreateModel.fromJson(value));
    }
    return map;
  }
}

