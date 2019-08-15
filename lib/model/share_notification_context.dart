part of azure_devops_sdk.api;

class ShareNotificationContext {
  /* Optional user note or message. */
  String message = null;
  /* Identities of users who will receive a share notification. */
  List<IdentityRef> receivers = [];
  ShareNotificationContext();

  @override
  String toString() {
    return 'ShareNotificationContext[message=$message, receivers=$receivers, ]';
  }

  ShareNotificationContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['receivers'] == null) {
      receivers = null;
    } else {
      receivers = IdentityRef.listFromJson(json['receivers']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (receivers != null)
      json['receivers'] = receivers;
    return json;
  }

  static List<ShareNotificationContext> listFromJson(List<dynamic> json) {
    return json == null ? List<ShareNotificationContext>() : json.map((value) => ShareNotificationContext.fromJson(value)).toList();
  }

  static Map<String, ShareNotificationContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ShareNotificationContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ShareNotificationContext.fromJson(value));
    }
    return map;
  }
}

