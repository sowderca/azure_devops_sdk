part of azure_devops_sdk.api;

class SoapSubscriptionChannel {
  
  String address = null;
  
  String type = null;
  
  bool useCustomAddress = null;
  SoapSubscriptionChannel();

  @override
  String toString() {
    return 'SoapSubscriptionChannel[address=$address, type=$type, useCustomAddress=$useCustomAddress, ]';
  }

  SoapSubscriptionChannel.fromJson(Map<String, dynamic> json) {
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

  static List<SoapSubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<SoapSubscriptionChannel>() : json.map((value) => SoapSubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, SoapSubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SoapSubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SoapSubscriptionChannel.fromJson(value));
    }
    return map;
  }
}

