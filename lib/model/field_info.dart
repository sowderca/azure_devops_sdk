part of azure_devops_sdk.api;

class FieldInfo {
  /* The additional field display name */
  String displayName = null;
  /* The additional field type */
  String fieldType = null;
  //enum fieldTypeEnum {  string,  plainText,  integer,  dateTime,  treePath,  boolean,  double,  };{
  /* Indicates if the field definition is for an identity field. */
  bool isIdentity = null;
  /* The additional field reference name */
  String referenceName = null;
  FieldInfo();

  @override
  String toString() {
    return 'FieldInfo[displayName=$displayName, fieldType=$fieldType, isIdentity=$isIdentity, referenceName=$referenceName, ]';
  }

  FieldInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['fieldType'] == null) {
      fieldType = null;
    } else {
          fieldType = json['fieldType'];
    }
    if (json['isIdentity'] == null) {
      isIdentity = null;
    } else {
          isIdentity = json['isIdentity'];
    }
    if (json['referenceName'] == null) {
      referenceName = null;
    } else {
          referenceName = json['referenceName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (fieldType != null)
      json['fieldType'] = fieldType;
    if (isIdentity != null)
      json['isIdentity'] = isIdentity;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    return json;
  }

  static List<FieldInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<FieldInfo>() : json.map((value) => FieldInfo.fromJson(value)).toList();
  }

  static Map<String, FieldInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FieldInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FieldInfo.fromJson(value));
    }
    return map;
  }
}

