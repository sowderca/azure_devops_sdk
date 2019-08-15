part of azure_devops_sdk.api;

class VersionedResource {
  /* Gets or sets the reference to the compatible version. */
  String compatibleWith = null;
  /* Gets or sets the resource data. */
  Object resource = null;
  /* Gets or sets the version of the resource data. */
  String resourceVersion = null;
  VersionedResource();

  @override
  String toString() {
    return 'VersionedResource[compatibleWith=$compatibleWith, resource=$resource, resourceVersion=$resourceVersion, ]';
  }

  VersionedResource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['compatibleWith'] == null) {
      compatibleWith = null;
    } else {
          compatibleWith = json['compatibleWith'];
    }
    if (json['resource'] == null) {
      resource = null;
    } else {
          resource = json['resource'];
    }
    if (json['resourceVersion'] == null) {
      resourceVersion = null;
    } else {
          resourceVersion = json['resourceVersion'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (compatibleWith != null)
      json['compatibleWith'] = compatibleWith;
    if (resource != null)
      json['resource'] = resource;
    if (resourceVersion != null)
      json['resourceVersion'] = resourceVersion;
    return json;
  }

  static List<VersionedResource> listFromJson(List<dynamic> json) {
    return json == null ? List<VersionedResource>() : json.map((value) => VersionedResource.fromJson(value)).toList();
  }

  static Map<String, VersionedResource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VersionedResource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VersionedResource.fromJson(value));
    }
    return map;
  }
}

