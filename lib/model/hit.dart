part of azure_devops_sdk.api;

class Hit {
  /* Gets or sets the start character offset of a piece of text. */
  int charOffset = null;
  /* Gets or sets the length of a piece of text. */
  int length = null;
  Hit();

  @override
  String toString() {
    return 'Hit[charOffset=$charOffset, length=$length, ]';
  }

  Hit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['charOffset'] == null) {
      charOffset = null;
    } else {
          charOffset = json['charOffset'];
    }
    if (json['length'] == null) {
      length = null;
    } else {
          length = json['length'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (charOffset != null)
      json['charOffset'] = charOffset;
    if (length != null)
      json['length'] = length;
    return json;
  }

  static List<Hit> listFromJson(List<dynamic> json) {
    return json == null ? List<Hit>() : json.map((value) => Hit.fromJson(value)).toList();
  }

  static Map<String, Hit> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Hit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Hit.fromJson(value));
    }
    return map;
  }
}

