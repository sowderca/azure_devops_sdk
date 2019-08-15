part of azure_devops_sdk.api;

class TestSuiteCreateUpdateCommonParams {
  /* Test suite default configurations. */
  List<TestConfigurationReference> defaultConfigurations = [];
  /* Test suite default testers. */
  List<IdentityRef> defaultTesters = [];
  /* Default configuration was inherited or not. */
  bool inheritDefaultConfigurations = null;
  /* Name of test suite. */
  String name = null;
  
  TestSuiteReference parentSuite = null;
  /* Test suite query string, for dynamic suites. */
  String queryString = null;
  TestSuiteCreateUpdateCommonParams();

  @override
  String toString() {
    return 'TestSuiteCreateUpdateCommonParams[defaultConfigurations=$defaultConfigurations, defaultTesters=$defaultTesters, inheritDefaultConfigurations=$inheritDefaultConfigurations, name=$name, parentSuite=$parentSuite, queryString=$queryString, ]';
  }

  TestSuiteCreateUpdateCommonParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['defaultConfigurations'] == null) {
      defaultConfigurations = null;
    } else {
      defaultConfigurations = TestConfigurationReference.listFromJson(json['defaultConfigurations']);
    }
    if (json['defaultTesters'] == null) {
      defaultTesters = null;
    } else {
      defaultTesters = IdentityRef.listFromJson(json['defaultTesters']);
    }
    if (json['inheritDefaultConfigurations'] == null) {
      inheritDefaultConfigurations = null;
    } else {
          inheritDefaultConfigurations = json['inheritDefaultConfigurations'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['parentSuite'] == null) {
      parentSuite = null;
    } else {
      parentSuite = TestSuiteReference.fromJson(json['parentSuite']);
    }
    if (json['queryString'] == null) {
      queryString = null;
    } else {
          queryString = json['queryString'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (defaultConfigurations != null)
      json['defaultConfigurations'] = defaultConfigurations;
    if (defaultTesters != null)
      json['defaultTesters'] = defaultTesters;
    if (inheritDefaultConfigurations != null)
      json['inheritDefaultConfigurations'] = inheritDefaultConfigurations;
    if (name != null)
      json['name'] = name;
    if (parentSuite != null)
      json['parentSuite'] = parentSuite;
    if (queryString != null)
      json['queryString'] = queryString;
    return json;
  }

  static List<TestSuiteCreateUpdateCommonParams> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSuiteCreateUpdateCommonParams>() : json.map((value) => TestSuiteCreateUpdateCommonParams.fromJson(value)).toList();
  }

  static Map<String, TestSuiteCreateUpdateCommonParams> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSuiteCreateUpdateCommonParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSuiteCreateUpdateCommonParams.fromJson(value));
    }
    return map;
  }
}

