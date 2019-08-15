part of azure_devops_sdk.api;

class RequestedExtension {
  /* The unique name of the extension */
  String extensionName = null;
  /* A list of each request for the extension */
  List<ExtensionRequest> extensionRequests = [];
  /* DisplayName of the publisher that owns the extension being published. */
  String publisherDisplayName = null;
  /* Represents the Publisher of the requested extension */
  String publisherName = null;
  /* The total number of requests for an extension */
  int requestCount = null;
  RequestedExtension();

  @override
  String toString() {
    return 'RequestedExtension[extensionName=$extensionName, extensionRequests=$extensionRequests, publisherDisplayName=$publisherDisplayName, publisherName=$publisherName, requestCount=$requestCount, ]';
  }

  RequestedExtension.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['extensionName'] == null) {
      extensionName = null;
    } else {
          extensionName = json['extensionName'];
    }
    if (json['extensionRequests'] == null) {
      extensionRequests = null;
    } else {
      extensionRequests = ExtensionRequest.listFromJson(json['extensionRequests']);
    }
    if (json['publisherDisplayName'] == null) {
      publisherDisplayName = null;
    } else {
          publisherDisplayName = json['publisherDisplayName'];
    }
    if (json['publisherName'] == null) {
      publisherName = null;
    } else {
          publisherName = json['publisherName'];
    }
    if (json['requestCount'] == null) {
      requestCount = null;
    } else {
          requestCount = json['requestCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (extensionName != null)
      json['extensionName'] = extensionName;
    if (extensionRequests != null)
      json['extensionRequests'] = extensionRequests;
    if (publisherDisplayName != null)
      json['publisherDisplayName'] = publisherDisplayName;
    if (publisherName != null)
      json['publisherName'] = publisherName;
    if (requestCount != null)
      json['requestCount'] = requestCount;
    return json;
  }

  static List<RequestedExtension> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestedExtension>() : json.map((value) => RequestedExtension.fromJson(value)).toList();
  }

  static Map<String, RequestedExtension> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestedExtension>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestedExtension.fromJson(value));
    }
    return map;
  }
}

