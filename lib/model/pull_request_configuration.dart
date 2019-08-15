part of azure_devops_sdk.api;

class PullRequestConfiguration {
  
  CodeRepositoryReference codeRepositoryReference = null;
  /* In case of Source based artifacts, Code reference will be present in Artifact details. */
  bool useArtifactReference = null;
  PullRequestConfiguration();

  @override
  String toString() {
    return 'PullRequestConfiguration[codeRepositoryReference=$codeRepositoryReference, useArtifactReference=$useArtifactReference, ]';
  }

  PullRequestConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['codeRepositoryReference'] == null) {
      codeRepositoryReference = null;
    } else {
      codeRepositoryReference = CodeRepositoryReference.fromJson(json['codeRepositoryReference']);
    }
    if (json['useArtifactReference'] == null) {
      useArtifactReference = null;
    } else {
          useArtifactReference = json['useArtifactReference'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (codeRepositoryReference != null)
      json['codeRepositoryReference'] = codeRepositoryReference;
    if (useArtifactReference != null)
      json['useArtifactReference'] = useArtifactReference;
    return json;
  }

  static List<PullRequestConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<PullRequestConfiguration>() : json.map((value) => PullRequestConfiguration.fromJson(value)).toList();
  }

  static Map<String, PullRequestConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PullRequestConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PullRequestConfiguration.fromJson(value));
    }
    return map;
  }
}

