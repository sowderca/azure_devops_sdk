part of azure_devops_sdk.api;

class GlobalGitRepositoryKey {
  /* Team Project Collection ID of the collection for the repository. */
  String collectionId = null;
  /* Team Project ID of the project for the repository. */
  String projectId = null;
  /* ID of the repository. */
  String repositoryId = null;
  GlobalGitRepositoryKey();

  @override
  String toString() {
    return 'GlobalGitRepositoryKey[collectionId=$collectionId, projectId=$projectId, repositoryId=$repositoryId, ]';
  }

  GlobalGitRepositoryKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['collectionId'] == null) {
      collectionId = null;
    } else {
          collectionId = json['collectionId'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['repositoryId'] == null) {
      repositoryId = null;
    } else {
          repositoryId = json['repositoryId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (collectionId != null)
      json['collectionId'] = collectionId;
    if (projectId != null)
      json['projectId'] = projectId;
    if (repositoryId != null)
      json['repositoryId'] = repositoryId;
    return json;
  }

  static List<GlobalGitRepositoryKey> listFromJson(List<dynamic> json) {
    return json == null ? List<GlobalGitRepositoryKey>() : json.map((value) => GlobalGitRepositoryKey.fromJson(value)).toList();
  }

  static Map<String, GlobalGitRepositoryKey> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GlobalGitRepositoryKey>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GlobalGitRepositoryKey.fromJson(value));
    }
    return map;
  }
}

