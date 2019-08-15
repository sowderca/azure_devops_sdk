part of azure_devops_sdk.api;

class PackageVersionMetrics {
  /* Total count of downloads per package version id. */
  double downloadCount = null;
  /* Number of downloads per unique user per package version id. */
  double downloadUniqueUsers = null;
  /* UTC date and time when package version was last downloaded. */
  DateTime lastDownloaded = null;
  /* Package id. */
  String packageId = null;
  /* Package version id. */
  String packageVersionId = null;
  PackageVersionMetrics();

  @override
  String toString() {
    return 'PackageVersionMetrics[downloadCount=$downloadCount, downloadUniqueUsers=$downloadUniqueUsers, lastDownloaded=$lastDownloaded, packageId=$packageId, packageVersionId=$packageVersionId, ]';
  }

  PackageVersionMetrics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['downloadCount'] == null) {
      downloadCount = null;
    } else {
          downloadCount = json['downloadCount'].toDouble();
    }
    if (json['downloadUniqueUsers'] == null) {
      downloadUniqueUsers = null;
    } else {
          downloadUniqueUsers = json['downloadUniqueUsers'].toDouble();
    }
    if (json['lastDownloaded'] == null) {
      lastDownloaded = null;
    } else {
      lastDownloaded = DateTime.parse(json['lastDownloaded']);
    }
    if (json['packageId'] == null) {
      packageId = null;
    } else {
          packageId = json['packageId'];
    }
    if (json['packageVersionId'] == null) {
      packageVersionId = null;
    } else {
          packageVersionId = json['packageVersionId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (downloadCount != null)
      json['downloadCount'] = downloadCount;
    if (downloadUniqueUsers != null)
      json['downloadUniqueUsers'] = downloadUniqueUsers;
    if (lastDownloaded != null)
      json['lastDownloaded'] = lastDownloaded == null ? null : lastDownloaded.toUtc().toIso8601String();
    if (packageId != null)
      json['packageId'] = packageId;
    if (packageVersionId != null)
      json['packageVersionId'] = packageVersionId;
    return json;
  }

  static List<PackageVersionMetrics> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageVersionMetrics>() : json.map((value) => PackageVersionMetrics.fromJson(value)).toList();
  }

  static Map<String, PackageVersionMetrics> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageVersionMetrics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageVersionMetrics.fromJson(value));
    }
    return map;
  }
}

