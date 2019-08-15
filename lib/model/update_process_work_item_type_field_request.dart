part of azure_devops_sdk.api;

class UpdateProcessWorkItemTypeFieldRequest {
  /* Allow setting field value to a group identity. Only applies to identity fields. */
  bool allowGroups = null;
  /* The default value of the field. */
  Object defaultValue = null;
  /* If true the field cannot be edited. */
  bool readOnly = null;
  /* The default value of the field. */
  bool required = null;
  UpdateProcessWorkItemTypeFieldRequest();

  @override
  String toString() {
    return 'UpdateProcessWorkItemTypeFieldRequest[allowGroups=$allowGroups, defaultValue=$defaultValue, readOnly=$readOnly, required=$required, ]';
  }

  UpdateProcessWorkItemTypeFieldRequest.fromJson(Map<String, dynamic> json) {
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
    if (required != null)
      json['required'] = required;
    return json;
  }

  static List<UpdateProcessWorkItemTypeFieldRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateProcessWorkItemTypeFieldRequest>() : json.map((value) => UpdateProcessWorkItemTypeFieldRequest.fromJson(value)).toList();
  }

  static Map<String, UpdateProcessWorkItemTypeFieldRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateProcessWorkItemTypeFieldRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateProcessWorkItemTypeFieldRequest.fromJson(value));
    }
    return map;
  }
}

