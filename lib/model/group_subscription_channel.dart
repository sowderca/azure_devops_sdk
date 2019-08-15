part of azure_devops_sdk.api;

class GroupSubscriptionChannel {
  
  String address = null;
  
  String type = null;
  
  bool useCustomAddress = null;
  GroupSubscriptionChannel();

  @override
  String toString() {
    return 'GroupSubscriptionChannel[address=$address, type=$type, useCustomAddress=$useCustomAddress, ]';
  }

  GroupSubscriptionChannel.fromJson(Map<String, dynamic> json) {
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

  static List<GroupSubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<GroupSubscriptionChannel>() : json.map((value) => GroupSubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, GroupSubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GroupSubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GroupSubscriptionChannel.fromJson(value));
    }
    return map;
  }
}

