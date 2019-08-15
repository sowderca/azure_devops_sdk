part of azure_devops_sdk.api;

class MemberEntitlementOperationReference {
  /* Unique identifier for the operation. */
  String id = null;
  /* Unique identifier for the plugin. */
  String pluginId = null;
  /* The current status of the operation. */
  String status = null;
  //enum statusEnum {  notSet,  queued,  inProgress,  cancelled,  succeeded,  failed,  };{
  /* URL to get the full operation object. */
  String url = null;
  MemberEntitlementOperationReference();

  @override
  String toString() {
    return 'MemberEntitlementOperationReference[id=$id, pluginId=$pluginId, status=$status, url=$url, ]';
  }

  MemberEntitlementOperationReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['pluginId'] == null) {
      pluginId = null;
    } else {
          pluginId = json['pluginId'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (pluginId != null)
      json['pluginId'] = pluginId;
    if (status != null)
      json['status'] = status;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<MemberEntitlementOperationReference> listFromJson(List<dynamic> json) {
    return json == null ? List<MemberEntitlementOperationReference>() : json.map((value) => MemberEntitlementOperationReference.fromJson(value)).toList();
  }

  static Map<String, MemberEntitlementOperationReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberEntitlementOperationReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MemberEntitlementOperationReference.fromJson(value));
    }
    return map;
  }
}

