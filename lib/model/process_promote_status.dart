part of azure_devops_sdk.api;

class ProcessPromoteStatus {
  /* Number of projects for which promote is complete. */
  int complete = null;
  /* ID of the promote operation. */
  String id = null;
  /* The error message associated with the promote operation. The string will be empty if there are no errors. */
  String message = null;
  /* Number of projects for which promote is pending. */
  int pending = null;
  /* The remaining retries. */
  int remainingRetries = null;
  /* True if promote finished all the projects successfully. False if still in progress or any project promote failed. */
  bool successful = null;
  ProcessPromoteStatus();

  @override
  String toString() {
    return 'ProcessPromoteStatus[complete=$complete, id=$id, message=$message, pending=$pending, remainingRetries=$remainingRetries, successful=$successful, ]';
  }

  ProcessPromoteStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['complete'] == null) {
      complete = null;
    } else {
          complete = json['complete'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['pending'] == null) {
      pending = null;
    } else {
          pending = json['pending'];
    }
    if (json['remainingRetries'] == null) {
      remainingRetries = null;
    } else {
          remainingRetries = json['remainingRetries'];
    }
    if (json['successful'] == null) {
      successful = null;
    } else {
          successful = json['successful'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (complete != null)
      json['complete'] = complete;
    if (id != null)
      json['id'] = id;
    if (message != null)
      json['message'] = message;
    if (pending != null)
      json['pending'] = pending;
    if (remainingRetries != null)
      json['remainingRetries'] = remainingRetries;
    if (successful != null)
      json['successful'] = successful;
    return json;
  }

  static List<ProcessPromoteStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessPromoteStatus>() : json.map((value) => ProcessPromoteStatus.fromJson(value)).toList();
  }

  static Map<String, ProcessPromoteStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessPromoteStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessPromoteStatus.fromJson(value));
    }
    return map;
  }
}

