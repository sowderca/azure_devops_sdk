part of azure_devops_sdk.api;

class ServiceBusSubscriptionChannel {
  
  String type = null;
  ServiceBusSubscriptionChannel();

  @override
  String toString() {
    return 'ServiceBusSubscriptionChannel[type=$type, ]';
  }

  ServiceBusSubscriptionChannel.fromJson(Map<String, dynamic> json) {
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

  static List<ServiceBusSubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceBusSubscriptionChannel>() : json.map((value) => ServiceBusSubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, ServiceBusSubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceBusSubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceBusSubscriptionChannel.fromJson(value));
    }
    return map;
  }
}
