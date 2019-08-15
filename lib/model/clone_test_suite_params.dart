part of azure_devops_sdk.api;

class CloneTestSuiteParams {
  
  CloneOptions cloneOptions = null;
  
  DestinationTestSuiteInfo destinationTestSuite = null;
  
  SourceTestSuiteInfo sourceTestSuite = null;
  CloneTestSuiteParams();

  @override
  String toString() {
    return 'CloneTestSuiteParams[cloneOptions=$cloneOptions, destinationTestSuite=$destinationTestSuite, sourceTestSuite=$sourceTestSuite, ]';
  }

  CloneTestSuiteParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cloneOptions'] == null) {
      cloneOptions = null;
    } else {
      cloneOptions = CloneOptions.fromJson(json['cloneOptions']);
    }
    if (json['destinationTestSuite'] == null) {
      destinationTestSuite = null;
    } else {
      destinationTestSuite = DestinationTestSuiteInfo.fromJson(json['destinationTestSuite']);
    }
    if (json['sourceTestSuite'] == null) {
      sourceTestSuite = null;
    } else {
      sourceTestSuite = SourceTestSuiteInfo.fromJson(json['sourceTestSuite']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cloneOptions != null)
      json['cloneOptions'] = cloneOptions;
    if (destinationTestSuite != null)
      json['destinationTestSuite'] = destinationTestSuite;
    if (sourceTestSuite != null)
      json['sourceTestSuite'] = sourceTestSuite;
    return json;
  }

  static List<CloneTestSuiteParams> listFromJson(List<dynamic> json) {
    return json == null ? List<CloneTestSuiteParams>() : json.map((value) => CloneTestSuiteParams.fromJson(value)).toList();
  }

  static Map<String, CloneTestSuiteParams> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CloneTestSuiteParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CloneTestSuiteParams.fromJson(value));
    }
    return map;
  }
}

