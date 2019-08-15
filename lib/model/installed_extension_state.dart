part of azure_devops_sdk.api;

class InstalledExtensionState {
  /* States of an installed extension */
  String flags = null;
  //enum flagsEnum {  none,  disabled,  builtIn,  multiVersion,  unInstalled,  versionCheckError,  trusted,  error,  needsReauthorization,  autoUpgradeError,  warning,  };{
  /* List of installation issues */
  List<InstalledExtensionStateIssue> installationIssues = [];
  /* The time at which this installation was last updated */
  DateTime lastUpdated = null;
  InstalledExtensionState();

  @override
  String toString() {
    return 'InstalledExtensionState[flags=$flags, installationIssues=$installationIssues, lastUpdated=$lastUpdated, ]';
  }

  InstalledExtensionState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['flags'] == null) {
      flags = null;
    } else {
          flags = json['flags'];
    }
    if (json['installationIssues'] == null) {
      installationIssues = null;
    } else {
      installationIssues = InstalledExtensionStateIssue.listFromJson(json['installationIssues']);
    }
    if (json['lastUpdated'] == null) {
      lastUpdated = null;
    } else {
      lastUpdated = DateTime.parse(json['lastUpdated']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (flags != null)
      json['flags'] = flags;
    if (installationIssues != null)
      json['installationIssues'] = installationIssues;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    return json;
  }

  static List<InstalledExtensionState> listFromJson(List<dynamic> json) {
    return json == null ? List<InstalledExtensionState>() : json.map((value) => InstalledExtensionState.fromJson(value)).toList();
  }

  static Map<String, InstalledExtensionState> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InstalledExtensionState>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InstalledExtensionState.fromJson(value));
    }
    return map;
  }
}

