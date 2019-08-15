part of azure_devops_sdk.api;

class NotificationSubscriptionCreateParameters {
  
  ISubscriptionChannel channel = null;
  /* Brief description for the new subscription. Typically describes filter criteria which helps identity the subscription. */
  String description = null;
  
  ISubscriptionFilter filter = null;
  
  SubscriptionScope scope = null;
  
  IdentityRef subscriber = null;
  NotificationSubscriptionCreateParameters();

  @override
  String toString() {
    return 'NotificationSubscriptionCreateParameters[channel=$channel, description=$description, filter=$filter, scope=$scope, subscriber=$subscriber, ]';
  }

  NotificationSubscriptionCreateParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['channel'] == null) {
      channel = null;
    } else {
      channel = ISubscriptionChannel.fromJson(json['channel']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['filter'] == null) {
      filter = null;
    } else {
      filter = ISubscriptionFilter.fromJson(json['filter']);
    }
    if (json['scope'] == null) {
      scope = null;
    } else {
      scope = SubscriptionScope.fromJson(json['scope']);
    }
    if (json['subscriber'] == null) {
      subscriber = null;
    } else {
      subscriber = IdentityRef.fromJson(json['subscriber']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (channel != null)
      json['channel'] = channel;
    if (description != null)
      json['description'] = description;
    if (filter != null)
      json['filter'] = filter;
    if (scope != null)
      json['scope'] = scope;
    if (subscriber != null)
      json['subscriber'] = subscriber;
    return json;
  }

  static List<NotificationSubscriptionCreateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationSubscriptionCreateParameters>() : json.map((value) => NotificationSubscriptionCreateParameters.fromJson(value)).toList();
  }

  static Map<String, NotificationSubscriptionCreateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationSubscriptionCreateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationSubscriptionCreateParameters.fromJson(value));
    }
    return map;
  }
}

