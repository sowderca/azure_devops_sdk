part of azure_devops_sdk.api;

class Consumer {
  /* ID of the consumer. */
  int consumerId = null;
  /* Name of the consumer. */
  String consumerName = null;
  Consumer();

  @override
  String toString() {
    return 'Consumer[consumerId=$consumerId, consumerName=$consumerName, ]';
  }

  Consumer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['consumerId'] == null) {
      consumerId = null;
    } else {
          consumerId = json['consumerId'];
    }
    if (json['consumerName'] == null) {
      consumerName = null;
    } else {
          consumerName = json['consumerName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (consumerId != null)
      json['consumerId'] = consumerId;
    if (consumerName != null)
      json['consumerName'] = consumerName;
    return json;
  }

  static List<Consumer> listFromJson(List<dynamic> json) {
    return json == null ? List<Consumer>() : json.map((value) => Consumer.fromJson(value)).toList();
  }

  static Map<String, Consumer> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Consumer>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Consumer.fromJson(value));
    }
    return map;
  }
}

