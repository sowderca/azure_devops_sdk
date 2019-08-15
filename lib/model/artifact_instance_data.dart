part of azure_devops_sdk.api;

class ArtifactInstanceData {
  
  String accountName = null;
  
  String authenticationToken = null;
  
  String tfsUrl = null;
  
  String version = null;
  ArtifactInstanceData();

  @override
  String toString() {
    return 'ArtifactInstanceData[accountName=$accountName, authenticationToken=$authenticationToken, tfsUrl=$tfsUrl, version=$version, ]';
  }

  ArtifactInstanceData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accountName'] == null) {
      accountName = null;
    } else {
          accountName = json['accountName'];
    }
    if (json['authenticationToken'] == null) {
      authenticationToken = null;
    } else {
          authenticationToken = json['authenticationToken'];
    }
    if (json['tfsUrl'] == null) {
      tfsUrl = null;
    } else {
          tfsUrl = json['tfsUrl'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accountName != null)
      json['accountName'] = accountName;
    if (authenticationToken != null)
      json['authenticationToken'] = authenticationToken;
    if (tfsUrl != null)
      json['tfsUrl'] = tfsUrl;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<ArtifactInstanceData> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactInstanceData>() : json.map((value) => ArtifactInstanceData.fromJson(value)).toList();
  }

  static Map<String, ArtifactInstanceData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactInstanceData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactInstanceData.fromJson(value));
    }
    return map;
  }
}

