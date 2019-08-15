part of azure_devops_sdk.api;

class WikiUpdatedNotificationMessage {
  /* Collection host Id for which the wikis are updated. */
  String collectionId = null;
  /* Project Id for which the wikis are updated. */
  String projectId = null;
  /* Repository Id associated with the particular wiki which is added, updated or deleted. */
  String repositoryId = null;
  WikiUpdatedNotificationMessage();

  @override
  String toString() {
    return 'WikiUpdatedNotificationMessage[collectionId=$collectionId, projectId=$projectId, repositoryId=$repositoryId, ]';
  }

  WikiUpdatedNotificationMessage.fromJson(Map<String, dynamic> json) {
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

  static List<WikiUpdatedNotificationMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiUpdatedNotificationMessage>() : json.map((value) => WikiUpdatedNotificationMessage.fromJson(value)).toList();
  }

  static Map<String, WikiUpdatedNotificationMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiUpdatedNotificationMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiUpdatedNotificationMessage.fromJson(value));
    }
    return map;
  }
}

