part of azure_devops_sdk.api;

class TestResultDocument {
  
  TestOperationReference operationReference = null;
  
  TestResultPayload payload = null;
  TestResultDocument();

  @override
  String toString() {
    return 'TestResultDocument[operationReference=$operationReference, payload=$payload, ]';
  }

  TestResultDocument.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['operationReference'] == null) {
      operationReference = null;
    } else {
      operationReference = TestOperationReference.fromJson(json['operationReference']);
    }
    if (json['payload'] == null) {
      payload = null;
    } else {
      payload = TestResultPayload.fromJson(json['payload']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (operationReference != null)
      json['operationReference'] = operationReference;
    if (payload != null)
      json['payload'] = payload;
    return json;
  }

  static List<TestResultDocument> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultDocument>() : json.map((value) => TestResultDocument.fromJson(value)).toList();
  }

  static Map<String, TestResultDocument> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultDocument>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultDocument.fromJson(value));
    }
    return map;
  }
}

