part of azure_devops_sdk.api;

class ExtensionRequest {
  /* Required message supplied if the request is rejected */
  String rejectMessage = null;
  /* Date at which the request was made */
  DateTime requestDate = null;
  
  IdentityRef requestedBy = null;
  /* Optional message supplied by the requester justifying the request */
  String requestMessage = null;
  /* Represents the state of the request */
  String requestState = null;
  //enum requestStateEnum {  open,  accepted,  rejected,  };{
  /* Date at which the request was resolved */
  DateTime resolveDate = null;
  
  IdentityRef resolvedBy = null;
  ExtensionRequest();

  @override
  String toString() {
    return 'ExtensionRequest[rejectMessage=$rejectMessage, requestDate=$requestDate, requestedBy=$requestedBy, requestMessage=$requestMessage, requestState=$requestState, resolveDate=$resolveDate, resolvedBy=$resolvedBy, ]';
  }

  ExtensionRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['rejectMessage'] == null) {
      rejectMessage = null;
    } else {
          rejectMessage = json['rejectMessage'];
    }
    if (json['requestDate'] == null) {
      requestDate = null;
    } else {
      requestDate = DateTime.parse(json['requestDate']);
    }
    if (json['requestedBy'] == null) {
      requestedBy = null;
    } else {
      requestedBy = IdentityRef.fromJson(json['requestedBy']);
    }
    if (json['requestMessage'] == null) {
      requestMessage = null;
    } else {
          requestMessage = json['requestMessage'];
    }
    if (json['requestState'] == null) {
      requestState = null;
    } else {
          requestState = json['requestState'];
    }
    if (json['resolveDate'] == null) {
      resolveDate = null;
    } else {
      resolveDate = DateTime.parse(json['resolveDate']);
    }
    if (json['resolvedBy'] == null) {
      resolvedBy = null;
    } else {
      resolvedBy = IdentityRef.fromJson(json['resolvedBy']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (rejectMessage != null)
      json['rejectMessage'] = rejectMessage;
    if (requestDate != null)
      json['requestDate'] = requestDate == null ? null : requestDate.toUtc().toIso8601String();
    if (requestedBy != null)
      json['requestedBy'] = requestedBy;
    if (requestMessage != null)
      json['requestMessage'] = requestMessage;
    if (requestState != null)
      json['requestState'] = requestState;
    if (resolveDate != null)
      json['resolveDate'] = resolveDate == null ? null : resolveDate.toUtc().toIso8601String();
    if (resolvedBy != null)
      json['resolvedBy'] = resolvedBy;
    return json;
  }

  static List<ExtensionRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionRequest>() : json.map((value) => ExtensionRequest.fromJson(value)).toList();
  }

  static Map<String, ExtensionRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionRequest.fromJson(value));
    }
    return map;
  }
}

