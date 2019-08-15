part of azure_devops_sdk.api;

class TestResultMetaDataUpdateInput {
  /* List of Flaky Identifiers */
  List<TestFlakyIdentifier> flakyIdentifiers = [];
  TestResultMetaDataUpdateInput();

  @override
  String toString() {
    return 'TestResultMetaDataUpdateInput[flakyIdentifiers=$flakyIdentifiers, ]';
  }

  TestResultMetaDataUpdateInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['flakyIdentifiers'] == null) {
      flakyIdentifiers = null;
    } else {
      flakyIdentifiers = TestFlakyIdentifier.listFromJson(json['flakyIdentifiers']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (flakyIdentifiers != null)
      json['flakyIdentifiers'] = flakyIdentifiers;
    return json;
  }

  static List<TestResultMetaDataUpdateInput> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultMetaDataUpdateInput>() : json.map((value) => TestResultMetaDataUpdateInput.fromJson(value)).toList();
  }

  static Map<String, TestResultMetaDataUpdateInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultMetaDataUpdateInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultMetaDataUpdateInput.fromJson(value));
    }
    return map;
  }
}

