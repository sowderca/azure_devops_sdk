part of azure_devops_sdk.api;

class ReleaseNotCreatedEvent {
  
  ReleaseDefinitionShallowReference definitionReference = null;
  
  String message = null;
  
  String releaseReason = null;
  //enum releaseReasonEnum {  none,  manual,  continuousIntegration,  schedule,  pullRequest,  };{
  
  IdentityRef requestedBy = null;
  ReleaseNotCreatedEvent();

  @override
  String toString() {
    return 'ReleaseNotCreatedEvent[definitionReference=$definitionReference, message=$message, releaseReason=$releaseReason, requestedBy=$requestedBy, ]';
  }

  ReleaseNotCreatedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definitionReference'] == null) {
      definitionReference = null;
    } else {
      definitionReference = ReleaseDefinitionShallowReference.fromJson(json['definitionReference']);
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['releaseReason'] == null) {
      releaseReason = null;
    } else {
          releaseReason = json['releaseReason'];
    }
    if (json['requestedBy'] == null) {
      requestedBy = null;
    } else {
      requestedBy = IdentityRef.fromJson(json['requestedBy']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definitionReference != null)
      json['definitionReference'] = definitionReference;
    if (message != null)
      json['message'] = message;
    if (releaseReason != null)
      json['releaseReason'] = releaseReason;
    if (requestedBy != null)
      json['requestedBy'] = requestedBy;
    return json;
  }

  static List<ReleaseNotCreatedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseNotCreatedEvent>() : json.map((value) => ReleaseNotCreatedEvent.fromJson(value)).toList();
  }

  static Map<String, ReleaseNotCreatedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseNotCreatedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseNotCreatedEvent.fromJson(value));
    }
    return map;
  }
}

