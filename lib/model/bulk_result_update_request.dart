part of azure_devops_sdk.api;

class BulkResultUpdateRequest {
  
  String projectName = null;
  
  List<ResultUpdateRequest> requests = [];
  BulkResultUpdateRequest();

  @override
  String toString() {
    return 'BulkResultUpdateRequest[projectName=$projectName, requests=$requests, ]';
  }

  BulkResultUpdateRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['requests'] == null) {
      requests = null;
    } else {
      requests = ResultUpdateRequest.listFromJson(json['requests']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (projectName != null)
      json['projectName'] = projectName;
    if (requests != null)
      json['requests'] = requests;
    return json;
  }

  static List<BulkResultUpdateRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<BulkResultUpdateRequest>() : json.map((value) => BulkResultUpdateRequest.fromJson(value)).toList();
  }

  static Map<String, BulkResultUpdateRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BulkResultUpdateRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BulkResultUpdateRequest.fromJson(value));
    }
    return map;
  }
}

