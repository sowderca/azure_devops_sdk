part of azure_devops_sdk.api;

class NuGetPackagesBatchRequest {
  /* Do not attempt to use this type to create a new BatchOperationData. This type does not contain sufficient fields to create a new batch operation data. */
  Object data = null;
  /* Type of operation that needs to be performed on packages. */
  String operation = null;
  //enum operationEnum {  promote,  list,  delete,  permanentDelete,  restoreToFeed,  };{
  /* The packages onto which the operation will be performed. */
  List<MinimalPackageDetails> packages = [];
  NuGetPackagesBatchRequest();

  @override
  String toString() {
    return 'NuGetPackagesBatchRequest[data=$data, operation=$operation, packages=$packages, ]';
  }

  NuGetPackagesBatchRequest.fromJson(Map<String, dynamic> json) {
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

  static List<NuGetPackagesBatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<NuGetPackagesBatchRequest>() : json.map((value) => NuGetPackagesBatchRequest.fromJson(value)).toList();
  }

  static Map<String, NuGetPackagesBatchRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NuGetPackagesBatchRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NuGetPackagesBatchRequest.fromJson(value));
    }
    return map;
  }
}

