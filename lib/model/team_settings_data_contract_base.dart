part of azure_devops_sdk.api;

class TeamSettingsDataContractBase {
  
  ReferenceLinks links = null;
  /* Full http link to the resource */
  String url = null;
  TeamSettingsDataContractBase();

  @override
  String toString() {
    return 'TeamSettingsDataContractBase[links=$links, url=$url, ]';
  }

  TeamSettingsDataContractBase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TeamSettingsDataContractBase> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamSettingsDataContractBase>() : json.map((value) => TeamSettingsDataContractBase.fromJson(value)).toList();
  }

  static Map<String, TeamSettingsDataContractBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamSettingsDataContractBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamSettingsDataContractBase.fromJson(value));
    }
    return map;
  }
}

