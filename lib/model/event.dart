part of azure_devops_sdk.api;

class Event {
  /* Gets or sets the UTC-based date and time that this event was created. */
  DateTime createdDate = null;
  
  FormattedEventMessage detailedMessage = null;
  /* Gets or sets the type of this event. */
  String eventType = null;
  /* Gets or sets the unique identifier of this event. */
  String id = null;
  
  FormattedEventMessage message = null;
  /* Gets or sets the identifier of the publisher that raised this event. */
  String publisherId = null;
  /* Gets or sets the data associated with this event. */
  Object resource = null;
  /* Gets or sets the resource containers. */
  Map<String, ResourceContainer> resourceContainers = {};
  /* Gets or sets the version of the data associated with this event. */
  String resourceVersion = null;
  
  SessionToken sessionToken = null;
  Event();

  @override
  String toString() {
    return 'Event[createdDate=$createdDate, detailedMessage=$detailedMessage, eventType=$eventType, id=$id, message=$message, publisherId=$publisherId, resource=$resource, resourceContainers=$resourceContainers, resourceVersion=$resourceVersion, sessionToken=$sessionToken, ]';
  }

  Event.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['detailedMessage'] == null) {
      detailedMessage = null;
    } else {
      detailedMessage = FormattedEventMessage.fromJson(json['detailedMessage']);
    }
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
      message = FormattedEventMessage.fromJson(json['message']);
    }
    if (json['publisherId'] == null) {
      publisherId = null;
    } else {
          publisherId = json['publisherId'];
    }
    if (json['resource'] == null) {
      resource = null;
    } else {
          resource = json['resource'];
    }
    if (json['resourceContainers'] == null) {
      resourceContainers = null;
    } else {
      resourceContainers = ResourceContainer.mapFromJson(json['resourceContainers']);
    }
    if (json['resourceVersion'] == null) {
      resourceVersion = null;
    } else {
          resourceVersion = json['resourceVersion'];
    }
    if (json['sessionToken'] == null) {
      sessionToken = null;
    } else {
      sessionToken = SessionToken.fromJson(json['sessionToken']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (detailedMessage != null)
      json['detailedMessage'] = detailedMessage;
    if (eventType != null)
      json['eventType'] = eventType;
    if (id != null)
      json['id'] = id;
    if (message != null)
      json['message'] = message;
    if (publisherId != null)
      json['publisherId'] = publisherId;
    if (resource != null)
      json['resource'] = resource;
    if (resourceContainers != null)
      json['resourceContainers'] = resourceContainers;
    if (resourceVersion != null)
      json['resourceVersion'] = resourceVersion;
    if (sessionToken != null)
      json['sessionToken'] = sessionToken;
    return json;
  }

  static List<Event> listFromJson(List<dynamic> json) {
    return json == null ? List<Event>() : json.map((value) => Event.fromJson(value)).toList();
  }

  static Map<String, Event> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Event>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Event.fromJson(value));
    }
    return map;
  }
}

