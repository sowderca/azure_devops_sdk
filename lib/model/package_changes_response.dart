part of azure_devops_sdk.api;

class PackageChangesResponse {
  
  ReferenceLinks links = null;
  /* Number of changes in this batch. */
  int count = null;
  /* Token that should be used in future calls for this feed to retrieve new changes. */
  int nextPackageContinuationToken = null;
  /* List of changes. */
  List<PackageChange> packageChanges = [];
  PackageChangesResponse();

  @override
  String toString() {
    return 'PackageChangesResponse[links=$links, count=$count, nextPackageContinuationToken=$nextPackageContinuationToken, packageChanges=$packageChanges, ]';
  }

  PackageChangesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['nextPackageContinuationToken'] == null) {
      nextPackageContinuationToken = null;
    } else {
          nextPackageContinuationToken = json['nextPackageContinuationToken'];
    }
    if (json['packageChanges'] == null) {
      packageChanges = null;
    } else {
      packageChanges = PackageChange.listFromJson(json['packageChanges']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (count != null)
      json['count'] = count;
    if (nextPackageContinuationToken != null)
      json['nextPackageContinuationToken'] = nextPackageContinuationToken;
    if (packageChanges != null)
      json['packageChanges'] = packageChanges;
    return json;
  }

  static List<PackageChangesResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageChangesResponse>() : json.map((value) => PackageChangesResponse.fromJson(value)).toList();
  }

  static Map<String, PackageChangesResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageChangesResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageChangesResponse.fromJson(value));
    }
    return map;
  }
}

