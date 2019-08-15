part of azure_devops_sdk.api;

class EmailHtmlSubscriptionChannel {
  
  String address = null;
  
  String type = null;
  
  bool useCustomAddress = null;
  EmailHtmlSubscriptionChannel();

  @override
  String toString() {
    return 'EmailHtmlSubscriptionChannel[address=$address, type=$type, useCustomAddress=$useCustomAddress, ]';
  }

  EmailHtmlSubscriptionChannel.fromJson(Map<String, dynamic> json) {
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

  static List<EmailHtmlSubscriptionChannel> listFromJson(List<dynamic> json) {
    return json == null ? List<EmailHtmlSubscriptionChannel>() : json.map((value) => EmailHtmlSubscriptionChannel.fromJson(value)).toList();
  }

  static Map<String, EmailHtmlSubscriptionChannel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EmailHtmlSubscriptionChannel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EmailHtmlSubscriptionChannel.fromJson(value));
    }
    return map;
  }
}

