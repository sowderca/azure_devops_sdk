part of azure_devops_sdk.api;

class CodeRepositoryReference {
  /* Gets and sets the repository references. */
  Map<String, ReleaseManagementInputValue> repositoryReference = {};
  /* It can have value as âGitHubâ, âVstsâ. */
  String systemType = null;
  //enum systemTypeEnum {  none,  tfsGit,  gitHub,  };{
  CodeRepositoryReference();

  @override
  String toString() {
    return 'CodeRepositoryReference[repositoryReference=$repositoryReference, systemType=$systemType, ]';
  }

  CodeRepositoryReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['repositoryReference'] == null) {
      repositoryReference = null;
    } else {
      repositoryReference = ReleaseManagementInputValue.mapFromJson(json['repositoryReference']);
    }
    if (json['systemType'] == null) {
      systemType = null;
    } else {
          systemType = json['systemType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (repositoryReference != null)
      json['repositoryReference'] = repositoryReference;
    if (systemType != null)
      json['systemType'] = systemType;
    return json;
  }

  static List<CodeRepositoryReference> listFromJson(List<dynamic> json) {
    return json == null ? List<CodeRepositoryReference>() : json.map((value) => CodeRepositoryReference.fromJson(value)).toList();
  }

  static Map<String, CodeRepositoryReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CodeRepositoryReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CodeRepositoryReference.fromJson(value));
    }
    return map;
  }
}

