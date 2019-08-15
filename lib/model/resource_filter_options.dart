part of azure_devops_sdk.api;

class ResourceFilterOptions {
  
  List<IdentityRef> identities = [];
  
  List<String> resourceTypes = [];
  ResourceFilterOptions();

  @override
  String toString() {
    return 'ResourceFilterOptions[identities=$identities, resourceTypes=$resourceTypes, ]';
  }

  ResourceFilterOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['identities'] == null) {
      identities = null;
    } else {
      identities = IdentityRef.listFromJson(json['identities']);
    }
    if (json['resourceTypes'] == null) {
      resourceTypes = null;
    } else {
      resourceTypes = (json['resourceTypes'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (identities != null)
      json['identities'] = identities;
    if (resourceTypes != null)
      json['resourceTypes'] = resourceTypes;
    return json;
  }

  static List<ResourceFilterOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<ResourceFilterOptions>() : json.map((value) => ResourceFilterOptions.fromJson(value)).toList();
  }

  static Map<String, ResourceFilterOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourceFilterOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResourceFilterOptions.fromJson(value));
    }
    return map;
  }
}

