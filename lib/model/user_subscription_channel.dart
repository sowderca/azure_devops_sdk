part of azure_devops_sdk.api;

class UserSubscriptionChannel {
  
  String address = null;
  
  String type = null;
  
  bool useCustomAddress = null;
  UserSubscriptionChannel();

  @override
  String toString() {
    return 'UserSubscriptionChannel[address=$address, type=$type, useCustomAddress=$useCustomAddress, ]';
  }

  UserSubscriptionChannel.fromJson(Map<String, dynamic> json) {
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

  static List<UserSubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<UserSubscriptionChannel>() : json.map((value) => UserSubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, UserSubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserSubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserSubscriptionChannel.fromJson(value));
    }
    return map;
  }
}

