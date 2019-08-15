part of azure_devops_sdk.api;

class MavenMinimalPackageDetails {
  /* Package artifact ID */
  String artifact = null;
  /* Package group ID */
  String group = null;
  /* Package version */
  String version = null;
  MavenMinimalPackageDetails();

  @override
  String toString() {
    return 'MavenMinimalPackageDetails[artifact=$artifact, group=$group, version=$version, ]';
  }

  MavenMinimalPackageDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifact'] == null) {
      artifact = null;
    } else {
          artifact = json['artifact'];
    }
    if (json['group'] == null) {
      group = null;
    } else {
          group = json['group'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifact != null)
      json['artifact'] = artifact;
    if (group != null)
      json['group'] = group;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<MavenMinimalPackageDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenMinimalPackageDetails>() : json.map((value) => MavenMinimalPackageDetails.fromJson(value)).toList();
  }

  static Map<String, MavenMinimalPackageDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenMinimalPackageDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenMinimalPackageDetails.fromJson(value));
    }
    return map;
  }
}

