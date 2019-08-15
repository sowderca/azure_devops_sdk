part of azure_devops_sdk.api;

class ExtensionPolicy {
  /* Permissions on 'Install' operation */
  String install = null;
  //enum installEnum {  none,  private,  public,  preview,  released,  firstParty,  all,  };{
  /* Permission on 'Request' operation */
  String request = null;
  //enum requestEnum {  none,  private,  public,  preview,  released,  firstParty,  all,  };{
  ExtensionPolicy();

  @override
  String toString() {
    return 'ExtensionPolicy[install=$install, request=$request, ]';
  }

  ExtensionPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['install'] == null) {
      install = null;
    } else {
          install = json['install'];
    }
    if (json['request'] == null) {
      request = null;
    } else {
          request = json['request'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (install != null)
      json['install'] = install;
    if (request != null)
      json['request'] = request;
    return json;
  }

  static List<ExtensionPolicy> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionPolicy>() : json.map((value) => ExtensionPolicy.fromJson(value)).toList();
  }

  static Map<String, ExtensionPolicy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionPolicy.fromJson(value));
    }
    return map;
  }
}

