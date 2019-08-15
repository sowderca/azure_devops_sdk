part of azure_devops_sdk.api;

class ResourceFilters {
  
  List<String> createdBy = [];
  
  List<String> resourceType = [];
  
  String searchText = null;
  ResourceFilters();

  @override
  String toString() {
    return 'ResourceFilters[createdBy=$createdBy, resourceType=$resourceType, searchText=$searchText, ]';
  }

  ResourceFilters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = (json['createdBy'] as List).cast<String>();
    }
    if (json['resourceType'] == null) {
      resourceType = null;
    } else {
      resourceType = (json['resourceType'] as List).cast<String>();
    }
    if (json['searchText'] == null) {
      searchText = null;
    } else {
          searchText = json['searchText'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (resourceType != null)
      json['resourceType'] = resourceType;
    if (searchText != null)
      json['searchText'] = searchText;
    return json;
  }

  static List<ResourceFilters> listFromJson(List<dynamic> json) {
    return json == null ? List<ResourceFilters>() : json.map((value) => ResourceFilters.fromJson(value)).toList();
  }

  static Map<String, ResourceFilters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourceFilters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResourceFilters.fromJson(value));
    }
    return map;
  }
}

