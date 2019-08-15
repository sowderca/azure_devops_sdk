part of azure_devops_sdk.api;

class ItemDetailsOptions {
  /* If true, include metadata about the file type */
  bool includeContentMetadata = null;
  /* Specifies whether to include children (OneLevel), all descendants (Full) or None for folder items */
  String recursionLevel = null;
  //enum recursionLevelEnum {  none,  oneLevel,  oneLevelPlusNestedEmptyFolders,  full,  };{
  ItemDetailsOptions();

  @override
  String toString() {
    return 'ItemDetailsOptions[includeContentMetadata=$includeContentMetadata, recursionLevel=$recursionLevel, ]';
  }

  ItemDetailsOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['includeContentMetadata'] == null) {
      includeContentMetadata = null;
    } else {
          includeContentMetadata = json['includeContentMetadata'];
    }
    if (json['recursionLevel'] == null) {
      recursionLevel = null;
    } else {
          recursionLevel = json['recursionLevel'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (includeContentMetadata != null)
      json['includeContentMetadata'] = includeContentMetadata;
    if (recursionLevel != null)
      json['recursionLevel'] = recursionLevel;
    return json;
  }

  static List<ItemDetailsOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<ItemDetailsOptions>() : json.map((value) => ItemDetailsOptions.fromJson(value)).toList();
  }

  static Map<String, ItemDetailsOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ItemDetailsOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ItemDetailsOptions.fromJson(value));
    }
    return map;
  }
}

