part of azure_devops_sdk.api;

class NotificationDetails {
  /* Gets or sets the time that this notification was completed (response received from the consumer) */
  DateTime completedDate = null;
  /* Gets or sets this notification detail's consumer action identifier. */
  String consumerActionId = null;
  /* Gets or sets this notification detail's consumer identifier. */
  String consumerId = null;
  /* Gets or sets this notification detail's consumer inputs. */
  Map<String, String> consumerInputs = {};
  /* Gets or sets the time that this notification was dequeued for processing */
  DateTime dequeuedDate = null;
  /* Gets or sets this notification detail's error detail. */
  String errorDetail = null;
  /* Gets or sets this notification detail's error message. */
  String errorMessage = null;
  
  Event event = null;
  /* Gets or sets this notification detail's event type. */
  String eventType = null;
  /* Gets or sets the time that this notification was finished processing (just before the request is sent to the consumer) */
  DateTime processedDate = null;
  /* Gets or sets this notification detail's publisher identifier. */
  String publisherId = null;
  /* Gets or sets this notification detail's publisher inputs. */
  Map<String, String> publisherInputs = {};
  /* Gets or sets the time that this notification was queued (created) */
  DateTime queuedDate = null;
  /* Gets or sets this notification detail's request. */
  String request = null;
  /* Number of requests attempted to be sent to the consumer */
  int requestAttempts = null;
  /* Duration of the request to the consumer in seconds */
  double requestDuration = null;
  /* Gets or sets this notification detail's response. */
  String response = null;
  NotificationDetails();

  @override
  String toString() {
    return 'NotificationDetails[completedDate=$completedDate, consumerActionId=$consumerActionId, consumerId=$consumerId, consumerInputs=$consumerInputs, dequeuedDate=$dequeuedDate, errorDetail=$errorDetail, errorMessage=$errorMessage, event=$event, eventType=$eventType, processedDate=$processedDate, publisherId=$publisherId, publisherInputs=$publisherInputs, queuedDate=$queuedDate, request=$request, requestAttempts=$requestAttempts, requestDuration=$requestDuration, response=$response, ]';
  }

  NotificationDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['completedDate'] == null) {
      completedDate = null;
    } else {
      completedDate = DateTime.parse(json['completedDate']);
    }
    if (json['consumerActionId'] == null) {
      consumerActionId = null;
    } else {
          consumerActionId = json['consumerActionId'];
    }
    if (json['consumerId'] == null) {
      consumerId = null;
    } else {
          consumerId = json['consumerId'];
    }
    if (json['consumerInputs'] == null) {
      consumerInputs = null;
    } else {
          consumerInputs = (json['consumerInputs'] as Map).cast<String, String>();
    }
    if (json['dequeuedDate'] == null) {
      dequeuedDate = null;
    } else {
      dequeuedDate = DateTime.parse(json['dequeuedDate']);
    }
    if (json['errorDetail'] == null) {
      errorDetail = null;
    } else {
          errorDetail = json['errorDetail'];
    }
    if (json['errorMessage'] == null) {
      errorMessage = null;
    } else {
          errorMessage = json['errorMessage'];
    }
    if (json['event'] == null) {
      event = null;
    } else {
      event = Event.fromJson(json['event']);
    }
    if (json['eventType'] == null) {
      eventType = null;
    } else {
          eventType = json['eventType'];
    }
    if (json['processedDate'] == null) {
      processedDate = null;
    } else {
      processedDate = DateTime.parse(json['processedDate']);
    }
    if (json['publisherId'] == null) {
      publisherId = null;
    } else {
          publisherId = json['publisherId'];
    }
    if (json['publisherInputs'] == null) {
      publisherInputs = null;
    } else {
          publisherInputs = (json['publisherInputs'] as Map).cast<String, String>();
    }
    if (json['queuedDate'] == null) {
      queuedDate = null;
    } else {
      queuedDate = DateTime.parse(json['queuedDate']);
    }
    if (json['request'] == null) {
      request = null;
    } else {
          request = json['request'];
    }
    if (json['requestAttempts'] == null) {
      requestAttempts = null;
    } else {
          requestAttempts = json['requestAttempts'];
    }
    if (json['requestDuration'] == null) {
      requestDuration = null;
    } else {
          requestDuration = json['requestDuration'].toDouble();
    }
    if (json['response'] == null) {
      response = null;
    } else {
          response = json['response'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (completedDate != null)
      json['completedDate'] = completedDate == null ? null : completedDate.toUtc().toIso8601String();
    if (consumerActionId != null)
      json['consumerActionId'] = consumerActionId;
    if (consumerId != null)
      json['consumerId'] = consumerId;
    if (consumerInputs != null)
      json['consumerInputs'] = consumerInputs;
    if (dequeuedDate != null)
      json['dequeuedDate'] = dequeuedDate == null ? null : dequeuedDate.toUtc().toIso8601String();
    if (errorDetail != null)
      json['errorDetail'] = errorDetail;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (event != null)
      json['event'] = event;
    if (eventType != null)
      json['eventType'] = eventType;
    if (processedDate != null)
      json['processedDate'] = processedDate == null ? null : processedDate.toUtc().toIso8601String();
    if (publisherId != null)
      json['publisherId'] = publisherId;
    if (publisherInputs != null)
      json['publisherInputs'] = publisherInputs;
    if (queuedDate != null)
      json['queuedDate'] = queuedDate == null ? null : queuedDate.toUtc().toIso8601String();
    if (request != null)
      json['request'] = request;
    if (requestAttempts != null)
      json['requestAttempts'] = requestAttempts;
    if (requestDuration != null)
      json['requestDuration'] = requestDuration;
    if (response != null)
      json['response'] = response;
    return json;
  }

  static List<NotificationDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationDetails>() : json.map((value) => NotificationDetails.fromJson(value)).toList();
  }

  static Map<String, NotificationDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationDetails.fromJson(value));
    }
    return map;
  }
}

