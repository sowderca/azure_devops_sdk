part of azure_devops_sdk.api;

class TfvcItem {
  
  ReferenceLinks links = null;
  
  String content = null;
  
  FileContentMetadata contentMetadata = null;
  
  bool isFolder = null;
  
  bool isSymLink = null;
  
  String path = null;
  
  String url = null;
  TfvcItem();

  @override
  String toString() {
    return 'TfvcItem[links=$links, content=$content, contentMetadata=$contentMetadata, isFolder=$isFolder, isSymLink=$isSymLink, path=$path, url=$url, ]';
  }

  TfvcItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['content'] == null) {
      content = null;
    } else {
          content = json['content'];
    }
    if (json['contentMetadata'] == null) {
      contentMetadata = null;
    } else {
      contentMetadata = FileContentMetadata.fromJson(json['contentMetadata']);
    }
    if (json['isFolder'] == null) {
      isFolder = null;
    } else {
          isFolder = json['isFolder'];
    }
    if (json['isSymLink'] == null) {
      isSymLink = null;
    } else {
          isSymLink = json['isSymLink'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (content != null)
      json['content'] = content;
    if (contentMetadata != null)
      json['contentMetadata'] = contentMetadata;
    if (isFolder != null)
      json['isFolder'] = isFolder;
    if (isSymLink != null)
      json['isSymLink'] = isSymLink;
    if (path != null)
      json['path'] = path;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TfvcItem> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcItem>() : json.map((value) => TfvcItem.fromJson(value)).toList();
  }

  static Map<String, TfvcItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcItem.fromJson(value));
    }
    return map;
  }
}

