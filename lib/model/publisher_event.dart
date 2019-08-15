part of azure_devops_sdk.api;

class PublisherEvent {
  /* Add key/value pairs which will be stored with a published notification in the SH service DB.  This key/value pairs are for diagnostic purposes only and will have not effect on the delivery of a notificaton. */
  Map<String, String> diagnostics = {};
  
  Event event = null;
  /* Gets or sets flag for filtered events */
  bool isFilteredEvent = null;
  /* Additional data that needs to be sent as part of notification to complement the Resource data in the Event */
  Map<String, String> notificationData = {};
  /* Gets or sets the array of older supported resource versions. */
  List<VersionedResource> otherResourceVersions = [];
  /* Optional publisher-input filters which restricts the set of subscriptions which are triggered by the event */
  List<InputFilter> publisherInputFilters = [];
  
  Subscription subscription = null;
  PublisherEvent();

  @override
  String toString() {
    return 'PublisherEvent[diagnostics=$diagnostics, event=$event, isFilteredEvent=$isFilteredEvent, notificationData=$notificationData, otherResourceVersions=$otherResourceVersions, publisherInputFilters=$publisherInputFilters, subscription=$subscription, ]';
  }

  PublisherEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['diagnostics'] == null) {
      diagnostics = null;
    } else {
          diagnostics = (json['diagnostics'] as Map).cast<String, String>();
    }
    if (json['event'] == null) {
      event = null;
    } else {
      event = Event.fromJson(json['event']);
    }
    if (json['isFilteredEvent'] == null) {
      isFilteredEvent = null;
    } else {
          isFilteredEvent = json['isFilteredEvent'];
    }
    if (json['notificationData'] == null) {
      notificationData = null;
    } else {
          notificationData = (json['notificationData'] as Map).cast<String, String>();
    }
    if (json['otherResourceVersions'] == null) {
      otherResourceVersions = null;
    } else {
      otherResourceVersions = VersionedResource.listFromJson(json['otherResourceVersions']);
    }
    if (json['publisherInputFilters'] == null) {
      publisherInputFilters = null;
    } else {
      publisherInputFilters = InputFilter.listFromJson(json['publisherInputFilters']);
    }
    if (json['subscription'] == null) {
      subscription = null;
    } else {
      subscription = Subscription.fromJson(json['subscription']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (diagnostics != null)
      json['diagnostics'] = diagnostics;
    if (event != null)
      json['event'] = event;
    if (isFilteredEvent != null)
      json['isFilteredEvent'] = isFilteredEvent;
    if (notificationData != null)
      json['notificationData'] = notificationData;
    if (otherResourceVersions != null)
      json['otherResourceVersions'] = otherResourceVersions;
    if (publisherInputFilters != null)
      json['publisherInputFilters'] = publisherInputFilters;
    if (subscription != null)
      json['subscription'] = subscription;
    return json;
  }

  static List<PublisherEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<PublisherEvent>() : json.map((value) => PublisherEvent.fromJson(value)).toList();
  }

  static Map<String, PublisherEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PublisherEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PublisherEvent.fromJson(value));
    }
    return map;
  }
}

