part of azure_devops_sdk.api;

class ArtifactVersion {
  /* Gets or sets the alias of artifact. */
  String alias = null;
  
  BuildVersion defaultVersion = null;
  /* Gets or sets the error message encountered during querying of versions for artifact. */
  String errorMessage = null;
  /* Gets or sets the list of build versions of artifact. */
  List<BuildVersion> versions = [];
  ArtifactVersion();

  @override
  String toString() {
    return 'ArtifactVersion[alias=$alias, defaultVersion=$defaultVersion, errorMessage=$errorMessage, versions=$versions, ]';
  }

  ArtifactVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['alias'] == null) {
      alias = null;
    } else {
          alias = json['alias'];
    }
    if (json['defaultVersion'] == null) {
      defaultVersion = null;
    } else {
      defaultVersion = BuildVersion.fromJson(json['defaultVersion']);
    }
    if (json['errorMessage'] == null) {
      errorMessage = null;
    } else {
          errorMessage = json['errorMessage'];
    }
    if (json['versions'] == null) {
      versions = null;
    } else {
      versions = BuildVersion.listFromJson(json['versions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (alias != null)
      json['alias'] = alias;
    if (defaultVersion != null)
      json['defaultVersion'] = defaultVersion;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (versions != null)
      json['versions'] = versions;
    return json;
  }

  static List<ArtifactVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactVersion>() : json.map((value) => ArtifactVersion.fromJson(value)).toList();
  }

  static Map<String, ArtifactVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactVersion.fromJson(value));
    }
    return map;
  }
}

