part of azure_devops_sdk.api;

class CheckTemplateExistenceResult {
  /* Indicates whether a template exists. */
  bool doesTemplateExist = null;
  /* The name of the existing template. */
  String existingTemplateName = null;
  /* The existing template type identifier. */
  String existingTemplateTypeId = null;
  /* The name of the requested template. */
  String requestedTemplateName = null;
  CheckTemplateExistenceResult();

  @override
  String toString() {
    return 'CheckTemplateExistenceResult[doesTemplateExist=$doesTemplateExist, existingTemplateName=$existingTemplateName, existingTemplateTypeId=$existingTemplateTypeId, requestedTemplateName=$requestedTemplateName, ]';
  }

  CheckTemplateExistenceResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['doesTemplateExist'] == null) {
      doesTemplateExist = null;
    } else {
          doesTemplateExist = json['doesTemplateExist'];
    }
    if (json['existingTemplateName'] == null) {
      existingTemplateName = null;
    } else {
          existingTemplateName = json['existingTemplateName'];
    }
    if (json['existingTemplateTypeId'] == null) {
      existingTemplateTypeId = null;
    } else {
          existingTemplateTypeId = json['existingTemplateTypeId'];
    }
    if (json['requestedTemplateName'] == null) {
      requestedTemplateName = null;
    } else {
          requestedTemplateName = json['requestedTemplateName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (doesTemplateExist != null)
      json['doesTemplateExist'] = doesTemplateExist;
    if (existingTemplateName != null)
      json['existingTemplateName'] = existingTemplateName;
    if (existingTemplateTypeId != null)
      json['existingTemplateTypeId'] = existingTemplateTypeId;
    if (requestedTemplateName != null)
      json['requestedTemplateName'] = requestedTemplateName;
    return json;
  }

  static List<CheckTemplateExistenceResult> listFromJson(List<dynamic> json) {
    return json == null ? List<CheckTemplateExistenceResult>() : json.map((value) => CheckTemplateExistenceResult.fromJson(value)).toList();
  }

  static Map<String, CheckTemplateExistenceResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CheckTemplateExistenceResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CheckTemplateExistenceResult.fromJson(value));
    }
    return map;
  }
}

