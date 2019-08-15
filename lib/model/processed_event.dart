part of azure_devops_sdk.api;

class ProcessedEvent {
  /* All of the users that were associated with this event and their role. */
  List<EventActor> actors = [];
  
  String allowedChannels = null;
  
  String artifactUri = null;
  
  ProcessingIdentities deliveryIdentities = null;
  /* Evaluations for each user */
  Map<String, SubscriptionEvaluation> evaluations = {};
  
  int eventId = null;
  /* Which members were excluded from evaluation (only applies to ActorMatcher subscriptions) */
  List<EventActor> exclusions = [];
  /* Which members were included for evaluation (only applies to ActorMatcher subscriptions) */
  List<EventActor> inclusions = [];
  
  List<GeneratedNotification> notifications = [];
  ProcessedEvent();

  @override
  String toString() {
    return 'ProcessedEvent[actors=$actors, allowedChannels=$allowedChannels, artifactUri=$artifactUri, deliveryIdentities=$deliveryIdentities, evaluations=$evaluations, eventId=$eventId, exclusions=$exclusions, inclusions=$inclusions, notifications=$notifications, ]';
  }

  ProcessedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actors'] == null) {
      actors = null;
    } else {
      actors = EventActor.listFromJson(json['actors']);
    }
    if (json['allowedChannels'] == null) {
      allowedChannels = null;
    } else {
          allowedChannels = json['allowedChannels'];
    }
    if (json['artifactUri'] == null) {
      artifactUri = null;
    } else {
          artifactUri = json['artifactUri'];
    }
    if (json['deliveryIdentities'] == null) {
      deliveryIdentities = null;
    } else {
      deliveryIdentities = ProcessingIdentities.fromJson(json['deliveryIdentities']);
    }
    if (json['evaluations'] == null) {
      evaluations = null;
    } else {
      evaluations = SubscriptionEvaluation.mapFromJson(json['evaluations']);
    }
    if (json['eventId'] == null) {
      eventId = null;
    } else {
          eventId = json['eventId'];
    }
    if (json['exclusions'] == null) {
      exclusions = null;
    } else {
      exclusions = EventActor.listFromJson(json['exclusions']);
    }
    if (json['inclusions'] == null) {
      inclusions = null;
    } else {
      inclusions = EventActor.listFromJson(json['inclusions']);
    }
    if (json['notifications'] == null) {
      notifications = null;
    } else {
      notifications = GeneratedNotification.listFromJson(json['notifications']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actors != null)
      json['actors'] = actors;
    if (allowedChannels != null)
      json['allowedChannels'] = allowedChannels;
    if (artifactUri != null)
      json['artifactUri'] = artifactUri;
    if (deliveryIdentities != null)
      json['deliveryIdentities'] = deliveryIdentities;
    if (evaluations != null)
      json['evaluations'] = evaluations;
    if (eventId != null)
      json['eventId'] = eventId;
    if (exclusions != null)
      json['exclusions'] = exclusions;
    if (inclusions != null)
      json['inclusions'] = inclusions;
    if (notifications != null)
      json['notifications'] = notifications;
    return json;
  }

  static List<ProcessedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessedEvent>() : json.map((value) => ProcessedEvent.fromJson(value)).toList();
  }

  static Map<String, ProcessedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessedEvent.fromJson(value));
    }
    return map;
  }
}

