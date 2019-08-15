part of azure_devops_sdk.api;

class WikiHit {
  /* Reference name of the highlighted field. */
  String fieldReferenceName = null;
  /* Matched/highlighted snippets of the field. */
  List<String> highlights = [];
  WikiHit();

  @override
  String toString() {
    return 'WikiHit[fieldReferenceName=$fieldReferenceName, highlights=$highlights, ]';
  }

  WikiHit.fromJson(Map<String, dynamic> json) {
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

  static List<WikiHit> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiHit>() : json.map((value) => WikiHit.fromJson(value)).toList();
  }

  static Map<String, WikiHit> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiHit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiHit.fromJson(value));
    }
    return map;
  }
}

