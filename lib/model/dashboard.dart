part of azure_devops_sdk.api;

class Dashboard {
  
  ReferenceLinks links = null;
  /* Description of the dashboard. */
  String description = null;
  /* Server defined version tracking value, used for edit collision detection. */
  String eTag = null;
  /* ID of the Dashboard. Provided by service at creation time. */
  String id = null;
  /* Name of the Dashboard. */
  String name = null;
  /* ID of the Owner for a dashboard. For any legacy dashboards, this would be the unique identifier for the team associated with the dashboard. */
  String ownerId = null;
  /* Position of the dashboard, within a dashboard group. If unset at creation time, position is decided by the service. */
  int position = null;
  /* Interval for client to automatically refresh the dashboard. Expressed in minutes. */
  int refreshInterval = null;
  
  String url = null;
  /* The set of Widgets on the dashboard. */
  List<Widget> widgets = [];
  Dashboard();

  @override
  String toString() {
    return 'Dashboard[links=$links, description=$description, eTag=$eTag, id=$id, name=$name, ownerId=$ownerId, position=$position, refreshInterval=$refreshInterval, url=$url, widgets=$widgets, ]';
  }

  Dashboard.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['eTag'] == null) {
      eTag = null;
    } else {
          eTag = json['eTag'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['ownerId'] == null) {
      ownerId = null;
    } else {
          ownerId = json['ownerId'];
    }
    if (json['position'] == null) {
      position = null;
    } else {
          position = json['position'];
    }
    if (json['refreshInterval'] == null) {
      refreshInterval = null;
    } else {
          refreshInterval = json['refreshInterval'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['widgets'] == null) {
      widgets = null;
    } else {
      widgets = Widget.listFromJson(json['widgets']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (description != null)
      json['description'] = description;
    if (eTag != null)
      json['eTag'] = eTag;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (ownerId != null)
      json['ownerId'] = ownerId;
    if (position != null)
      json['position'] = position;
    if (refreshInterval != null)
      json['refreshInterval'] = refreshInterval;
    if (url != null)
      json['url'] = url;
    if (widgets != null)
      json['widgets'] = widgets;
    return json;
  }

  static List<Dashboard> listFromJson(List<dynamic> json) {
    return json == null ? List<Dashboard>() : json.map((value) => Dashboard.fromJson(value)).toList();
  }

  static Map<String, Dashboard> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Dashboard>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Dashboard.fromJson(value));
    }
    return map;
  }
}

