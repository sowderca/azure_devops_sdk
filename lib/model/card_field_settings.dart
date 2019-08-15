part of azure_devops_sdk.api;

class CardFieldSettings {
  /* A collection of field information of additional fields on cards. The index in the collection signifies the order of the field among the additional fields. Currently unused. Should be used with User Story 691539: Card setting: additional fields */
  List<FieldInfo> additionalFields = [];
  /* Display format for the assigned to field */
  String assignedToDisplayFormat = null;
  //enum assignedToDisplayFormatEnum {  avatarOnly,  fullName,  avatarAndFullName,  };{
  /* A collection of field information of rendered core fields on cards. */
  List<FieldInfo> coreFields = [];
  /* Flag indicating whether to show assigned to field on cards. When true, AssignedToDisplayFormat will determine how the field will be displayed */
  bool showAssignedTo = null;
  /* Flag indicating whether to show empty fields on cards */
  bool showEmptyFields = null;
  /* Flag indicating whether to show ID on cards */
  bool showId = null;
  /* Flag indicating whether to show state field on cards */
  bool showState = null;
  /* Flag indicating whether to show tags on cards */
  bool showTags = null;
  CardFieldSettings();

  @override
  String toString() {
    return 'CardFieldSettings[additionalFields=$additionalFields, assignedToDisplayFormat=$assignedToDisplayFormat, coreFields=$coreFields, showAssignedTo=$showAssignedTo, showEmptyFields=$showEmptyFields, showId=$showId, showState=$showState, showTags=$showTags, ]';
  }

  CardFieldSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['additionalFields'] == null) {
      additionalFields = null;
    } else {
      additionalFields = FieldInfo.listFromJson(json['additionalFields']);
    }
    if (json['assignedToDisplayFormat'] == null) {
      assignedToDisplayFormat = null;
    } else {
          assignedToDisplayFormat = json['assignedToDisplayFormat'];
    }
    if (json['coreFields'] == null) {
      coreFields = null;
    } else {
      coreFields = FieldInfo.listFromJson(json['coreFields']);
    }
    if (json['showAssignedTo'] == null) {
      showAssignedTo = null;
    } else {
          showAssignedTo = json['showAssignedTo'];
    }
    if (json['showEmptyFields'] == null) {
      showEmptyFields = null;
    } else {
          showEmptyFields = json['showEmptyFields'];
    }
    if (json['showId'] == null) {
      showId = null;
    } else {
          showId = json['showId'];
    }
    if (json['showState'] == null) {
      showState = null;
    } else {
          showState = json['showState'];
    }
    if (json['showTags'] == null) {
      showTags = null;
    } else {
          showTags = json['showTags'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (additionalFields != null)
      json['additionalFields'] = additionalFields;
    if (assignedToDisplayFormat != null)
      json['assignedToDisplayFormat'] = assignedToDisplayFormat;
    if (coreFields != null)
      json['coreFields'] = coreFields;
    if (showAssignedTo != null)
      json['showAssignedTo'] = showAssignedTo;
    if (showEmptyFields != null)
      json['showEmptyFields'] = showEmptyFields;
    if (showId != null)
      json['showId'] = showId;
    if (showState != null)
      json['showState'] = showState;
    if (showTags != null)
      json['showTags'] = showTags;
    return json;
  }

  static List<CardFieldSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<CardFieldSettings>() : json.map((value) => CardFieldSettings.fromJson(value)).toList();
  }

  static Map<String, CardFieldSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CardFieldSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CardFieldSettings.fromJson(value));
    }
    return map;
  }
}

