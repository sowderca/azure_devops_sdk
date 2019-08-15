part of azure_devops_sdk.api;

class ISubscriptionChannel {
  
  String type = null;
  ISubscriptionChannel();

  @override
  String toString() {
    return 'ISubscriptionChannel[type=$type, ]';
  }

  ISubscriptionChannel.fromJson(Map<String, dynamic> json) {
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

  static List<ISubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<ISubscriptionChannel>() : json.map((value) => ISubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, ISubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ISubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ISubscriptionChannel.fromJson(value));
    }
    return map;
  }
}

