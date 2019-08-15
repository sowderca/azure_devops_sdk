part of azure_devops_sdk.api;

class AsyncRefOperationConflictNotification {
  
  int operationId = null;
  AsyncRefOperationConflictNotification();

  @override
  String toString() {
    return 'AsyncRefOperationConflictNotification[operationId=$operationId, ]';
  }

  AsyncRefOperationConflictNotification.fromJson(Map<String, dynamic> json) {
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

  static List<AsyncRefOperationConflictNotification> listFromJson(List<dynamic> json) {
    return json == null ? List<AsyncRefOperationConflictNotification>() : json.map((value) => AsyncRefOperationConflictNotification.fromJson(value)).toList();
  }

  static Map<String, AsyncRefOperationConflictNotification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AsyncRefOperationConflictNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AsyncRefOperationConflictNotification.fromJson(value));
    }
    return map;
  }
}

