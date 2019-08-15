part of azure_devops_sdk.api;

class SupportedExtension {
  /* Unique Identifier for this extension */
  String extension = null;
  /* Unique Identifier for this publisher */
  String publisher = null;
  /* Supported version for this extension */
  String version = null;
  SupportedExtension();

  @override
  String toString() {
    return 'SupportedExtension[extension=$extension, publisher=$publisher, version=$version, ]';
  }

  SupportedExtension.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['extension'] == null) {
      extension = null;
    } else {
          extension = json['extension'];
    }
    if (json['publisher'] == null) {
      publisher = null;
    } else {
          publisher = json['publisher'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (extension != null)
      json['extension'] = extension;
    if (publisher != null)
      json['publisher'] = publisher;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<SupportedExtension> listFromJson(List<dynamic> json) {
    return json == null ? List<SupportedExtension>() : json.map((value) => SupportedExtension.fromJson(value)).toList();
  }

  static Map<String, SupportedExtension> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SupportedExtension>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SupportedExtension.fromJson(value));
    }
    return map;
  }
}

