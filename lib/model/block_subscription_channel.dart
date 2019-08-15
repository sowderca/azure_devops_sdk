part of azure_devops_sdk.api;

class BlockSubscriptionChannel {
  
  String type = null;
  BlockSubscriptionChannel();

  @override
  String toString() {
    return 'BlockSubscriptionChannel[type=$type, ]';
  }

  BlockSubscriptionChannel.fromJson(Map<String, dynamic> json) {
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

  static List<BlockSubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<BlockSubscriptionChannel>() : json.map((value) => BlockSubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, BlockSubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BlockSubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BlockSubscriptionChannel.fromJson(value));
    }
    return map;
  }
}

