part of azure_devops_sdk.api;

class DashboardGroup {
  
  ReferenceLinks links = null;
  /* A list of Dashboards held by the Dashboard Group */
  List<DashboardGroupEntry> dashboardEntries = [];
  /* Deprecated: The old permission model describing the level of permissions for the current team. Pre-M125. */
  String permission = null;
  //enum permissionEnum {  none,  edit,  manage,  managePermissions,  };{
  /* A permissions bit mask describing the security permissions of the current team for dashboards. When this permission is the value None, use GroupMemberPermission. Permissions are evaluated based on the presence of a value other than None, else the GroupMemberPermission will be saved. */
  String teamDashboardPermission = null;
  //enum teamDashboardPermissionEnum {  none,  read,  create,  edit,  delete,  managePermissions,  };{
  
  String url = null;
  DashboardGroup();

  @override
  String toString() {
    return 'DashboardGroup[links=$links, dashboardEntries=$dashboardEntries, permission=$permission, teamDashboardPermission=$teamDashboardPermission, url=$url, ]';
  }

  DashboardGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['dashboardEntries'] == null) {
      dashboardEntries = null;
    } else {
      dashboardEntries = DashboardGroupEntry.listFromJson(json['dashboardEntries']);
    }
    if (json['permission'] == null) {
      permission = null;
    } else {
          permission = json['permission'];
    }
    if (json['teamDashboardPermission'] == null) {
      teamDashboardPermission = null;
    } else {
          teamDashboardPermission = json['teamDashboardPermission'];
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
    if (dashboardEntries != null)
      json['dashboardEntries'] = dashboardEntries;
    if (permission != null)
      json['permission'] = permission;
    if (teamDashboardPermission != null)
      json['teamDashboardPermission'] = teamDashboardPermission;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<DashboardGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<DashboardGroup>() : json.map((value) => DashboardGroup.fromJson(value)).toList();
  }

  static Map<String, DashboardGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DashboardGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DashboardGroup.fromJson(value));
    }
    return map;
  }
}

