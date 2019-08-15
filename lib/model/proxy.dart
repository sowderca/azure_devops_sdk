part of azure_devops_sdk.api;

class Proxy {
  
  ProxyAuthorization authorization = null;
  /* This is a description string */
  String description = null;
  /* The friendly name of the server */
  String friendlyName = null;
  
  bool globalDefault = null;
  /* This is a string representation of the site that the proxy server is located in (e.g. \"NA-WA-RED\") */
  String site = null;
  
  bool siteDefault = null;
  /* The URL of the proxy server */
  String url = null;
  Proxy();

  @override
  String toString() {
    return 'Proxy[authorization=$authorization, description=$description, friendlyName=$friendlyName, globalDefault=$globalDefault, site=$site, siteDefault=$siteDefault, url=$url, ]';
  }

  Proxy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['authorization'] == null) {
      authorization = null;
    } else {
      authorization = ProxyAuthorization.fromJson(json['authorization']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['friendlyName'] == null) {
      friendlyName = null;
    } else {
          friendlyName = json['friendlyName'];
    }
    if (json['globalDefault'] == null) {
      globalDefault = null;
    } else {
          globalDefault = json['globalDefault'];
    }
    if (json['site'] == null) {
      site = null;
    } else {
          site = json['site'];
    }
    if (json['siteDefault'] == null) {
      siteDefault = null;
    } else {
          siteDefault = json['siteDefault'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authorization != null)
      json['authorization'] = authorization;
    if (description != null)
      json['description'] = description;
    if (friendlyName != null)
      json['friendlyName'] = friendlyName;
    if (globalDefault != null)
      json['globalDefault'] = globalDefault;
    if (site != null)
      json['site'] = site;
    if (siteDefault != null)
      json['siteDefault'] = siteDefault;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Proxy> listFromJson(List<dynamic> json) {
    return json == null ? List<Proxy>() : json.map((value) => Proxy.fromJson(value)).toList();
  }

  static Map<String, Proxy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Proxy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Proxy.fromJson(value));
    }
    return map;
  }
}

