part of azure_devops_sdk.api;

class TestSettings {
  /* Cleanup command */
  String cleanupCommand = null;
  /* Processor Architecture chosen */
  String hostProcessPlatform = null;
  //enum hostProcessPlatformEnum {  none,  msil,  x86,  ia64,  amd64,  arm,  };{
  /* Setup command */
  String setupCommand = null;
  TestSettings();

  @override
  String toString() {
    return 'TestSettings[cleanupCommand=$cleanupCommand, hostProcessPlatform=$hostProcessPlatform, setupCommand=$setupCommand, ]';
  }

  TestSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cleanupCommand'] == null) {
      cleanupCommand = null;
    } else {
          cleanupCommand = json['cleanupCommand'];
    }
    if (json['hostProcessPlatform'] == null) {
      hostProcessPlatform = null;
    } else {
          hostProcessPlatform = json['hostProcessPlatform'];
    }
    if (json['setupCommand'] == null) {
      setupCommand = null;
    } else {
          setupCommand = json['setupCommand'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cleanupCommand != null)
      json['cleanupCommand'] = cleanupCommand;
    if (hostProcessPlatform != null)
      json['hostProcessPlatform'] = hostProcessPlatform;
    if (setupCommand != null)
      json['setupCommand'] = setupCommand;
    return json;
  }

  static List<TestSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSettings>() : json.map((value) => TestSettings.fromJson(value)).toList();
  }

  static Map<String, TestSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSettings.fromJson(value));
    }
    return map;
  }
}

