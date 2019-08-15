part of azure_devops_sdk.api;

class ResourcesHubData {
  
  String continuationToken = null;
  
  ResourceFilterOptions resourceFilterOptions = null;
  
  ResourceFilters resourceFilters = null;
  
  List<ResourceItem> resourceItems = [];
  ResourcesHubData();

  @override
  String toString() {
    return 'ResourcesHubData[continuationToken=$continuationToken, resourceFilterOptions=$resourceFilterOptions, resourceFilters=$resourceFilters, resourceItems=$resourceItems, ]';
  }

  ResourcesHubData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['continuationToken'] == null) {
      continuationToken = null;
    } else {
          continuationToken = json['continuationToken'];
    }
    if (json['resourceFilterOptions'] == null) {
      resourceFilterOptions = null;
    } else {
      resourceFilterOptions = ResourceFilterOptions.fromJson(json['resourceFilterOptions']);
    }
    if (json['resourceFilters'] == null) {
      resourceFilters = null;
    } else {
      resourceFilters = ResourceFilters.fromJson(json['resourceFilters']);
    }
    if (json['resourceItems'] == null) {
      resourceItems = null;
    } else {
      resourceItems = ResourceItem.listFromJson(json['resourceItems']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (continuationToken != null)
      json['continuationToken'] = continuationToken;
    if (resourceFilterOptions != null)
      json['resourceFilterOptions'] = resourceFilterOptions;
    if (resourceFilters != null)
      json['resourceFilters'] = resourceFilters;
    if (resourceItems != null)
      json['resourceItems'] = resourceItems;
    return json;
  }

  static List<ResourcesHubData> listFromJson(List<dynamic> json) {
    return json == null ? List<ResourcesHubData>() : json.map((value) => ResourcesHubData.fromJson(value)).toList();
  }

  static Map<String, ResourcesHubData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourcesHubData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResourcesHubData.fromJson(value));
    }
    return map;
  }
}

