part of azure_devops_sdk.api;

class CoreProfileAttribute {
  
  AttributeDescriptor descriptor = null;
  /* The revision number of the attribute. */
  int revision = null;
  /* The time the attribute was last changed. */
  DateTime timeStamp = null;
  /* The value of the attribute. */
  String value = null;
  CoreProfileAttribute();

  @override
  String toString() {
    return 'CoreProfileAttribute[descriptor=$descriptor, revision=$revision, timeStamp=$timeStamp, value=$value, ]';
  }

  CoreProfileAttribute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['descriptor'] == null) {
      descriptor = null;
    } else {
      descriptor = AttributeDescriptor.fromJson(json['descriptor']);
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['timeStamp'] == null) {
      timeStamp = null;
    } else {
      timeStamp = DateTime.parse(json['timeStamp']);
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (descriptor != null)
      json['descriptor'] = descriptor;
    if (revision != null)
      json['revision'] = revision;
    if (timeStamp != null)
      json['timeStamp'] = timeStamp == null ? null : timeStamp.toUtc().toIso8601String();
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<CoreProfileAttribute> listFromJson(List<dynamic> json) {
    return json == null ? List<CoreProfileAttribute>() : json.map((value) => CoreProfileAttribute.fromJson(value)).toList();
  }

  static Map<String, CoreProfileAttribute> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CoreProfileAttribute>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CoreProfileAttribute.fromJson(value));
    }
    return map;
  }
}

