part of azure_devops_sdk.api;

class ActorNotificationReason {
  
  String notificationReasonType = null;
  //enum notificationReasonTypeEnum {  unknown,  follows,  personal,  personalAlias,  directMember,  indirectMember,  groupAlias,  subscriptionAlias,  singleRole,  directMemberGroupRole,  inDirectMemberGroupRole,  aliasMemberGroupRole,  };{
  
  List<IdentityRef> targetIdentities = [];
  ActorNotificationReason();

  @override
  String toString() {
    return 'ActorNotificationReason[notificationReasonType=$notificationReasonType, targetIdentities=$targetIdentities, ]';
  }

  ActorNotificationReason.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['notificationReasonType'] == null) {
      notificationReasonType = null;
    } else {
          notificationReasonType = json['notificationReasonType'];
    }
    if (json['targetIdentities'] == null) {
      targetIdentities = null;
    } else {
      targetIdentities = IdentityRef.listFromJson(json['targetIdentities']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (notificationReasonType != null)
      json['notificationReasonType'] = notificationReasonType;
    if (targetIdentities != null)
      json['targetIdentities'] = targetIdentities;
    return json;
  }

  static List<ActorNotificationReason> listFromJson(List<dynamic> json) {
    return json == null ? List<ActorNotificationReason>() : json.map((value) => ActorNotificationReason.fromJson(value)).toList();
  }

  static Map<String, ActorNotificationReason> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ActorNotificationReason>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ActorNotificationReason.fromJson(value));
    }
    return map;
  }
}

