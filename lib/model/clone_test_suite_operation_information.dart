part of azure_devops_sdk.api;

class CloneTestSuiteOperationInformation {
  
  TestSuiteReferenceWithProject clonedTestSuite = null;
  
  CloneOperationCommonResponse cloneOperationResponse = null;
  
  CloneOptions cloneOptions = null;
  
  TestSuiteReferenceWithProject destinationTestSuite = null;
  
  TestSuiteReferenceWithProject sourceTestSuite = null;
  CloneTestSuiteOperationInformation();

  @override
  String toString() {
    return 'CloneTestSuiteOperationInformation[clonedTestSuite=$clonedTestSuite, cloneOperationResponse=$cloneOperationResponse, cloneOptions=$cloneOptions, destinationTestSuite=$destinationTestSuite, sourceTestSuite=$sourceTestSuite, ]';
  }

  CloneTestSuiteOperationInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['clonedTestSuite'] == null) {
      clonedTestSuite = null;
    } else {
      clonedTestSuite = TestSuiteReferenceWithProject.fromJson(json['clonedTestSuite']);
    }
    if (json['cloneOperationResponse'] == null) {
      cloneOperationResponse = null;
    } else {
      cloneOperationResponse = CloneOperationCommonResponse.fromJson(json['cloneOperationResponse']);
    }
    if (json['cloneOptions'] == null) {
      cloneOptions = null;
    } else {
      cloneOptions = CloneOptions.fromJson(json['cloneOptions']);
    }
    if (json['destinationTestSuite'] == null) {
      destinationTestSuite = null;
    } else {
      destinationTestSuite = TestSuiteReferenceWithProject.fromJson(json['destinationTestSuite']);
    }
    if (json['sourceTestSuite'] == null) {
      sourceTestSuite = null;
    } else {
      sourceTestSuite = TestSuiteReferenceWithProject.fromJson(json['sourceTestSuite']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clonedTestSuite != null)
      json['clonedTestSuite'] = clonedTestSuite;
    if (cloneOperationResponse != null)
      json['cloneOperationResponse'] = cloneOperationResponse;
    if (cloneOptions != null)
      json['cloneOptions'] = cloneOptions;
    if (destinationTestSuite != null)
      json['destinationTestSuite'] = destinationTestSuite;
    if (sourceTestSuite != null)
      json['sourceTestSuite'] = sourceTestSuite;
    return json;
  }

  static List<CloneTestSuiteOperationInformation> listFromJson(List<dynamic> json) {
    return json == null ? List<CloneTestSuiteOperationInformation>() : json.map((value) => CloneTestSuiteOperationInformation.fromJson(value)).toList();
  }

  static Map<String, CloneTestSuiteOperationInformation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CloneTestSuiteOperationInformation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CloneTestSuiteOperationInformation.fromJson(value));
    }
    return map;
  }
}

