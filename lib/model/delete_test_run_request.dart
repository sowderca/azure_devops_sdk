part of azure_devops_sdk.api;

class DeleteTestRunRequest {
  
  String projectName = null;
  
  List<int> testRunIds = [];
  DeleteTestRunRequest();

  @override
  String toString() {
    return 'DeleteTestRunRequest[projectName=$projectName, testRunIds=$testRunIds, ]';
  }

  DeleteTestRunRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['testRunIds'] == null) {
      testRunIds = null;
    } else {
      testRunIds = (json['testRunIds'] as List).cast<int>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (projectName != null)
      json['projectName'] = projectName;
    if (testRunIds != null)
      json['testRunIds'] = testRunIds;
    return json;
  }

  static List<DeleteTestRunRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<DeleteTestRunRequest>() : json.map((value) => DeleteTestRunRequest.fromJson(value)).toList();
  }

  static Map<String, DeleteTestRunRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeleteTestRunRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeleteTestRunRequest.fromJson(value));
    }
    return map;
  }
}

