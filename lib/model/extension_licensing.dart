part of azure_devops_sdk.api;

class ExtensionLicensing {
  /* A list of contributions which deviate from the default licensing behavior */
  List<LicensingOverride> overrides = [];
  ExtensionLicensing();

  @override
  String toString() {
    return 'ExtensionLicensing[overrides=$overrides, ]';
  }

  ExtensionLicensing.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['overrides'] == null) {
      overrides = null;
    } else {
      overrides = LicensingOverride.listFromJson(json['overrides']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (overrides != null)
      json['overrides'] = overrides;
    return json;
  }

  static List<ExtensionLicensing> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionLicensing>() : json.map((value) => ExtensionLicensing.fromJson(value)).toList();
  }

  static Map<String, ExtensionLicensing> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionLicensing>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionLicensing.fromJson(value));
    }
    return map;
  }
}

