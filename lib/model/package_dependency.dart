part of azure_devops_sdk.api;

class PackageDependency {
  /* Dependency package group (an optional classification within some package types). */
  String group = null;
  /* Dependency package name. */
  String packageName = null;
  /* Dependency package version range. */
  String versionRange = null;
  PackageDependency();

  @override
  String toString() {
    return 'PackageDependency[group=$group, packageName=$packageName, versionRange=$versionRange, ]';
  }

  PackageDependency.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['group'] == null) {
      group = null;
    } else {
          group = json['group'];
    }
    if (json['packageName'] == null) {
      packageName = null;
    } else {
          packageName = json['packageName'];
    }
    if (json['versionRange'] == null) {
      versionRange = null;
    } else {
          versionRange = json['versionRange'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (group != null)
      json['group'] = group;
    if (packageName != null)
      json['packageName'] = packageName;
    if (versionRange != null)
      json['versionRange'] = versionRange;
    return json;
  }

  static List<PackageDependency> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageDependency>() : json.map((value) => PackageDependency.fromJson(value)).toList();
  }

  static Map<String, PackageDependency> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageDependency>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageDependency.fromJson(value));
    }
    return map;
  }
}

