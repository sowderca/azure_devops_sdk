part of azure_devops_sdk.api;

class PackageVersionProvenance {
  /* Name or Id of the feed. */
  String feedId = null;
  /* Id of the package (GUID Id, not name). */
  String packageId = null;
  /* Id of the package version (GUID Id, not name). */
  String packageVersionId = null;
  
  Provenance provenance = null;
  PackageVersionProvenance();

  @override
  String toString() {
    return 'PackageVersionProvenance[feedId=$feedId, packageId=$packageId, packageVersionId=$packageVersionId, provenance=$provenance, ]';
  }

  PackageVersionProvenance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['feedId'] == null) {
      feedId = null;
    } else {
          feedId = json['feedId'];
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
    if (json['provenance'] == null) {
      provenance = null;
    } else {
      provenance = Provenance.fromJson(json['provenance']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (feedId != null)
      json['feedId'] = feedId;
    if (packageId != null)
      json['packageId'] = packageId;
    if (packageVersionId != null)
      json['packageVersionId'] = packageVersionId;
    if (provenance != null)
      json['provenance'] = provenance;
    return json;
  }

  static List<PackageVersionProvenance> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageVersionProvenance>() : json.map((value) => PackageVersionProvenance.fromJson(value)).toList();
  }

  static Map<String, PackageVersionProvenance> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageVersionProvenance>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageVersionProvenance.fromJson(value));
    }
    return map;
  }
}

