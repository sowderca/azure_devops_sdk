part of azure_devops_sdk.api;

class MessageQueueSubscriptionChannel {
  
  String type = null;
  MessageQueueSubscriptionChannel();

  @override
  String toString() {
    return 'MessageQueueSubscriptionChannel[type=$type, ]';
  }

  MessageQueueSubscriptionChannel.fromJson(Map<String, dynamic> json) {
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

  static List<MessageQueueSubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<MessageQueueSubscriptionChannel>() : json.map((value) => MessageQueueSubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, MessageQueueSubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MessageQueueSubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MessageQueueSubscriptionChannel.fromJson(value));
    }
    return map;
  }
}

