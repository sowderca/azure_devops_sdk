part of azure_devops_sdk.api;

class ExtensionAcquisitionRequest {
  /* How the item is being assigned */
  String assignmentType = null;
  //enum assignmentTypeEnum {  none,  me,  all,  };{
  /* The id of the subscription used for purchase */
  String billingId = null;
  /* The marketplace id (publisherName.extensionName) for the item */
  String itemId = null;
  /* The type of operation, such as install, request, purchase */
  String operationType = null;
  //enum operationTypeEnum {  get,  install,  buy,  try,  request,  none,  purchaseRequest,  };{
  
  JObject properties = null;
  /* How many licenses should be purchased */
  int quantity = null;
  ExtensionAcquisitionRequest();

  @override
  String toString() {
    return 'ExtensionAcquisitionRequest[assignmentType=$assignmentType, billingId=$billingId, itemId=$itemId, operationType=$operationType, properties=$properties, quantity=$quantity, ]';
  }

  ExtensionAcquisitionRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assignmentType'] == null) {
      assignmentType = null;
    } else {
          assignmentType = json['assignmentType'];
    }
    if (json['billingId'] == null) {
      billingId = null;
    } else {
          billingId = json['billingId'];
    }
    if (json['itemId'] == null) {
      itemId = null;
    } else {
          itemId = json['itemId'];
    }
    if (json['operationType'] == null) {
      operationType = null;
    } else {
          operationType = json['operationType'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = JObject.fromJson(json['properties']);
    }
    if (json['quantity'] == null) {
      quantity = null;
    } else {
          quantity = json['quantity'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assignmentType != null)
      json['assignmentType'] = assignmentType;
    if (billingId != null)
      json['billingId'] = billingId;
    if (itemId != null)
      json['itemId'] = itemId;
    if (operationType != null)
      json['operationType'] = operationType;
    if (properties != null)
      json['properties'] = properties;
    if (quantity != null)
      json['quantity'] = quantity;
    return json;
  }

  static List<ExtensionAcquisitionRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionAcquisitionRequest>() : json.map((value) => ExtensionAcquisitionRequest.fromJson(value)).toList();
  }

  static Map<String, ExtensionAcquisitionRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionAcquisitionRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionAcquisitionRequest.fromJson(value));
    }
    return map;
  }
}

