part of azure_devops_sdk.api;

class SourceProviderAttributes {
  /* The name of the source provider. */
  String name = null;
  /* The capabilities supported by this source provider. */
  Map<String, bool> supportedCapabilities = {};
  /* The types of triggers supported by this source provider. */
  List<SupportedTrigger> supportedTriggers = [];
  SourceProviderAttributes();

  @override
  String toString() {
    return 'SourceProviderAttributes[name=$name, supportedCapabilities=$supportedCapabilities, supportedTriggers=$supportedTriggers, ]';
  }

  SourceProviderAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['supportedCapabilities'] == null) {
      supportedCapabilities = null;
    } else {
          supportedCapabilities = (json['supportedCapabilities'] as Map).cast<String, bool>();
    }
    if (json['supportedTriggers'] == null) {
      supportedTriggers = null;
    } else {
      supportedTriggers = SupportedTrigger.listFromJson(json['supportedTriggers']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (supportedCapabilities != null)
      json['supportedCapabilities'] = supportedCapabilities;
    if (supportedTriggers != null)
      json['supportedTriggers'] = supportedTriggers;
    return json;
  }

  static List<SourceProviderAttributes> listFromJson(List<dynamic> json) {
    return json == null ? List<SourceProviderAttributes>() : json.map((value) => SourceProviderAttributes.fromJson(value)).toList();
  }

  static Map<String, SourceProviderAttributes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourceProviderAttributes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourceProviderAttributes.fromJson(value));
    }
    return map;
  }
}

