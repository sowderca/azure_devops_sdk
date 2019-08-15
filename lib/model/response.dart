part of azure_devops_sdk.api;

class Response {
  
  String error = null;
  
  String id = null;
  
  String status = null;
  //enum statusEnum {  continue,  switchingProtocols,  ok,  created,  accepted,  nonAuthoritativeInformation,  noContent,  resetContent,  partialContent,  multipleChoices,  ambiguous,  movedPermanently,  moved,  found,  redirect,  seeOther,  redirectMethod,  notModified,  useProxy,  unused,  temporaryRedirect,  redirectKeepVerb,  badRequest,  unauthorized,  paymentRequired,  forbidden,  notFound,  methodNotAllowed,  notAcceptable,  proxyAuthenticationRequired,  requestTimeout,  conflict,  gone,  lengthRequired,  preconditionFailed,  requestEntityTooLarge,  requestUriTooLong,  unsupportedMediaType,  requestedRangeNotSatisfiable,  expectationFailed,  upgradeRequired,  internalServerError,  notImplemented,  badGateway,  serviceUnavailable,  gatewayTimeout,  httpVersionNotSupported,  };{
  
  String url = null;
  Response();

  @override
  String toString() {
    return 'Response[error=$error, id=$id, status=$status, url=$url, ]';
  }

  Response.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['error'] == null) {
      error = null;
    } else {
          error = json['error'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (error != null)
      json['error'] = error;
    if (id != null)
      json['id'] = id;
    if (status != null)
      json['status'] = status;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Response> listFromJson(List<dynamic> json) {
    return json == null ? List<Response>() : json.map((value) => Response.fromJson(value)).toList();
  }

  static Map<String, Response> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Response>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Response.fromJson(value));
    }
    return map;
  }
}

