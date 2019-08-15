part of azure_devops_sdk.api;

class SemanticVersion {
  /* Major version when you make incompatible API changes */
  int major = null;
  /* Minor version when you add functionality in a backwards-compatible manner */
  int minor = null;
  /* Patch version when you make backwards-compatible bug fixes */
  int patch = null;
  SemanticVersion();

  @override
  String toString() {
    return 'SemanticVersion[major=$major, minor=$minor, patch=$patch, ]';
  }

  SemanticVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['major'] == null) {
      major = null;
    } else {
          major = json['major'];
    }
    if (json['minor'] == null) {
      minor = null;
    } else {
          minor = json['minor'];
    }
    if (json['patch'] == null) {
      patch = null;
    } else {
          patch = json['patch'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (major != null)
      json['major'] = major;
    if (minor != null)
      json['minor'] = minor;
    if (patch != null)
      json['patch'] = patch;
    return json;
  }

  static List<SemanticVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<SemanticVersion>() : json.map((value) => SemanticVersion.fromJson(value)).toList();
  }

  static Map<String, SemanticVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SemanticVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SemanticVersion.fromJson(value));
    }
    return map;
  }
}

