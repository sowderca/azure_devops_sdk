part of azure_devops_sdk.api;

class PyPiPackagesBatchRequest {
  /* Do not attempt to use this type to create a new BatchOperationData. This type does not contain sufficient fields to create a new batch operation data. */
  Object data = null;
  /* Type of operation that needs to be performed on packages. */
  String operation = null;
  //enum operationEnum {  promote,  delete,  permanentDelete,  restoreToFeed,  };{
  /* The packages onto which the operation will be performed. */
  List<MinimalPackageDetails> packages = [];
  PyPiPackagesBatchRequest();

  @override
  String toString() {
    return 'PyPiPackagesBatchRequest[data=$data, operation=$operation, packages=$packages, ]';
  }

  PyPiPackagesBatchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['data'] == null) {
      data = null;
    } else {
          data = json['data'];
    }
    if (json['operation'] == null) {
      operation = null;
    } else {
          operation = json['operation'];
    }
    if (json['packages'] == null) {
      packages = null;
    } else {
      packages = MinimalPackageDetails.listFromJson(json['packages']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (operation != null)
      json['operation'] = operation;
    if (packages != null)
      json['packages'] = packages;
    return json;
  }

  static List<PyPiPackagesBatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<PyPiPackagesBatchRequest>() : json.map((value) => PyPiPackagesBatchRequest.fromJson(value)).toList();
  }

  static Map<String, PyPiPackagesBatchRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PyPiPackagesBatchRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PyPiPackagesBatchRequest.fromJson(value));
    }
    return map;
  }
}

