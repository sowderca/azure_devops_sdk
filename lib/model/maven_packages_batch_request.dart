part of azure_devops_sdk.api;

class MavenPackagesBatchRequest {
  /* Do not attempt to use this type to create a new BatchOperationData. This type does not contain sufficient fields to create a new batch operation data. */
  Object data = null;
  /* Type of operation that needs to be performed on packages. */
  String operation = null;
  //enum operationEnum {  promote,  delete,  permanentDelete,  restoreToFeed,  };{
  /* The packages onto which the operation will be performed. */
  List<MavenMinimalPackageDetails> packages = [];
  MavenPackagesBatchRequest();

  @override
  String toString() {
    return 'MavenPackagesBatchRequest[data=$data, operation=$operation, packages=$packages, ]';
  }

  MavenPackagesBatchRequest.fromJson(Map<String, dynamic> json) {
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
      packages = MavenMinimalPackageDetails.listFromJson(json['packages']);
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

  static List<MavenPackagesBatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPackagesBatchRequest>() : json.map((value) => MavenPackagesBatchRequest.fromJson(value)).toList();
  }

  static Map<String, MavenPackagesBatchRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPackagesBatchRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPackagesBatchRequest.fromJson(value));
    }
    return map;
  }
}

