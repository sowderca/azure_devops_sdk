part of azure_devops_sdk.api;

class EmailPlaintextSubscriptionChannel {
  
  String address = null;
  
  String type = null;
  
  bool useCustomAddress = null;
  EmailPlaintextSubscriptionChannel();

  @override
  String toString() {
    return 'EmailPlaintextSubscriptionChannel[address=$address, type=$type, useCustomAddress=$useCustomAddress, ]';
  }

  EmailPlaintextSubscriptionChannel.fromJson(Map<String, dynamic> json) {
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

  static List<EmailPlaintextSubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<EmailPlaintextSubscriptionChannel>() : json.map((value) => EmailPlaintextSubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, EmailPlaintextSubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EmailPlaintextSubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EmailPlaintextSubscriptionChannel.fromJson(value));
    }
    return map;
  }
}

