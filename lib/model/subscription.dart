part of azure_devops_sdk.api;

class Subscription {
  
  ReferenceLinks links = null;
  
  String actionDescription = null;
  
  String consumerActionId = null;
  
  String consumerId = null;
  /* Consumer input values */
  Map<String, String> consumerInputs = {};
  
  IdentityRef createdBy = null;
  
  DateTime createdDate = null;
  
  String eventDescription = null;
  
  String eventType = null;
  
  String id = null;
  
  IdentityRef modifiedBy = null;
  
  DateTime modifiedDate = null;
  
  String probationRetries = null;
  
  String publisherId = null;
  /* Publisher input values */
  Map<String, String> publisherInputs = {};
  
  String resourceVersion = null;
  
  String status = null;
  //enum statusEnum {  enabled,  onProbation,  disabledByUser,  disabledBySystem,  disabledByInactiveIdentity,  };{
  
  IdentityRef subscriber = null;
  
  String url = null;
  Subscription();

  @override
  String toString() {
    return 'Subscription[links=$links, actionDescription=$actionDescription, consumerActionId=$consumerActionId, consumerId=$consumerId, consumerInputs=$consumerInputs, createdBy=$createdBy, createdDate=$createdDate, eventDescription=$eventDescription, eventType=$eventType, id=$id, modifiedBy=$modifiedBy, modifiedDate=$modifiedDate, probationRetries=$probationRetries, publisherId=$publisherId, publisherInputs=$publisherInputs, resourceVersion=$resourceVersion, status=$status, subscriber=$subscriber, url=$url, ]';
  }

  Subscription.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['actionDescription'] == null) {
      actionDescription = null;
    } else {
          actionDescription = json['actionDescription'];
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
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['eventDescription'] == null) {
      eventDescription = null;
    } else {
          eventDescription = json['eventDescription'];
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
    if (json['modifiedBy'] == null) {
      modifiedBy = null;
    } else {
      modifiedBy = IdentityRef.fromJson(json['modifiedBy']);
    }
    if (json['modifiedDate'] == null) {
      modifiedDate = null;
    } else {
      modifiedDate = DateTime.parse(json['modifiedDate']);
    }
    if (json['probationRetries'] == null) {
      probationRetries = null;
    } else {
          probationRetries = json['probationRetries'];
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
    if (json['resourceVersion'] == null) {
      resourceVersion = null;
    } else {
          resourceVersion = json['resourceVersion'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['subscriber'] == null) {
      subscriber = null;
    } else {
      subscriber = IdentityRef.fromJson(json['subscriber']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (actionDescription != null)
      json['actionDescription'] = actionDescription;
    if (consumerActionId != null)
      json['consumerActionId'] = consumerActionId;
    if (consumerId != null)
      json['consumerId'] = consumerId;
    if (consumerInputs != null)
      json['consumerInputs'] = consumerInputs;
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (eventDescription != null)
      json['eventDescription'] = eventDescription;
    if (eventType != null)
      json['eventType'] = eventType;
    if (id != null)
      json['id'] = id;
    if (modifiedBy != null)
      json['modifiedBy'] = modifiedBy;
    if (modifiedDate != null)
      json['modifiedDate'] = modifiedDate == null ? null : modifiedDate.toUtc().toIso8601String();
    if (probationRetries != null)
      json['probationRetries'] = probationRetries;
    if (publisherId != null)
      json['publisherId'] = publisherId;
    if (publisherInputs != null)
      json['publisherInputs'] = publisherInputs;
    if (resourceVersion != null)
      json['resourceVersion'] = resourceVersion;
    if (status != null)
      json['status'] = status;
    if (subscriber != null)
      json['subscriber'] = subscriber;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Subscription> listFromJson(List<dynamic> json) {
    return json == null ? List<Subscription>() : json.map((value) => Subscription.fromJson(value)).toList();
  }

  static Map<String, Subscription> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Subscription>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Subscription.fromJson(value));
    }
    return map;
  }
}

