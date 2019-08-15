part of azure_devops_sdk.api;

class NotificationEventType {
  
  NotificationEventTypeCategory category = null;
  /* Gets or sets the color representing this event type. Example: rgb(128,245,211) or #fafafa */
  String color = null;
  
  bool customSubscriptionsAllowed = null;
  
  NotificationEventPublisher eventPublisher = null;
  
  Map<String, NotificationEventField> fields = {};
  
  bool hasInitiator = null;
  /* Gets or sets the icon representing this event type. Can be a URL or a CSS class. Example: css://some-css-class */
  String icon = null;
  /* Gets or sets the unique identifier of this event definition. */
  String id = null;
  /* Gets or sets the name of this event definition. */
  String name = null;
  
  List<NotificationEventRole> roles = [];
  /* Gets or sets the scopes that this event type supports */
  List<String> supportedScopes = [];
  /* Gets or sets the rest end point to get this event type details (fields, fields types) */
  String url = null;
  NotificationEventType();

  @override
  String toString() {
    return 'NotificationEventType[category=$category, color=$color, customSubscriptionsAllowed=$customSubscriptionsAllowed, eventPublisher=$eventPublisher, fields=$fields, hasInitiator=$hasInitiator, icon=$icon, id=$id, name=$name, roles=$roles, supportedScopes=$supportedScopes, url=$url, ]';
  }

  NotificationEventType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['category'] == null) {
      category = null;
    } else {
      category = NotificationEventTypeCategory.fromJson(json['category']);
    }
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['customSubscriptionsAllowed'] == null) {
      customSubscriptionsAllowed = null;
    } else {
          customSubscriptionsAllowed = json['customSubscriptionsAllowed'];
    }
    if (json['eventPublisher'] == null) {
      eventPublisher = null;
    } else {
      eventPublisher = NotificationEventPublisher.fromJson(json['eventPublisher']);
    }
    if (json['fields'] == null) {
      fields = null;
    } else {
      fields = NotificationEventField.mapFromJson(json['fields']);
    }
    if (json['hasInitiator'] == null) {
      hasInitiator = null;
    } else {
          hasInitiator = json['hasInitiator'];
    }
    if (json['icon'] == null) {
      icon = null;
    } else {
          icon = json['icon'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['roles'] == null) {
      roles = null;
    } else {
      roles = NotificationEventRole.listFromJson(json['roles']);
    }
    if (json['supportedScopes'] == null) {
      supportedScopes = null;
    } else {
      supportedScopes = (json['supportedScopes'] as List).cast<String>();
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (category != null)
      json['category'] = category;
    if (color != null)
      json['color'] = color;
    if (customSubscriptionsAllowed != null)
      json['customSubscriptionsAllowed'] = customSubscriptionsAllowed;
    if (eventPublisher != null)
      json['eventPublisher'] = eventPublisher;
    if (fields != null)
      json['fields'] = fields;
    if (hasInitiator != null)
      json['hasInitiator'] = hasInitiator;
    if (icon != null)
      json['icon'] = icon;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (roles != null)
      json['roles'] = roles;
    if (supportedScopes != null)
      json['supportedScopes'] = supportedScopes;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<NotificationEventType> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationEventType>() : json.map((value) => NotificationEventType.fromJson(value)).toList();
  }

  static Map<String, NotificationEventType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationEventType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationEventType.fromJson(value));
    }
    return map;
  }
}

