part of azure_devops_sdk.api;

class NotificationReason {
  
  String notificationReasonType = null;
  //enum notificationReasonTypeEnum {  unknown,  follows,  personal,  personalAlias,  directMember,  indirectMember,  groupAlias,  subscriptionAlias,  singleRole,  directMemberGroupRole,  inDirectMemberGroupRole,  aliasMemberGroupRole,  };{
  
  List<IdentityRef> targetIdentities = [];
  NotificationReason();

  @override
  String toString() {
    return 'NotificationReason[notificationReasonType=$notificationReasonType, targetIdentities=$targetIdentities, ]';
  }

  NotificationReason.fromJson(Map<String, dynamic> json) {
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

  static List<NotificationReason> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationReason>() : json.map((value) => NotificationReason.fromJson(value)).toList();
  }

  static Map<String, NotificationReason> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationReason>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationReason.fromJson(value));
    }
    return map;
  }
}

