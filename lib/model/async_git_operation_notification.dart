part of azure_devops_sdk.api;

class AsyncGitOperationNotification {
  
  int operationId = null;
  AsyncGitOperationNotification();

  @override
  String toString() {
    return 'AsyncGitOperationNotification[operationId=$operationId, ]';
  }

  AsyncGitOperationNotification.fromJson(Map<String, dynamic> json) {
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

  static List<AsyncGitOperationNotification> listFromJson(List<dynamic> json) {
    return json == null ? List<AsyncGitOperationNotification>() : json.map((value) => AsyncGitOperationNotification.fromJson(value)).toList();
  }

  static Map<String, AsyncGitOperationNotification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AsyncGitOperationNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AsyncGitOperationNotification.fromJson(value));
    }
    return map;
  }
}

