part of azure_devops_sdk.api;

class ExtensionRequestUrls {
  /* Url of the extension icon */
  String extensionIcon = null;
  /* Link to view the extension details page */
  String extensionPage = null;
  ExtensionRequestUrls();

  @override
  String toString() {
    return 'ExtensionRequestUrls[extensionIcon=$extensionIcon, extensionPage=$extensionPage, ]';
  }

  ExtensionRequestUrls.fromJson(Map<String, dynamic> json) {
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

  static List<ExtensionRequestUrls> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionRequestUrls>() : json.map((value) => ExtensionRequestUrls.fromJson(value)).toList();
  }

  static Map<String, ExtensionRequestUrls> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionRequestUrls>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionRequestUrls.fromJson(value));
    }
    return map;
  }
}

