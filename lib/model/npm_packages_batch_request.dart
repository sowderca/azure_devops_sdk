part of azure_devops_sdk.api;

class NpmPackagesBatchRequest {
  /* Do not attempt to use this type to create a new BatchOperationData. This type does not contain sufficient fields to create a new batch operation data. */
  Object data = null;
  /* Type of operation that needs to be performed on packages. */
  String operation = null;
  //enum operationEnum {  promote,  deprecate,  unpublish,  permanentDelete,  restoreToFeed,  delete,  };{
  /* The packages onto which the operation will be performed. */
  List<MinimalPackageDetails> packages = [];
  NpmPackagesBatchRequest();

  @override
  String toString() {
    return 'NpmPackagesBatchRequest[data=$data, operation=$operation, packages=$packages, ]';
  }

  NpmPackagesBatchRequest.fromJson(Map<String, dynamic> json) {
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

  static List<NpmPackagesBatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<NpmPackagesBatchRequest>() : json.map((value) => NpmPackagesBatchRequest.fromJson(value)).toList();
  }

  static Map<String, NpmPackagesBatchRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NpmPackagesBatchRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NpmPackagesBatchRequest.fromJson(value));
    }
    return map;
  }
}

