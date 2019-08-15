part of azure_devops_sdk.api;

class ServiceHooksSubscriptionChannel {
  
  String type = null;
  ServiceHooksSubscriptionChannel();

  @override
  String toString() {
    return 'ServiceHooksSubscriptionChannel[type=$type, ]';
  }

  ServiceHooksSubscriptionChannel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<ServiceHooksSubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceHooksSubscriptionChannel>() : json.map((value) => ServiceHooksSubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, ServiceHooksSubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceHooksSubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceHooksSubscriptionChannel.fromJson(value));
    }
    return map;
  }
}

