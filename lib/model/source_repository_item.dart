part of azure_devops_sdk.api;

class SourceRepositoryItem {
  /* Whether the item is able to have sub-items (e.g., is a folder). */
  bool isContainer = null;
  /* The full path of the item, relative to the root of the repository. */
  String path = null;
  /* The type of the item (folder, file, etc). */
  String type = null;
  /* The URL of the item. */
  String url = null;
  SourceRepositoryItem();

  @override
  String toString() {
    return 'SourceRepositoryItem[isContainer=$isContainer, path=$path, type=$type, url=$url, ]';
  }

  SourceRepositoryItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isContainer'] == null) {
      isContainer = null;
    } else {
          isContainer = json['isContainer'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isContainer != null)
      json['isContainer'] = isContainer;
    if (path != null)
      json['path'] = path;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<SourceRepositoryItem> listFromJson(List<dynamic> json) {
    return json == null ? List<SourceRepositoryItem>() : json.map((value) => SourceRepositoryItem.fromJson(value)).toList();
  }

  static Map<String, SourceRepositoryItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourceRepositoryItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourceRepositoryItem.fromJson(value));
    }
    return map;
  }
}

