part of azure_devops_sdk.api;

class ProcessWorkItemTypeField {
  /* Allow setting field value to a group identity. Only applies to identity fields. */
  bool allowGroups = null;
  /* Indicates the type of customization on this work item. */
  String customization = null;
  //enum customizationEnum {  system,  inherited,  custom,  };{
  /* The default value of the field. */
  Object defaultValue = null;
  /* Description of the field. */
  String description = null;
  /* Name of the field. */
  String name = null;
  /* If true the field cannot be edited. */
  bool readOnly = null;
  /* Reference name of the field. */
  String referenceName = null;
  /* If true the field cannot be empty. */
  bool required = null;
  /* Type of the field. */
  String type = null;
  //enum typeEnum {  string,  integer,  dateTime,  plainText,  html,  treePath,  history,  double,  guid,  boolean,  identity,  picklistInteger,  picklistString,  picklistDouble,  };{
  /* Resource URL of the field. */
  String url = null;
  ProcessWorkItemTypeField();

  @override
  String toString() {
    return 'ProcessWorkItemTypeField[allowGroups=$allowGroups, customization=$customization, defaultValue=$defaultValue, description=$description, name=$name, readOnly=$readOnly, referenceName=$referenceName, required=$required, type=$type, url=$url, ]';
  }

  ProcessWorkItemTypeField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['allowGroups'] == null) {
      allowGroups = null;
    } else {
          allowGroups = json['allowGroups'];
    }
    if (json['customization'] == null) {
      customization = null;
    } else {
          customization = json['customization'];
    }
    if (json['defaultValue'] == null) {
      defaultValue = null;
    } else {
          defaultValue = json['defaultValue'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['readOnly'] == null) {
      readOnly = null;
    } else {
          readOnly = json['readOnly'];
    }
    if (json['referenceName'] == null) {
      referenceName = null;
    } else {
          referenceName = json['referenceName'];
    }
    if (json['required'] == null) {
      required = null;
    } else {
          required = json['required'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allowGroups != null)
      json['allowGroups'] = allowGroups;
    if (customization != null)
      json['customization'] = customization;
    if (defaultValue != null)
      json['defaultValue'] = defaultValue;
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    if (readOnly != null)
      json['readOnly'] = readOnly;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    if (required != null)
      json['required'] = required;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ProcessWorkItemTypeField> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessWorkItemTypeField>() : json.map((value) => ProcessWorkItemTypeField.fromJson(value)).toList();
  }

  static Map<String, ProcessWorkItemTypeField> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessWorkItemTypeField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessWorkItemTypeField.fromJson(value));
    }
    return map;
  }
}

