part of azure_devops_sdk.api;

class PackageMetrics {
  /* Total count of downloads per package id. */
  double downloadCount = null;
  /* Number of downloads per unique user per package id. */
  double downloadUniqueUsers = null;
  /* UTC date and time when package was last downloaded. */
  DateTime lastDownloaded = null;
  /* Package id. */
  String packageId = null;
  PackageMetrics();

  @override
  String toString() {
    return 'PackageMetrics[downloadCount=$downloadCount, downloadUniqueUsers=$downloadUniqueUsers, lastDownloaded=$lastDownloaded, packageId=$packageId, ]';
  }

  PackageMetrics.fromJson(Map<String, dynamic> json) {
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
    return json;
  }

  static List<PackageMetrics> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageMetrics>() : json.map((value) => PackageMetrics.fromJson(value)).toList();
  }

  static Map<String, PackageMetrics> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageMetrics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageMetrics.fromJson(value));
    }
    return map;
  }
}

