part of azure_devops_sdk.api;

class AsyncRefOperationGeneralFailureNotification {
  
  int operationId = null;
  AsyncRefOperationGeneralFailureNotification();

  @override
  String toString() {
    return 'AsyncRefOperationGeneralFailureNotification[operationId=$operationId, ]';
  }

  AsyncRefOperationGeneralFailureNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['operationId'] == null) {
      operationId = null;
    } else {
          operationId = json['operationId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (operationId != null)
      json['operationId'] = operationId;
    return json;
  }

  static List<AsyncRefOperationGeneralFailureNotification> listFromJson(List<dynamic> json) {
    return json == null ? List<AsyncRefOperationGeneralFailureNotification>() : json.map((value) => AsyncRefOperationGeneralFailureNotification.fromJson(value)).toList();
  }

  static Map<String, AsyncRefOperationGeneralFailureNotification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AsyncRefOperationGeneralFailureNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AsyncRefOperationGeneralFailureNotification.fromJson(value));
    }
    return map;
  }
}

