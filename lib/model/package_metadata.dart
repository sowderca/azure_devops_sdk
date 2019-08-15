part of azure_devops_sdk.api;

class PackageMetadata {
  /* The date the package was created */
  DateTime createdOn = null;
  /* A direct link to download the package. */
  String downloadUrl = null;
  /* The UI uses this to display instructions, i.e. \"unzip MyAgent.zip\" */
  String filename = null;
  /* MD5 hash as a base64 string */
  String hashValue = null;
  /* A link to documentation */
  String infoUrl = null;
  /* The platform (win7, linux, etc.) */
  String platform = null;
  /* The type of package (e.g. \"agent\") */
  String type = null;
  
  PackageVersion version = null;
  PackageMetadata();

  @override
  String toString() {
    return 'PackageMetadata[createdOn=$createdOn, downloadUrl=$downloadUrl, filename=$filename, hashValue=$hashValue, infoUrl=$infoUrl, platform=$platform, type=$type, version=$version, ]';
  }

  PackageMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdOn'] == null) {
      createdOn = null;
    } else {
      createdOn = DateTime.parse(json['createdOn']);
    }
    if (json['downloadUrl'] == null) {
      downloadUrl = null;
    } else {
          downloadUrl = json['downloadUrl'];
    }
    if (json['filename'] == null) {
      filename = null;
    } else {
          filename = json['filename'];
    }
    if (json['hashValue'] == null) {
      hashValue = null;
    } else {
          hashValue = json['hashValue'];
    }
    if (json['infoUrl'] == null) {
      infoUrl = null;
    } else {
          infoUrl = json['infoUrl'];
    }
    if (json['platform'] == null) {
      platform = null;
    } else {
          platform = json['platform'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
      version = PackageVersion.fromJson(json['version']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdOn != null)
      json['createdOn'] = createdOn == null ? null : createdOn.toUtc().toIso8601String();
    if (downloadUrl != null)
      json['downloadUrl'] = downloadUrl;
    if (filename != null)
      json['filename'] = filename;
    if (hashValue != null)
      json['hashValue'] = hashValue;
    if (infoUrl != null)
      json['infoUrl'] = infoUrl;
    if (platform != null)
      json['platform'] = platform;
    if (type != null)
      json['type'] = type;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<PackageMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageMetadata>() : json.map((value) => PackageMetadata.fromJson(value)).toList();
  }

  static Map<String, PackageMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageMetadata.fromJson(value));
    }
    return map;
  }
}

