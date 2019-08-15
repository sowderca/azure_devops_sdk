part of azure_devops_sdk.api;

class TestSuiteCloneRequest {
  
  CloneOptions cloneOptions = null;
  /* Suite id under which, we have to clone the suite. */
  int destinationSuiteId = null;
  /* Destination suite project name. */
  String destinationSuiteProjectName = null;
  TestSuiteCloneRequest();

  @override
  String toString() {
    return 'TestSuiteCloneRequest[cloneOptions=$cloneOptions, destinationSuiteId=$destinationSuiteId, destinationSuiteProjectName=$destinationSuiteProjectName, ]';
  }

  TestSuiteCloneRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cloneOptions'] == null) {
      cloneOptions = null;
    } else {
      cloneOptions = CloneOptions.fromJson(json['cloneOptions']);
    }
    if (json['destinationSuiteId'] == null) {
      destinationSuiteId = null;
    } else {
          destinationSuiteId = json['destinationSuiteId'];
    }
    if (json['destinationSuiteProjectName'] == null) {
      destinationSuiteProjectName = null;
    } else {
          destinationSuiteProjectName = json['destinationSuiteProjectName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cloneOptions != null)
      json['cloneOptions'] = cloneOptions;
    if (destinationSuiteId != null)
      json['destinationSuiteId'] = destinationSuiteId;
    if (destinationSuiteProjectName != null)
      json['destinationSuiteProjectName'] = destinationSuiteProjectName;
    return json;
  }

  static List<TestSuiteCloneRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSuiteCloneRequest>() : json.map((value) => TestSuiteCloneRequest.fromJson(value)).toList();
  }

  static Map<String, TestSuiteCloneRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSuiteCloneRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSuiteCloneRequest.fromJson(value));
    }
    return map;
  }
}

