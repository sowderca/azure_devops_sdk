part of azure_devops_sdk.api;

class PackageChange {
  
  Package package = null;
  
  PackageVersionChange packageVersionChange = null;
  PackageChange();

  @override
  String toString() {
    return 'PackageChange[package=$package, packageVersionChange=$packageVersionChange, ]';
  }

  PackageChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['package'] == null) {
      package = null;
    } else {
      package = Package.fromJson(json['package']);
    }
    if (json['packageVersionChange'] == null) {
      packageVersionChange = null;
    } else {
      packageVersionChange = PackageVersionChange.fromJson(json['packageVersionChange']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (package != null)
      json['package'] = package;
    if (packageVersionChange != null)
      json['packageVersionChange'] = packageVersionChange;
    return json;
  }

  static List<PackageChange> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageChange>() : json.map((value) => PackageChange.fromJson(value)).toList();
  }

  static Map<String, PackageChange> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageChange>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageChange.fromJson(value));
    }
    return map;
  }
}

