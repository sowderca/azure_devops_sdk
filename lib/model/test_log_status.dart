part of azure_devops_sdk.api;

class TestLogStatus {
  /* Exception message */
  String exception = null;
  /* Test Log Status code */
  String status = null;
  //enum statusEnum {  success,  failed,  fileAlreadyExists,  invalidInput,  invalidFileName,  invalidContainer,  transferFailed,  featureDisabled,  buildDoesNotExist,  runDoesNotExist,  containerNotCreated,  apiNotSupported,  fileSizeExceeds,  containerNotFound,  fileNotFound,  directoryNotFound,  };{
  /* Blob Transfer Error code */
  String transferFailureType = null;
  TestLogStatus();

  @override
  String toString() {
    return 'TestLogStatus[exception=$exception, status=$status, transferFailureType=$transferFailureType, ]';
  }

  TestLogStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['exception'] == null) {
      exception = null;
    } else {
          exception = json['exception'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['transferFailureType'] == null) {
      transferFailureType = null;
    } else {
          transferFailureType = json['transferFailureType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exception != null)
      json['exception'] = exception;
    if (status != null)
      json['status'] = status;
    if (transferFailureType != null)
      json['transferFailureType'] = transferFailureType;
    return json;
  }

  static List<TestLogStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<TestLogStatus>() : json.map((value) => TestLogStatus.fromJson(value)).toList();
  }

  static Map<String, TestLogStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestLogStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestLogStatus.fromJson(value));
    }
    return map;
  }
}

