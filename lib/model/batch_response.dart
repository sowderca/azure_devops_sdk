part of azure_devops_sdk.api;

class BatchResponse {
  
  String error = null;
  
  List<Response> responses = [];
  
  String status = null;
  //enum statusEnum {  continue,  switchingProtocols,  ok,  created,  accepted,  nonAuthoritativeInformation,  noContent,  resetContent,  partialContent,  multipleChoices,  ambiguous,  movedPermanently,  moved,  found,  redirect,  seeOther,  redirectMethod,  notModified,  useProxy,  unused,  temporaryRedirect,  redirectKeepVerb,  badRequest,  unauthorized,  paymentRequired,  forbidden,  notFound,  methodNotAllowed,  notAcceptable,  proxyAuthenticationRequired,  requestTimeout,  conflict,  gone,  lengthRequired,  preconditionFailed,  requestEntityTooLarge,  requestUriTooLong,  unsupportedMediaType,  requestedRangeNotSatisfiable,  expectationFailed,  upgradeRequired,  internalServerError,  notImplemented,  badGateway,  serviceUnavailable,  gatewayTimeout,  httpVersionNotSupported,  };{
  BatchResponse();

  @override
  String toString() {
    return 'BatchResponse[error=$error, responses=$responses, status=$status, ]';
  }

  BatchResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['error'] == null) {
      error = null;
    } else {
          error = json['error'];
    }
    if (json['responses'] == null) {
      responses = null;
    } else {
      responses = Response.listFromJson(json['responses']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (error != null)
      json['error'] = error;
    if (responses != null)
      json['responses'] = responses;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<BatchResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<BatchResponse>() : json.map((value) => BatchResponse.fromJson(value)).toList();
  }

  static Map<String, BatchResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BatchResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BatchResponse.fromJson(value));
    }
    return map;
  }
}

