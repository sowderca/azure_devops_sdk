part of azure_devops_sdk.api;

class TestResultMetaDataUpdateResponse {
  
  String status = null;
  TestResultMetaDataUpdateResponse();

  @override
  String toString() {
    return 'TestResultMetaDataUpdateResponse[status=$status, ]';
  }

  TestResultMetaDataUpdateResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<TestResultMetaDataUpdateResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultMetaDataUpdateResponse>() : json.map((value) => TestResultMetaDataUpdateResponse.fromJson(value)).toList();
  }

  static Map<String, TestResultMetaDataUpdateResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultMetaDataUpdateResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultMetaDataUpdateResponse.fromJson(value));
    }
    return map;
  }
}

