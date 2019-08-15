part of azure_devops_sdk.api;

class PackageMetricsQuery {
  /* List of package ids */
  List<String> packageIds = [];
  PackageMetricsQuery();

  @override
  String toString() {
    return 'PackageMetricsQuery[packageIds=$packageIds, ]';
  }

  PackageMetricsQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['packageIds'] == null) {
      packageIds = null;
    } else {
      packageIds = (json['packageIds'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (packageIds != null)
      json['packageIds'] = packageIds;
    return json;
  }

  static List<PackageMetricsQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageMetricsQuery>() : json.map((value) => PackageMetricsQuery.fromJson(value)).toList();
  }

  static Map<String, PackageMetricsQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageMetricsQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageMetricsQuery.fromJson(value));
    }
    return map;
  }
}

