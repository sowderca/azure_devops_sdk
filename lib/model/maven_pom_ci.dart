part of azure_devops_sdk.api;

class MavenPomCi {
  
  List<MavenPomCiNotifier> notifiers = [];
  
  String system = null;
  
  String url = null;
  MavenPomCi();

  @override
  String toString() {
    return 'MavenPomCi[notifiers=$notifiers, system=$system, url=$url, ]';
  }

  MavenPomCi.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['notifiers'] == null) {
      notifiers = null;
    } else {
      notifiers = MavenPomCiNotifier.listFromJson(json['notifiers']);
    }
    if (json['system'] == null) {
      system = null;
    } else {
          system = json['system'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (notifiers != null)
      json['notifiers'] = notifiers;
    if (system != null)
      json['system'] = system;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<MavenPomCi> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomCi>() : json.map((value) => MavenPomCi.fromJson(value)).toList();
  }

  static Map<String, MavenPomCi> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomCi>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomCi.fromJson(value));
    }
    return map;
  }
}

