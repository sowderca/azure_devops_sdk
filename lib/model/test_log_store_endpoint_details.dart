part of azure_devops_sdk.api;

class TestLogStoreEndpointDetails {
  /* Test log store connection Uri. */
  String endpointSASUri = null;
  /* Test log store endpoint type. */
  String endpointType = null;
  //enum endpointTypeEnum {  root,  file,  };{
  /* Test log store status code */
  String status = null;
  //enum statusEnum {  success,  failed,  fileAlreadyExists,  invalidInput,  invalidFileName,  invalidContainer,  transferFailed,  featureDisabled,  buildDoesNotExist,  runDoesNotExist,  containerNotCreated,  apiNotSupported,  fileSizeExceeds,  containerNotFound,  fileNotFound,  directoryNotFound,  };{
  TestLogStoreEndpointDetails();

  @override
  String toString() {
    return 'TestLogStoreEndpointDetails[endpointSASUri=$endpointSASUri, endpointType=$endpointType, status=$status, ]';
  }

  TestLogStoreEndpointDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['endpointSASUri'] == null) {
      endpointSASUri = null;
    } else {
          endpointSASUri = json['endpointSASUri'];
    }
    if (json['endpointType'] == null) {
      endpointType = null;
    } else {
          endpointType = json['endpointType'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (endpointSASUri != null)
      json['endpointSASUri'] = endpointSASUri;
    if (endpointType != null)
      json['endpointType'] = endpointType;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<TestLogStoreEndpointDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<TestLogStoreEndpointDetails>() : json.map((value) => TestLogStoreEndpointDetails.fromJson(value)).toList();
  }

  static Map<String, TestLogStoreEndpointDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestLogStoreEndpointDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestLogStoreEndpointDetails.fromJson(value));
    }
    return map;
  }
}

