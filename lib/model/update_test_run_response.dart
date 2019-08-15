part of azure_devops_sdk.api;

class UpdateTestRunResponse {
  
  List<int> attachmentIds = [];
  
  UpdatedProperties updatedProperties = null;
  UpdateTestRunResponse();

  @override
  String toString() {
    return 'UpdateTestRunResponse[attachmentIds=$attachmentIds, updatedProperties=$updatedProperties, ]';
  }

  UpdateTestRunResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attachmentIds'] == null) {
      attachmentIds = null;
    } else {
      attachmentIds = (json['attachmentIds'] as List).cast<int>();
    }
    if (json['updatedProperties'] == null) {
      updatedProperties = null;
    } else {
      updatedProperties = UpdatedProperties.fromJson(json['updatedProperties']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attachmentIds != null)
      json['attachmentIds'] = attachmentIds;
    if (updatedProperties != null)
      json['updatedProperties'] = updatedProperties;
    return json;
  }

  static List<UpdateTestRunResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateTestRunResponse>() : json.map((value) => UpdateTestRunResponse.fromJson(value)).toList();
  }

  static Map<String, UpdateTestRunResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateTestRunResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateTestRunResponse.fromJson(value));
    }
    return map;
  }
}

