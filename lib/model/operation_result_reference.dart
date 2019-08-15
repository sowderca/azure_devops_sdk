part of azure_devops_sdk.api;

class OperationResultReference {
  /* URL to the operation result. */
  String resultUrl = null;
  OperationResultReference();

  @override
  String toString() {
    return 'OperationResultReference[resultUrl=$resultUrl, ]';
  }

  OperationResultReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['resultUrl'] == null) {
      resultUrl = null;
    } else {
          resultUrl = json['resultUrl'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (resultUrl != null)
      json['resultUrl'] = resultUrl;
    return json;
  }

  static List<OperationResultReference> listFromJson(List<dynamic> json) {
    return json == null ? List<OperationResultReference>() : json.map((value) => OperationResultReference.fromJson(value)).toList();
  }

  static Map<String, OperationResultReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OperationResultReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OperationResultReference.fromJson(value));
    }
    return map;
  }
}

