part of azure_devops_sdk.api;

class NotificationSubscriptionUpdateParameters {
  
  SubscriptionAdminSettings adminSettings = null;
  
  ISubscriptionChannel channel = null;
  /* Updated description for the subscription. Typically describes filter criteria which helps identity the subscription. */
  String description = null;
  
  ISubscriptionFilter filter = null;
  
  SubscriptionScope scope = null;
  /* Updated status for the subscription. Typically used to enable or disable a subscription. */
  String status = null;
  //enum statusEnum {  jailedByNotificationsVolume,  pendingDeletion,  disabledArgumentException,  disabledProjectInvalid,  disabledMissingPermissions,  disabledFromProbation,  disabledInactiveIdentity,  disabledMessageQueueNotSupported,  disabledMissingIdentity,  disabledInvalidRoleExpression,  disabledInvalidPathClause,  disabledAsDuplicateOfDefault,  disabledByAdmin,  disabled,  enabled,  enabledOnProbation,  };{
  /* Optional message that provides more details about the updated status. */
  String statusMessage = null;
  
  SubscriptionUserSettings userSettings = null;
  NotificationSubscriptionUpdateParameters();

  @override
  String toString() {
    return 'NotificationSubscriptionUpdateParameters[adminSettings=$adminSettings, channel=$channel, description=$description, filter=$filter, scope=$scope, status=$status, statusMessage=$statusMessage, userSettings=$userSettings, ]';
  }

  NotificationSubscriptionUpdateParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['userSettings'] == null) {
      userSettings = null;
    } else {
      userSettings = SubscriptionUserSettings.fromJson(json['userSettings']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (adminSettings != null)
      json['adminSettings'] = adminSettings;
    if (channel != null)
      json['channel'] = channel;
    if (description != null)
      json['description'] = description;
    if (filter != null)
      json['filter'] = filter;
    if (scope != null)
      json['scope'] = scope;
    if (status != null)
      json['status'] = status;
    if (statusMessage != null)
      json['statusMessage'] = statusMessage;
    if (userSettings != null)
      json['userSettings'] = userSettings;
    return json;
  }

  static List<NotificationSubscriptionUpdateParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationSubscriptionUpdateParameters>() : json.map((value) => NotificationSubscriptionUpdateParameters.fromJson(value)).toList();
  }

  static Map<String, NotificationSubscriptionUpdateParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationSubscriptionUpdateParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationSubscriptionUpdateParameters.fromJson(value));
    }
    return map;
  }
}

