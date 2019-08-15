part of azure_devops_sdk.api;

class VssNotificationEvent {
  /* Optional: A list of actors which are additional identities with corresponding roles that are relevant to the event. */
  List<EventActor> actors = [];
  /* Optional: A list of artifacts referenced or impacted by this event. */
  List<String> artifactUris = [];
  /* Required: The event payload.  If Data is a string, it must be in Json or XML format.  Otherwise it must have a serialization format attribute. */
  Object data = null;
  /* Required: The name of the event.  This event must be registered in the context it is being fired. */
  String eventType = null;
  /* How long before the event expires and will be cleaned up.  The default is to use the system default. */
  String expiresIn = null;
  /* The id of the item, artifact, extension, project, etc. */
  String itemId = null;
  /* How long to wait before processing this event.  The default is to process immediately. */
  String processDelay = null;
  /* Optional: A list of scopes which are are relevant to the event. */
  List<EventScope> scopes = [];
  /* This is the time the original source event for this VssNotificationEvent was created.  For example, for something like a build completion notification SourceEventCreatedTime should be the time the build finished not the time this event was raised. */
  DateTime sourceEventCreatedTime = null;
  VssNotificationEvent();

  @override
  String toString() {
    return 'VssNotificationEvent[actors=$actors, artifactUris=$artifactUris, data=$data, eventType=$eventType, expiresIn=$expiresIn, itemId=$itemId, processDelay=$processDelay, scopes=$scopes, sourceEventCreatedTime=$sourceEventCreatedTime, ]';
  }

  VssNotificationEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actors'] == null) {
      actors = null;
    } else {
      actors = EventActor.listFromJson(json['actors']);
    }
    if (json['artifactUris'] == null) {
      artifactUris = null;
    } else {
      artifactUris = (json['artifactUris'] as List).cast<String>();
    }
    if (json['data'] == null) {
      data = null;
    } else {
          data = json['data'];
    }
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['expiresIn'] == null) {
      expiresIn = null;
    } else {
          expiresIn = json['expiresIn'];
    }
    if (json['itemId'] == null) {
      itemId = null;
    } else {
          itemId = json['itemId'];
    }
    if (json['processDelay'] == null) {
      processDelay = null;
    } else {
          processDelay = json['processDelay'];
    }
    if (json['scopes'] == null) {
      scopes = null;
    } else {
      scopes = EventScope.listFromJson(json['scopes']);
    }
    if (json['sourceEventCreatedTime'] == null) {
      sourceEventCreatedTime = null;
    } else {
      sourceEventCreatedTime = DateTime.parse(json['sourceEventCreatedTime']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actors != null)
      json['actors'] = actors;
    if (artifactUris != null)
      json['artifactUris'] = artifactUris;
    if (data != null)
      json['data'] = data;
    if (eventType != null)
      json['eventType'] = eventType;
    if (expiresIn != null)
      json['expiresIn'] = expiresIn;
    if (itemId != null)
      json['itemId'] = itemId;
    if (processDelay != null)
      json['processDelay'] = processDelay;
    if (scopes != null)
      json['scopes'] = scopes;
    if (sourceEventCreatedTime != null)
      json['sourceEventCreatedTime'] = sourceEventCreatedTime == null ? null : sourceEventCreatedTime.toUtc().toIso8601String();
    return json;
  }

  static List<VssNotificationEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<VssNotificationEvent>() : json.map((value) => VssNotificationEvent.fromJson(value)).toList();
  }

  static Map<String, VssNotificationEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VssNotificationEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VssNotificationEvent.fromJson(value));
    }
    return map;
  }
}

