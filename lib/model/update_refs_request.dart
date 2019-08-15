part of azure_devops_sdk.api;

class UpdateRefsRequest {
  
  List<GitRefUpdate> refUpdateRequests = [];
  
  String updateMode = null;
  //enum updateModeEnum {  bestEffort,  allOrNone,  };{
  UpdateRefsRequest();

  @override
  String toString() {
    return 'UpdateRefsRequest[refUpdateRequests=$refUpdateRequests, updateMode=$updateMode, ]';
  }

  UpdateRefsRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['refUpdateRequests'] == null) {
      refUpdateRequests = null;
    } else {
      refUpdateRequests = GitRefUpdate.listFromJson(json['refUpdateRequests']);
    }
    if (json['updateMode'] == null) {
      updateMode = null;
    } else {
          updateMode = json['updateMode'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (refUpdateRequests != null)
      json['refUpdateRequests'] = refUpdateRequests;
    if (updateMode != null)
      json['updateMode'] = updateMode;
    return json;
  }

  static List<UpdateRefsRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateRefsRequest>() : json.map((value) => UpdateRefsRequest.fromJson(value)).toList();
  }

  static Map<String, UpdateRefsRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateRefsRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateRefsRequest.fromJson(value));
    }
    return map;
  }
}

