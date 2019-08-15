part of azure_devops_sdk.api;

class Version {
  /* Name of the branch. */
  String branchName = null;
  /* ChangeId in the given branch associated with this match. */
  String changeId = null;
  Version();

  @override
  String toString() {
    return 'Version[branchName=$branchName, changeId=$changeId, ]';
  }

  Version.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['branchName'] == null) {
      branchName = null;
    } else {
          branchName = json['branchName'];
    }
    if (json['changeId'] == null) {
      changeId = null;
    } else {
          changeId = json['changeId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (branchName != null)
      json['branchName'] = branchName;
    if (changeId != null)
      json['changeId'] = changeId;
    return json;
  }

  static List<Version> listFromJson(List<dynamic> json) {
    return json == null ? List<Version>() : json.map((value) => Version.fromJson(value)).toList();
  }

  static Map<String, Version> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Version>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Version.fromJson(value));
    }
    return map;
  }
}

