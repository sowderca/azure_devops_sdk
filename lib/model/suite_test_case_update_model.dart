part of azure_devops_sdk.api;

class SuiteTestCaseUpdateModel {
  /* Shallow reference of configurations for the test cases in the suite. */
  List<ShallowReference> configurations = [];
  SuiteTestCaseUpdateModel();

  @override
  String toString() {
    return 'SuiteTestCaseUpdateModel[configurations=$configurations, ]';
  }

  SuiteTestCaseUpdateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['configurations'] == null) {
      configurations = null;
    } else {
      configurations = ShallowReference.listFromJson(json['configurations']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (configurations != null)
      json['configurations'] = configurations;
    return json;
  }

  static List<SuiteTestCaseUpdateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<SuiteTestCaseUpdateModel>() : json.map((value) => SuiteTestCaseUpdateModel.fromJson(value)).toList();
  }

  static Map<String, SuiteTestCaseUpdateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SuiteTestCaseUpdateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SuiteTestCaseUpdateModel.fromJson(value));
    }
    return map;
  }
}

