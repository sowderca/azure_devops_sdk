part of azure_devops_sdk.api;

class AddProcessWorkItemTypeFieldRequest {
  /* Allow setting field value to a group identity. Only applies to identity fields. */
  bool allowGroups = null;
  /* The default value of the field. */
  Object defaultValue = null;
  /* If true the field cannot be edited. */
  bool readOnly = null;
  /* Reference name of the field. */
  String referenceName = null;
  /* If true the field cannot be empty. */
  bool required = null;
  AddProcessWorkItemTypeFieldRequest();

  @override
  String toString() {
    return 'AddProcessWorkItemTypeFieldRequest[allowGroups=$allowGroups, defaultValue=$defaultValue, readOnly=$readOnly, referenceName=$referenceName, required=$required, ]';
  }

  AddProcessWorkItemTypeFieldRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['allowGroups'] == null) {
      allowGroups = null;
    } else {
          allowGroups = json['allowGroups'];
    }
    if (json['defaultValue'] == null) {
      defaultValue = null;
    } else {
          defaultValue = json['defaultValue'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allowGroups != null)
      json['allowGroups'] = allowGroups;
    if (defaultValue != null)
      json['defaultValue'] = defaultValue;
    if (readOnly != null)
      json['readOnly'] = readOnly;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    if (required != null)
      json['required'] = required;
    return json;
  }

  static List<AddProcessWorkItemTypeFieldRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<AddProcessWorkItemTypeFieldRequest>() : json.map((value) => AddProcessWorkItemTypeFieldRequest.fromJson(value)).toList();
  }

  static Map<String, AddProcessWorkItemTypeFieldRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AddProcessWorkItemTypeFieldRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AddProcessWorkItemTypeFieldRequest.fromJson(value));
    }
    return map;
  }
}

