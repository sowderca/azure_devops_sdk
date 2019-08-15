part of azure_devops_sdk.api;

class UserSystemSubscriptionChannel {
  
  String address = null;
  
  String type = null;
  
  bool useCustomAddress = null;
  UserSystemSubscriptionChannel();

  @override
  String toString() {
    return 'UserSystemSubscriptionChannel[address=$address, type=$type, useCustomAddress=$useCustomAddress, ]';
  }

  UserSystemSubscriptionChannel.fromJson(Map<String, dynamic> json) {
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

  static List<UserSystemSubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<UserSystemSubscriptionChannel>() : json.map((value) => UserSystemSubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, UserSystemSubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserSystemSubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserSystemSubscriptionChannel.fromJson(value));
    }
    return map;
  }
}

