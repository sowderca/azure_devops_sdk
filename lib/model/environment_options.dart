part of azure_devops_sdk.api;

class EnvironmentOptions {
  /* Gets and sets as the auto link workitems or not. */
  bool autoLinkWorkItems = null;
  /* Gets and sets as the badge enabled or not. */
  bool badgeEnabled = null;
  /* Gets and sets as the publish deployment status or not. */
  bool publishDeploymentStatus = null;
  /* Gets and sets as the.pull request deployment enabled or not. */
  bool pullRequestDeploymentEnabled = null;
  EnvironmentOptions();

  @override
  String toString() {
    return 'EnvironmentOptions[autoLinkWorkItems=$autoLinkWorkItems, badgeEnabled=$badgeEnabled, publishDeploymentStatus=$publishDeploymentStatus, pullRequestDeploymentEnabled=$pullRequestDeploymentEnabled, ]';
  }

  EnvironmentOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['autoLinkWorkItems'] == null) {
      autoLinkWorkItems = null;
    } else {
          autoLinkWorkItems = json['autoLinkWorkItems'];
    }
    if (json['badgeEnabled'] == null) {
      badgeEnabled = null;
    } else {
          badgeEnabled = json['badgeEnabled'];
    }
    if (json['publishDeploymentStatus'] == null) {
      publishDeploymentStatus = null;
    } else {
          publishDeploymentStatus = json['publishDeploymentStatus'];
    }
    if (json['pullRequestDeploymentEnabled'] == null) {
      pullRequestDeploymentEnabled = null;
    } else {
          pullRequestDeploymentEnabled = json['pullRequestDeploymentEnabled'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (autoLinkWorkItems != null)
      json['autoLinkWorkItems'] = autoLinkWorkItems;
    if (badgeEnabled != null)
      json['badgeEnabled'] = badgeEnabled;
    if (publishDeploymentStatus != null)
      json['publishDeploymentStatus'] = publishDeploymentStatus;
    if (pullRequestDeploymentEnabled != null)
      json['pullRequestDeploymentEnabled'] = pullRequestDeploymentEnabled;
    return json;
  }

  static List<EnvironmentOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<EnvironmentOptions>() : json.map((value) => EnvironmentOptions.fromJson(value)).toList();
  }

  static Map<String, EnvironmentOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EnvironmentOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EnvironmentOptions.fromJson(value));
    }
    return map;
  }
}

