part of azure_devops_sdk.api;

class AcquisitionOperation {
  /* State of the the AcquisitionOperation for the current user */
  String operationState = null;
  //enum operationStateEnum {  disallow,  allow,  completed,  };{
  /* AcquisitionOperationType: install, request, buy, etc... */
  String operationType = null;
  //enum operationTypeEnum {  get,  install,  buy,  try,  request,  none,  purchaseRequest,  };{
  /* Optional reason to justify current state. Typically used with Disallow state. */
  String reason = null;
  /* List of reasons indicating why the operation is not allowed. */
  List<AcquisitionOperationDisallowReason> reasons = [];
  AcquisitionOperation();

  @override
  String toString() {
    return 'AcquisitionOperation[operationState=$operationState, operationType=$operationType, reason=$reason, reasons=$reasons, ]';
  }

  AcquisitionOperation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['operationState'] == null) {
      operationState = null;
    } else {
          operationState = json['operationState'];
    }
    if (json['operationType'] == null) {
      operationType = null;
    } else {
          operationType = json['operationType'];
    }
    if (json['reason'] == null) {
      reason = null;
    } else {
          reason = json['reason'];
    }
    if (json['reasons'] == null) {
      reasons = null;
    } else {
      reasons = AcquisitionOperationDisallowReason.listFromJson(json['reasons']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (operationState != null)
      json['operationState'] = operationState;
    if (operationType != null)
      json['operationType'] = operationType;
    if (reason != null)
      json['reason'] = reason;
    if (reasons != null)
      json['reasons'] = reasons;
    return json;
  }

  static List<AcquisitionOperation> listFromJson(List<dynamic> json) {
    return json == null ? List<AcquisitionOperation>() : json.map((value) => AcquisitionOperation.fromJson(value)).toList();
  }

  static Map<String, AcquisitionOperation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AcquisitionOperation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AcquisitionOperation.fromJson(value));
    }
    return map;
  }
}

