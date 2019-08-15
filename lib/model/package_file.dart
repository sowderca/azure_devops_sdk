part of azure_devops_sdk.api;

class PackageFile {
  /* Hierarchical representation of files. */
  List<PackageFile> children = [];
  /* File name. */
  String name = null;
  
  ProtocolMetadata protocolMetadata = null;
  PackageFile();

  @override
  String toString() {
    return 'PackageFile[children=$children, name=$name, protocolMetadata=$protocolMetadata, ]';
  }

  PackageFile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['children'] == null) {
      children = null;
    } else {
      children = PackageFile.listFromJson(json['children']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['protocolMetadata'] == null) {
      protocolMetadata = null;
    } else {
      protocolMetadata = ProtocolMetadata.fromJson(json['protocolMetadata']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (children != null)
      json['children'] = children;
    if (name != null)
      json['name'] = name;
    if (protocolMetadata != null)
      json['protocolMetadata'] = protocolMetadata;
    return json;
  }

  static List<PackageFile> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageFile>() : json.map((value) => PackageFile.fromJson(value)).toList();
  }

  static Map<String, PackageFile> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageFile>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageFile.fromJson(value));
    }
    return map;
  }
}

