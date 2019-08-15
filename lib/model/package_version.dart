part of azure_devops_sdk.api;

class PackageVersion {
  /* Upstream source this package was ingested from. */
  String directUpstreamSourceId = null;
  /* Id for the package. */
  String id = null;
  /* [Obsolete] Used for legacy scenarios and may be removed in future versions. */
  bool isCachedVersion = null;
  /* True if this package has been deleted. */
  bool isDeleted = null;
  /* True if this is the latest version of the package by package type sort order. */
  bool isLatest = null;
  /* (NuGet Only) True if this package is listed. */
  bool isListed = null;
  /* Normalized version using normalization rules specific to a package type. */
  String normalizedVersion = null;
  /* Package description. */
  String packageDescription = null;
  /* UTC Date the package was published to the service. */
  DateTime publishDate = null;
  /* Internal storage id. */
  String storageId = null;
  /* Display version. */
  String version = null;
  /* List of views containing this package version. */
  List<FeedView> views = [];
  PackageVersion();

  @override
  String toString() {
    return 'PackageVersion[directUpstreamSourceId=$directUpstreamSourceId, id=$id, isCachedVersion=$isCachedVersion, isDeleted=$isDeleted, isLatest=$isLatest, isListed=$isListed, normalizedVersion=$normalizedVersion, packageDescription=$packageDescription, publishDate=$publishDate, storageId=$storageId, version=$version, views=$views, ]';
  }

  PackageVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['directUpstreamSourceId'] == null) {
      directUpstreamSourceId = null;
    } else {
          directUpstreamSourceId = json['directUpstreamSourceId'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isCachedVersion'] == null) {
      isCachedVersion = null;
    } else {
          isCachedVersion = json['isCachedVersion'];
    }
    if (json['isDeleted'] == null) {
      isDeleted = null;
    } else {
          isDeleted = json['isDeleted'];
    }
    if (json['isLatest'] == null) {
      isLatest = null;
    } else {
          isLatest = json['isLatest'];
    }
    if (json['isListed'] == null) {
      isListed = null;
    } else {
          isListed = json['isListed'];
    }
    if (json['normalizedVersion'] == null) {
      normalizedVersion = null;
    } else {
          normalizedVersion = json['normalizedVersion'];
    }
    if (json['packageDescription'] == null) {
      packageDescription = null;
    } else {
          packageDescription = json['packageDescription'];
    }
    if (json['publishDate'] == null) {
      publishDate = null;
    } else {
      publishDate = DateTime.parse(json['publishDate']);
    }
    if (json['storageId'] == null) {
      storageId = null;
    } else {
          storageId = json['storageId'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
    if (json['views'] == null) {
      views = null;
    } else {
      views = FeedView.listFromJson(json['views']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (directUpstreamSourceId != null)
      json['directUpstreamSourceId'] = directUpstreamSourceId;
    if (id != null)
      json['id'] = id;
    if (isCachedVersion != null)
      json['isCachedVersion'] = isCachedVersion;
    if (isDeleted != null)
      json['isDeleted'] = isDeleted;
    if (isLatest != null)
      json['isLatest'] = isLatest;
    if (isListed != null)
      json['isListed'] = isListed;
    if (normalizedVersion != null)
      json['normalizedVersion'] = normalizedVersion;
    if (packageDescription != null)
      json['packageDescription'] = packageDescription;
    if (publishDate != null)
      json['publishDate'] = publishDate == null ? null : publishDate.toUtc().toIso8601String();
    if (storageId != null)
      json['storageId'] = storageId;
    if (version != null)
      json['version'] = version;
    if (views != null)
      json['views'] = views;
    return json;
  }

  static List<PackageVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageVersion>() : json.map((value) => PackageVersion.fromJson(value)).toList();
  }

  static Map<String, PackageVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageVersion.fromJson(value));
    }
    return map;
  }
}

