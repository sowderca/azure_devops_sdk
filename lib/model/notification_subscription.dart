part of azure_devops_sdk.api;

class NotificationSubscription {
  
  ReferenceLinks links = null;
  
  SubscriptionAdminSettings adminSettings = null;
  
  ISubscriptionChannel channel = null;
  /* Description of the subscription. Typically describes filter criteria which helps identity the subscription. */
  String description = null;
  
  SubscriptionDiagnostics diagnostics = null;
  /* Any extra properties like detailed description for different contexts, user/group contexts */
  Map<String, String> extendedProperties = {};
  
  ISubscriptionFilter filter = null;
  /* Read-only indicators that further describe the subscription. */
  String flags = null;
  //enum flagsEnum {  none,  groupSubscription,  contributedSubscription,  canOptOut,  teamSubscription,  oneActorMatches,  };{
  /* Subscription identifier. */
  String id = null;
  
  IdentityRef lastModifiedBy = null;
  /* Date when the subscription was last modified. If the subscription has not been updated since it was created, this value will indicate when the subscription was created. */
  DateTime modifiedDate = null;
  /* The permissions the user have for this subscriptions. */
  String permissions = null;
  //enum permissionsEnum {  none,  view,  edit,  delete,  };{
  
  SubscriptionScope scope = null;
  /* Status of the subscription. Typically indicates whether the subscription is enabled or not. */
  String status = null;
  //enum statusEnum {  jailedByNotificationsVolume,  pendingDeletion,  disabledArgumentException,  disabledProjectInvalid,  disabledMissingPermissions,  disabledFromProbation,  disabledInactiveIdentity,  disabledMessageQueueNotSupported,  disabledMissingIdentity,  disabledInvalidRoleExpression,  disabledInvalidPathClause,  disabledAsDuplicateOfDefault,  disabledByAdmin,  disabled,  enabled,  enabledOnProbation,  };{
  /* Message that provides more details about the status of the subscription. */
  String statusMessage = null;
  
  IdentityRef subscriber = null;
  /* REST API URL of the subscriotion. */
  String url = null;
  
  SubscriptionUserSettings userSettings = null;
  NotificationSubscription();

  @override
  String toString() {
    return 'NotificationSubscription[links=$links, adminSettings=$adminSettings, channel=$channel, description=$description, diagnostics=$diagnostics, extendedProperties=$extendedProperties, filter=$filter, flags=$flags, id=$id, lastModifiedBy=$lastModifiedBy, modifiedDate=$modifiedDate, permissions=$permissions, scope=$scope, status=$status, statusMessage=$statusMessage, subscriber=$subscriber, url=$url, userSettings=$userSettings, ]';
  }

  NotificationSubscription.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['adminSettings'] == null) {
      adminSettings = null;
    } else {
      adminSettings = SubscriptionAdminSettings.fromJson(json['adminSettings']);
    }
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
    if (json['diagnostics'] == null) {
      diagnostics = null;
    } else {
      diagnostics = SubscriptionDiagnostics.fromJson(json['diagnostics']);
    }
    if (json['extendedProperties'] == null) {
      extendedProperties = null;
    } else {
          extendedProperties = (json['extendedProperties'] as Map).cast<String, String>();
    }
    if (json['filter'] == null) {
      filter = null;
    } else {
      filter = ISubscriptionFilter.fromJson(json['filter']);
    }
    if (json['flags'] == null) {
      flags = null;
    } else {
          flags = json['flags'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['lastModifiedBy'] == null) {
      lastModifiedBy = null;
    } else {
      lastModifiedBy = IdentityRef.fromJson(json['lastModifiedBy']);
    }
    if (json['modifiedDate'] == null) {
      modifiedDate = null;
    } else {
      modifiedDate = DateTime.parse(json['modifiedDate']);
    }
    if (json['permissions'] == null) {
      permissions = null;
    } else {
          permissions = json['permissions'];
    }
    if (json['scope'] == null) {
      scope = null;
    } else {
      scope = SubscriptionScope.fromJson(json['scope']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['statusMessage'] == null) {
      statusMessage = null;
    } else {
          statusMessage = json['statusMessage'];
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
    if (json['userSettings'] == null) {
      userSettings = null;
    } else {
      userSettings = SubscriptionUserSettings.fromJson(json['userSettings']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (adminSettings != null)
      json['adminSettings'] = adminSettings;
    if (channel != null)
      json['channel'] = channel;
    if (description != null)
      json['description'] = description;
    if (diagnostics != null)
      json['diagnostics'] = diagnostics;
    if (extendedProperties != null)
      json['extendedProperties'] = extendedProperties;
    if (filter != null)
      json['filter'] = filter;
    if (flags != null)
      json['flags'] = flags;
    if (id != null)
      json['id'] = id;
    if (lastModifiedBy != null)
      json['lastModifiedBy'] = lastModifiedBy;
    if (modifiedDate != null)
      json['modifiedDate'] = modifiedDate == null ? null : modifiedDate.toUtc().toIso8601String();
    if (permissions != null)
      json['permissions'] = permissions;
    if (scope != null)
      json['scope'] = scope;
    if (status != null)
      json['status'] = status;
    if (statusMessage != null)
      json['statusMessage'] = statusMessage;
    if (subscriber != null)
      json['subscriber'] = subscriber;
    if (url != null)
      json['url'] = url;
    if (userSettings != null)
      json['userSettings'] = userSettings;
    return json;
  }

  static List<NotificationSubscription> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationSubscription>() : json.map((value) => NotificationSubscription.fromJson(value)).toList();
  }

  static Map<String, NotificationSubscription> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationSubscription>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationSubscription.fromJson(value));
    }
    return map;
  }
}

