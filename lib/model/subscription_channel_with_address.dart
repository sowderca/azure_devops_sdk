part of azure_devops_sdk.api;

class SubscriptionChannelWithAddress {
  
  String address = null;
  
  String type = null;
  
  bool useCustomAddress = null;
  SubscriptionChannelWithAddress();

  @override
  String toString() {
    return 'SubscriptionChannelWithAddress[address=$address, type=$type, useCustomAddress=$useCustomAddress, ]';
  }

  SubscriptionChannelWithAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['address'] == null) {
      address = null;
    } else {
          address = json['address'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['useCustomAddress'] == null) {
      useCustomAddress = null;
    } else {
          useCustomAddress = json['useCustomAddress'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (address != null)
      json['address'] = address;
    if (type != null)
      json['type'] = type;
    if (useCustomAddress != null)
      json['useCustomAddress'] = useCustomAddress;
    return json;
  }

  static List<SubscriptionChannelWithAddress> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionChannelWithAddress>() : json.map((value) => SubscriptionChannelWithAddress.fromJson(value)).toList();
  }

  static Map<String, SubscriptionChannelWithAddress> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionChannelWithAddress>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionChannelWithAddress.fromJson(value));
    }
    return map;
  }
}

