part of azure_devops_sdk.api;

class ExtensionEventUrls {
  /* Url of the extension icon */
  String extensionIcon = null;
  /* Link to view the extension details page */
  String extensionPage = null;
  ExtensionEventUrls();

  @override
  String toString() {
    return 'ExtensionEventUrls[extensionIcon=$extensionIcon, extensionPage=$extensionPage, ]';
  }

  ExtensionEventUrls.fromJson(Map<String, dynamic> json) {
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

  static List<ExtensionEventUrls> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionEventUrls>() : json.map((value) => ExtensionEventUrls.fromJson(value)).toList();
  }

  static Map<String, ExtensionEventUrls> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionEventUrls>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionEventUrls.fromJson(value));
    }
    return map;
  }
}

