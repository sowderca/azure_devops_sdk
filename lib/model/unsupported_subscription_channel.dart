part of azure_devops_sdk.api;

class UnsupportedSubscriptionChannel {
  
  String type = null;
  UnsupportedSubscriptionChannel();

  @override
  String toString() {
    return 'UnsupportedSubscriptionChannel[type=$type, ]';
  }

  UnsupportedSubscriptionChannel.fromJson(Map<String, dynamic> json) {
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

  static List<UnsupportedSubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<UnsupportedSubscriptionChannel>() : json.map((value) => UnsupportedSubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, UnsupportedSubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UnsupportedSubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UnsupportedSubscriptionChannel.fromJson(value));
    }
    return map;
  }
}

