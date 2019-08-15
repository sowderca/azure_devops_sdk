part of azure_devops_sdk.api;

class SuiteUpdateModel {
  /* Shallow reference of default configurations for the suite. */
  List<ShallowReference> defaultConfigurations = [];
  /* Shallow reference of test suite. */
  List<ShallowReference> defaultTesters = [];
  /* Specifies if the default configurations have to be inherited from the parent test suite in which the test suite is created. */
  bool inheritDefaultConfigurations = null;
  /* Test suite name */
  String name = null;
  
  ShallowReference parent = null;
  /* For query based suites, the new query string. */
  String queryString = null;
  SuiteUpdateModel();

  @override
  String toString() {
    return 'SuiteUpdateModel[defaultConfigurations=$defaultConfigurations, defaultTesters=$defaultTesters, inheritDefaultConfigurations=$inheritDefaultConfigurations, name=$name, parent=$parent, queryString=$queryString, ]';
  }

  SuiteUpdateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['defaultConfigurations'] == null) {
      defaultConfigurations = null;
    } else {
      defaultConfigurations = ShallowReference.listFromJson(json['defaultConfigurations']);
    }
    if (json['defaultTesters'] == null) {
      defaultTesters = null;
    } else {
      defaultTesters = ShallowReference.listFromJson(json['defaultTesters']);
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
    if (json['parent'] == null) {
      parent = null;
    } else {
      parent = ShallowReference.fromJson(json['parent']);
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
    if (parent != null)
      json['parent'] = parent;
    if (queryString != null)
      json['queryString'] = queryString;
    return json;
  }

  static List<SuiteUpdateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<SuiteUpdateModel>() : json.map((value) => SuiteUpdateModel.fromJson(value)).toList();
  }

  static Map<String, SuiteUpdateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SuiteUpdateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SuiteUpdateModel.fromJson(value));
    }
    return map;
  }
}

