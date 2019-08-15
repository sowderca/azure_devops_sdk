part of azure_devops_sdk.api;

class PackageVersionChange {
  /* The type of change that was performed. */
  String changeType = null;
  //enum changeTypeEnum {  addOrUpdate,  delete,  };{
  /* Token marker for this change, allowing the caller to send this value back to the service and receive changes beyond this one. */
  int continuationToken = null;
  
  PackageVersion packageVersion = null;
  PackageVersionChange();

  @override
  String toString() {
    return 'PackageVersionChange[changeType=$changeType, continuationToken=$continuationToken, packageVersion=$packageVersion, ]';
  }

  PackageVersionChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changeType'] == null) {
      changeType = null;
    } else {
          changeType = json['changeType'];
    }
    if (json['continuationToken'] == null) {
      continuationToken = null;
    } else {
          continuationToken = json['continuationToken'];
    }
    if (json['packageVersion'] == null) {
      packageVersion = null;
    } else {
      packageVersion = PackageVersion.fromJson(json['packageVersion']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changeType != null)
      json['changeType'] = changeType;
    if (continuationToken != null)
      json['continuationToken'] = continuationToken;
    if (packageVersion != null)
      json['packageVersion'] = packageVersion;
    return json;
  }

  static List<PackageVersionChange> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageVersionChange>() : json.map((value) => PackageVersionChange.fromJson(value)).toList();
  }

  static Map<String, PackageVersionChange> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageVersionChange>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageVersionChange.fromJson(value));
    }
    return map;
  }
}

