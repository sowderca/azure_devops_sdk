part of azure_devops_sdk.api;

class ServiceEndpointRequestResult {
  /* Gets or sets the parameters used to make subsequent calls to the data source */
  Map<String, String> callbackContextParameters = {};
  /* Gets or sets the flat that decides if another call to the data source is to be made */
  bool callbackRequired = null;
  /* Gets or sets the error message of the service endpoint request result. */
  String errorMessage = null;
  
  JToken result = null;
  /* Gets or sets the status code of the service endpoint request result. */
  String statusCode = null;
  //enum statusCodeEnum {  continue,  switchingProtocols,  ok,  created,  accepted,  nonAuthoritativeInformation,  noContent,  resetContent,  partialContent,  multipleChoices,  ambiguous,  movedPermanently,  moved,  found,  redirect,  seeOther,  redirectMethod,  notModified,  useProxy,  unused,  temporaryRedirect,  redirectKeepVerb,  badRequest,  unauthorized,  paymentRequired,  forbidden,  notFound,  methodNotAllowed,  notAcceptable,  proxyAuthenticationRequired,  requestTimeout,  conflict,  gone,  lengthRequired,  preconditionFailed,  requestEntityTooLarge,  requestUriTooLong,  unsupportedMediaType,  requestedRangeNotSatisfiable,  expectationFailed,  upgradeRequired,  internalServerError,  notImplemented,  badGateway,  serviceUnavailable,  gatewayTimeout,  httpVersionNotSupported,  };{
  ServiceEndpointRequestResult();

  @override
  String toString() {
    return 'ServiceEndpointRequestResult[callbackContextParameters=$callbackContextParameters, callbackRequired=$callbackRequired, errorMessage=$errorMessage, result=$result, statusCode=$statusCode, ]';
  }

  ServiceEndpointRequestResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['callbackContextParameters'] == null) {
      callbackContextParameters = null;
    } else {
          callbackContextParameters = (json['callbackContextParameters'] as Map).cast<String, String>();
    }
    if (json['callbackRequired'] == null) {
      callbackRequired = null;
    } else {
          callbackRequired = json['callbackRequired'];
    }
    if (json['errorMessage'] == null) {
      errorMessage = null;
    } else {
          errorMessage = json['errorMessage'];
    }
    if (json['result'] == null) {
      result = null;
    } else {
      result = JToken.fromJson(json['result']);
    }
    if (json['statusCode'] == null) {
      statusCode = null;
    } else {
          statusCode = json['statusCode'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (callbackContextParameters != null)
      json['callbackContextParameters'] = callbackContextParameters;
    if (callbackRequired != null)
      json['callbackRequired'] = callbackRequired;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (result != null)
      json['result'] = result;
    if (statusCode != null)
      json['statusCode'] = statusCode;
    return json;
  }

  static List<ServiceEndpointRequestResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointRequestResult>() : json.map((value) => ServiceEndpointRequestResult.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointRequestResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointRequestResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointRequestResult.fromJson(value));
    }
    return map;
  }
}

