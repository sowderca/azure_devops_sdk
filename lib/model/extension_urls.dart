part of azure_devops_sdk.api;

class ExtensionUrls {
  /* Url of the extension icon */
  String extensionIcon = null;
  /* Link to view the extension details page */
  String extensionPage = null;
  ExtensionUrls();

  @override
  String toString() {
    return 'ExtensionUrls[extensionIcon=$extensionIcon, extensionPage=$extensionPage, ]';
  }

  ExtensionUrls.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['extensionIcon'] == null) {
      extensionIcon = null;
    } else {
          extensionIcon = json['extensionIcon'];
    }
    if (json['extensionPage'] == null) {
      extensionPage = null;
    } else {
          extensionPage = json['extensionPage'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (extensionIcon != null)
      json['extensionIcon'] = extensionIcon;
    if (extensionPage != null)
      json['extensionPage'] = extensionPage;
    return json;
  }

  static List<ExtensionUrls> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionUrls>() : json.map((value) => ExtensionUrls.fromJson(value)).toList();
  }

  static Map<String, ExtensionUrls> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionUrls>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionUrls.fromJson(value));
    }
    return map;
  }
}

