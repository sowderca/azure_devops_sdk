part of azure_devops_sdk.api;

class CloneOperationInformation {
  
  CloneStatistics cloneStatistics = null;
  /* If the operation is complete, the DateTime of completion. If operation is not complete, this is DateTime.MaxValue */
  DateTime completionDate = null;
  /* DateTime when the operation was started */
  DateTime creationDate = null;
  
  ShallowReference destinationObject = null;
  
  ShallowReference destinationPlan = null;
  
  ShallowReference destinationProject = null;
  /* If the operation has Failed, Message contains the reason for failure. Null otherwise. */
  String message = null;
  /* The ID of the operation */
  int opId = null;
  /* The type of the object generated as a result of the Clone operation */
  String resultObjectType = null;
  //enum resultObjectTypeEnum {  testSuite,  testPlan,  };{
  
  ShallowReference sourceObject = null;
  
  ShallowReference sourcePlan = null;
  
  ShallowReference sourceProject = null;
  /* Current state of the operation. When State reaches Suceeded or Failed, the operation is complete */
  String state = null;
  //enum stateEnum {  failed,  inProgress,  queued,  succeeded,  };{
  /* Url for getting the clone information */
  String url = null;
  CloneOperationInformation();

  @override
  String toString() {
    return 'CloneOperationInformation[cloneStatistics=$cloneStatistics, completionDate=$completionDate, creationDate=$creationDate, destinationObject=$destinationObject, destinationPlan=$destinationPlan, destinationProject=$destinationProject, message=$message, opId=$opId, resultObjectType=$resultObjectType, sourceObject=$sourceObject, sourcePlan=$sourcePlan, sourceProject=$sourceProject, state=$state, url=$url, ]';
  }

  CloneOperationInformation.fromJson(Map<String, dynamic> json) {
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
    if (json['destinationObject'] == null) {
      destinationObject = null;
    } else {
      destinationObject = ShallowReference.fromJson(json['destinationObject']);
    }
    if (json['destinationPlan'] == null) {
      destinationPlan = null;
    } else {
      destinationPlan = ShallowReference.fromJson(json['destinationPlan']);
    }
    if (json['destinationProject'] == null) {
      destinationProject = null;
    } else {
      destinationProject = ShallowReference.fromJson(json['destinationProject']);
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
    if (json['resultObjectType'] == null) {
      resultObjectType = null;
    } else {
          resultObjectType = json['resultObjectType'];
    }
    if (json['sourceObject'] == null) {
      sourceObject = null;
    } else {
      sourceObject = ShallowReference.fromJson(json['sourceObject']);
    }
    if (json['sourcePlan'] == null) {
      sourcePlan = null;
    } else {
      sourcePlan = ShallowReference.fromJson(json['sourcePlan']);
    }
    if (json['sourceProject'] == null) {
      sourceProject = null;
    } else {
      sourceProject = ShallowReference.fromJson(json['sourceProject']);
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
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
    if (destinationObject != null)
      json['destinationObject'] = destinationObject;
    if (destinationPlan != null)
      json['destinationPlan'] = destinationPlan;
    if (destinationProject != null)
      json['destinationProject'] = destinationProject;
    if (message != null)
      json['message'] = message;
    if (opId != null)
      json['opId'] = opId;
    if (resultObjectType != null)
      json['resultObjectType'] = resultObjectType;
    if (sourceObject != null)
      json['sourceObject'] = sourceObject;
    if (sourcePlan != null)
      json['sourcePlan'] = sourcePlan;
    if (sourceProject != null)
      json['sourceProject'] = sourceProject;
    if (state != null)
      json['state'] = state;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<CloneOperationInformation> listFromJson(List<dynamic> json) {
    return json == null ? List<CloneOperationInformation>() : json.map((value) => CloneOperationInformation.fromJson(value)).toList();
  }

  static Map<String, CloneOperationInformation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CloneOperationInformation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CloneOperationInformation.fromJson(value));
    }
    return map;
  }
}

