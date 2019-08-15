part of azure_devops_sdk.api;

class CloneOperationCommonResponse {
  
  CloneStatistics cloneStatistics = null;
  /* Completion data of the operation */
  DateTime completionDate = null;
  /* Creation data of the operation */
  DateTime creationDate = null;
  
  ReferenceLinks links = null;
  /* Message related to the job */
  String message = null;
  /* Clone operation Id */
  int opId = null;
  /* Clone operation state */
  String state = null;
  //enum stateEnum {  failed,  inProgress,  queued,  succeeded,  };{
  CloneOperationCommonResponse();

  @override
  String toString() {
    return 'CloneOperationCommonResponse[cloneStatistics=$cloneStatistics, completionDate=$completionDate, creationDate=$creationDate, links=$links, message=$message, opId=$opId, state=$state, ]';
  }

  CloneOperationCommonResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cloneStatistics'] == null) {
      cloneStatistics = null;
    } else {
      cloneStatistics = CloneStatistics.fromJson(json['cloneStatistics']);
    }
    if (json['completionDate'] == null) {
      completionDate = null;
    } else {
      completionDate = DateTime.parse(json['completionDate']);
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['links']);
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['opId'] == null) {
      opId = null;
    } else {
          opId = json['opId'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cloneStatistics != null)
      json['cloneStatistics'] = cloneStatistics;
    if (completionDate != null)
      json['completionDate'] = completionDate == null ? null : completionDate.toUtc().toIso8601String();
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (links != null)
      json['links'] = links;
    if (message != null)
      json['message'] = message;
    if (opId != null)
      json['opId'] = opId;
    if (state != null)
      json['state'] = state;
    return json;
  }

  static List<CloneOperationCommonResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<CloneOperationCommonResponse>() : json.map((value) => CloneOperationCommonResponse.fromJson(value)).toList();
  }

  static Map<String, CloneOperationCommonResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CloneOperationCommonResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CloneOperationCommonResponse.fromJson(value));
    }
    return map;
  }
}

