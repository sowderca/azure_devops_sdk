part of azure_devops_sdk.api;

class AzureSubscription {
  
  String displayName = null;
  
  String subscriptionId = null;
  
  String subscriptionTenantId = null;
  
  String subscriptionTenantName = null;
  AzureSubscription();

  @override
  String toString() {
    return 'AzureSubscription[displayName=$displayName, subscriptionId=$subscriptionId, subscriptionTenantId=$subscriptionTenantId, subscriptionTenantName=$subscriptionTenantName, ]';
  }

  AzureSubscription.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['subscriptionId'] == null) {
      subscriptionId = null;
    } else {
          subscriptionId = json['subscriptionId'];
    }
    if (json['subscriptionTenantId'] == null) {
      subscriptionTenantId = null;
    } else {
          subscriptionTenantId = json['subscriptionTenantId'];
    }
    if (json['subscriptionTenantName'] == null) {
      subscriptionTenantName = null;
    } else {
          subscriptionTenantName = json['subscriptionTenantName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (subscriptionId != null)
      json['subscriptionId'] = subscriptionId;
    if (subscriptionTenantId != null)
      json['subscriptionTenantId'] = subscriptionTenantId;
    if (subscriptionTenantName != null)
      json['subscriptionTenantName'] = subscriptionTenantName;
    return json;
  }

  static List<AzureSubscription> listFromJson(List<dynamic> json) {
    return json == null ? List<AzureSubscription>() : json.map((value) => AzureSubscription.fromJson(value)).toList();
  }

  static Map<String, AzureSubscription> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzureSubscription>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzureSubscription.fromJson(value));
    }
    return map;
  }
}

