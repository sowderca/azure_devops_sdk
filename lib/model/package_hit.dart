part of azure_devops_sdk.api;

class PackageHit {
  /* Reference name of the highlighted field. */
  String fieldReferenceName = null;
  /* Matched/highlighted snippets of the field. */
  List<String> highlights = [];
  PackageHit();

  @override
  String toString() {
    return 'PackageHit[fieldReferenceName=$fieldReferenceName, highlights=$highlights, ]';
  }

  PackageHit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fieldReferenceName'] == null) {
      fieldReferenceName = null;
    } else {
          fieldReferenceName = json['fieldReferenceName'];
    }
    if (json['highlights'] == null) {
      highlights = null;
    } else {
      highlights = (json['highlights'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fieldReferenceName != null)
      json['fieldReferenceName'] = fieldReferenceName;
    if (highlights != null)
      json['highlights'] = highlights;
    return json;
  }

  static List<PackageHit> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageHit>() : json.map((value) => PackageHit.fromJson(value)).toList();
  }

  static Map<String, PackageHit> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageHit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageHit.fromJson(value));
    }
    return map;
  }
}

