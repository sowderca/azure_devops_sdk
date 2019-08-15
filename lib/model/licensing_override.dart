part of azure_devops_sdk.api;

class LicensingOverride {
  /* How the inclusion of this contribution should change based on licensing */
  String behavior = null;
  //enum behaviorEnum {  onlyIfLicensed,  onlyIfUnlicensed,  alwaysInclude,  };{
  /* Fully qualified contribution id which we want to define licensing behavior for */
  String id = null;
  LicensingOverride();

  @override
  String toString() {
    return 'LicensingOverride[behavior=$behavior, id=$id, ]';
  }

  LicensingOverride.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['behavior'] == null) {
      behavior = null;
    } else {
          behavior = json['behavior'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (behavior != null)
      json['behavior'] = behavior;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<LicensingOverride> listFromJson(List<dynamic> json) {
    return json == null ? List<LicensingOverride>() : json.map((value) => LicensingOverride.fromJson(value)).toList();
  }

  static Map<String, LicensingOverride> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LicensingOverride>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LicensingOverride.fromJson(value));
    }
    return map;
  }
}

