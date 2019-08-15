part of azure_devops_sdk.api;

class EventTransformRequest {
  /* Event payload. */
  String eventPayload = null;
  /* Event type. */
  String eventType = null;
  /* System inputs. */
  Map<String, String> systemInputs = {};
  EventTransformRequest();

  @override
  String toString() {
    return 'EventTransformRequest[eventPayload=$eventPayload, eventType=$eventType, systemInputs=$systemInputs, ]';
  }

  EventTransformRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eventPayload'] == null) {
      eventPayload = null;
    } else {
          eventPayload = json['eventPayload'];
    }
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['systemInputs'] == null) {
      systemInputs = null;
    } else {
          systemInputs = (json['systemInputs'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eventPayload != null)
      json['eventPayload'] = eventPayload;
    if (eventType != null)
      json['eventType'] = eventType;
    if (systemInputs != null)
      json['systemInputs'] = systemInputs;
    return json;
  }

  static List<EventTransformRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<EventTransformRequest>() : json.map((value) => EventTransformRequest.fromJson(value)).toList();
  }

  static Map<String, EventTransformRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventTransformRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventTransformRequest.fromJson(value));
    }
    return map;
  }
}

