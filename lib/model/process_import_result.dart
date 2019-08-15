part of azure_devops_sdk.api;

class ProcessImportResult {
  
  CheckTemplateExistenceResult checkExistenceResult = null;
  /* Help URL. */
  String helpUrl = null;
  /* ID of the import operation. */
  String id = null;
  /* Whether this imported process is new. */
  bool isNew = null;
  /* The promote job identifier. */
  String promoteJobId = null;
  /* The list of validation results. */
  List<ValidationIssue> validationResults = [];
  ProcessImportResult();

  @override
  String toString() {
    return 'ProcessImportResult[checkExistenceResult=$checkExistenceResult, helpUrl=$helpUrl, id=$id, isNew=$isNew, promoteJobId=$promoteJobId, validationResults=$validationResults, ]';
  }

  ProcessImportResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['checkExistenceResult'] == null) {
      checkExistenceResult = null;
    } else {
      checkExistenceResult = CheckTemplateExistenceResult.fromJson(json['checkExistenceResult']);
    }
    if (json['helpUrl'] == null) {
      helpUrl = null;
    } else {
          helpUrl = json['helpUrl'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isNew'] == null) {
      isNew = null;
    } else {
          isNew = json['isNew'];
    }
    if (json['promoteJobId'] == null) {
      promoteJobId = null;
    } else {
          promoteJobId = json['promoteJobId'];
    }
    if (json['validationResults'] == null) {
      validationResults = null;
    } else {
      validationResults = ValidationIssue.listFromJson(json['validationResults']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (checkExistenceResult != null)
      json['checkExistenceResult'] = checkExistenceResult;
    if (helpUrl != null)
      json['helpUrl'] = helpUrl;
    if (id != null)
      json['id'] = id;
    if (isNew != null)
      json['isNew'] = isNew;
    if (promoteJobId != null)
      json['promoteJobId'] = promoteJobId;
    if (validationResults != null)
      json['validationResults'] = validationResults;
    return json;
  }

  static List<ProcessImportResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessImportResult>() : json.map((value) => ProcessImportResult.fromJson(value)).toList();
  }

  static Map<String, ProcessImportResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessImportResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessImportResult.fromJson(value));
    }
    return map;
  }
}

