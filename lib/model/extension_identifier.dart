part of azure_devops_sdk.api;

class ExtensionIdentifier {
  /* The ExtensionName component part of the fully qualified ExtensionIdentifier */
  String extensionName = null;
  /* The PublisherName component part of the fully qualified ExtensionIdentifier */
  String publisherName = null;
  ExtensionIdentifier();

  @override
  String toString() {
    return 'ExtensionIdentifier[extensionName=$extensionName, publisherName=$publisherName, ]';
  }

  ExtensionIdentifier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['extensionName'] == null) {
      extensionName = null;
    } else {
          extensionName = json['extensionName'];
    }
    if (json['publisherName'] == null) {
      publisherName = null;
    } else {
          publisherName = json['publisherName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (extensionName != null)
      json['extensionName'] = extensionName;
    if (publisherName != null)
      json['publisherName'] = publisherName;
    return json;
  }

  static List<ExtensionIdentifier> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionIdentifier>() : json.map((value) => ExtensionIdentifier.fromJson(value)).toList();
  }

  static Map<String, ExtensionIdentifier> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionIdentifier>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionIdentifier.fromJson(value));
    }
    return map;
  }
}

