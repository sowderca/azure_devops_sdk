part of azure_devops_sdk.api;

class GitHubArtifactDownloadInput {
  /* Gets or sets the alias of artifact. */
  String alias = null;
  /* Gets or sets the name of artifact definition. Valid values are 'Skip', 'Selective', 'All'. */
  String artifactDownloadMode = null;
  /* Gets or sets the artifact items of the input. */
  List<String> artifactItems = [];
  /* Gets or sets the type of artifact. */
  String artifactType = null;
  GitHubArtifactDownloadInput();

  @override
  String toString() {
    return 'GitHubArtifactDownloadInput[alias=$alias, artifactDownloadMode=$artifactDownloadMode, artifactItems=$artifactItems, artifactType=$artifactType, ]';
  }

  GitHubArtifactDownloadInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['alias'] == null) {
      alias = null;
    } else {
          alias = json['alias'];
    }
    if (json['artifactDownloadMode'] == null) {
      artifactDownloadMode = null;
    } else {
          artifactDownloadMode = json['artifactDownloadMode'];
    }
    if (json['artifactItems'] == null) {
      artifactItems = null;
    } else {
      artifactItems = (json['artifactItems'] as List).cast<String>();
    }
    if (json['artifactType'] == null) {
      artifactType = null;
    } else {
          artifactType = json['artifactType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (alias != null)
      json['alias'] = alias;
    if (artifactDownloadMode != null)
      json['artifactDownloadMode'] = artifactDownloadMode;
    if (artifactItems != null)
      json['artifactItems'] = artifactItems;
    if (artifactType != null)
      json['artifactType'] = artifactType;
    return json;
  }

  static List<GitHubArtifactDownloadInput> listFromJson(List<dynamic> json) {
    return json == null ? List<GitHubArtifactDownloadInput>() : json.map((value) => GitHubArtifactDownloadInput.fromJson(value)).toList();
  }

  static Map<String, GitHubArtifactDownloadInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitHubArtifactDownloadInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitHubArtifactDownloadInput.fromJson(value));
    }
    return map;
  }
}

