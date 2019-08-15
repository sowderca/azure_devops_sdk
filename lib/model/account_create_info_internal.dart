part of azure_devops_sdk.api;

class AccountCreateInfoInternal {
  
  String accountName = null;
  
  String creator = null;
  
  String organization = null;
  
  AccountPreferencesInternal preferences = null;
  
  PropertiesCollection properties = null;
  
  List<Object> serviceDefinitions = [];
  AccountCreateInfoInternal();

  @override
  String toString() {
    return 'AccountCreateInfoInternal[accountName=$accountName, creator=$creator, organization=$organization, preferences=$preferences, properties=$properties, serviceDefinitions=$serviceDefinitions, ]';
  }

  AccountCreateInfoInternal.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accountName'] == null) {
      accountName = null;
    } else {
          accountName = json['accountName'];
    }
    if (json['creator'] == null) {
      creator = null;
    } else {
          creator = json['creator'];
    }
    if (json['organization'] == null) {
      organization = null;
    } else {
          organization = json['organization'];
    }
    if (json['preferences'] == null) {
      preferences = null;
    } else {
      preferences = AccountPreferencesInternal.fromJson(json['preferences']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = PropertiesCollection.fromJson(json['properties']);
    }
    if (json['serviceDefinitions'] == null) {
      serviceDefinitions = null;
    } else {
      serviceDefinitions = Object.listFromJson(json['serviceDefinitions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accountName != null)
      json['accountName'] = accountName;
    if (creator != null)
      json['creator'] = creator;
    if (organization != null)
      json['organization'] = organization;
    if (preferences != null)
      json['preferences'] = preferences;
    if (properties != null)
      json['properties'] = properties;
    if (serviceDefinitions != null)
      json['serviceDefinitions'] = serviceDefinitions;
    return json;
  }

  static List<AccountCreateInfoInternal> listFromJson(List<dynamic> json) {
    return json == null ? List<AccountCreateInfoInternal>() : json.map((value) => AccountCreateInfoInternal.fromJson(value)).toList();
  }

  static Map<String, AccountCreateInfoInternal> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccountCreateInfoInternal>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccountCreateInfoInternal.fromJson(value));
    }
    return map;
  }
}

