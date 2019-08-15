part of azure_devops_sdk.api;

class PackageVersionMetricsQuery {
  /* List of package version ids */
  List<String> packageVersionIds = [];
  PackageVersionMetricsQuery();

  @override
  String toString() {
    return 'PackageVersionMetricsQuery[packageVersionIds=$packageVersionIds, ]';
  }

  PackageVersionMetricsQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['packageVersionIds'] == null) {
      packageVersionIds = null;
    } else {
      packageVersionIds = (json['packageVersionIds'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (packageVersionIds != null)
      json['packageVersionIds'] = packageVersionIds;
    return json;
  }

  static List<PackageVersionMetricsQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageVersionMetricsQuery>() : json.map((value) => PackageVersionMetricsQuery.fromJson(value)).toList();
  }

  static Map<String, PackageVersionMetricsQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageVersionMetricsQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageVersionMetricsQuery.fromJson(value));
    }
    return map;
  }
}

