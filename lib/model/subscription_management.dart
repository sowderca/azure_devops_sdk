part of azure_devops_sdk.api;

class SubscriptionManagement {
  
  String serviceInstanceType = null;
  
  String url = null;
  SubscriptionManagement();

  @override
  String toString() {
    return 'SubscriptionManagement[serviceInstanceType=$serviceInstanceType, url=$url, ]';
  }

  SubscriptionManagement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['serviceInstanceType'] == null) {
      serviceInstanceType = null;
    } else {
          serviceInstanceType = json['serviceInstanceType'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (serviceInstanceType != null)
      json['serviceInstanceType'] = serviceInstanceType;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<SubscriptionManagement> listFromJson(List<dynamic> json) {
    return json == null ? List<SubscriptionManagement>() : json.map((value) => SubscriptionManagement.fromJson(value)).toList();
  }

  static Map<String, SubscriptionManagement> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubscriptionManagement>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubscriptionManagement.fromJson(value));
    }
    return map;
  }
}

