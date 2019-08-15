part of azure_devops_sdk.api;

class InstalledExtensionQuery {
  
  List<String> assetTypes = [];
  
  List<ExtensionIdentifier> monikers = [];
  InstalledExtensionQuery();

  @override
  String toString() {
    return 'InstalledExtensionQuery[assetTypes=$assetTypes, monikers=$monikers, ]';
  }

  InstalledExtensionQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assetTypes'] == null) {
      assetTypes = null;
    } else {
      assetTypes = (json['assetTypes'] as List).cast<String>();
    }
    if (json['monikers'] == null) {
      monikers = null;
    } else {
      monikers = ExtensionIdentifier.listFromJson(json['monikers']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assetTypes != null)
      json['assetTypes'] = assetTypes;
    if (monikers != null)
      json['monikers'] = monikers;
    return json;
  }

  static List<InstalledExtensionQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<InstalledExtensionQuery>() : json.map((value) => InstalledExtensionQuery.fromJson(value)).toList();
  }

  static Map<String, InstalledExtensionQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InstalledExtensionQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InstalledExtensionQuery.fromJson(value));
    }
    return map;
  }
}

