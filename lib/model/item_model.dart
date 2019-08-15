part of azure_devops_sdk.api;

class ItemModel {
  
  ReferenceLinks links = null;
  
  String content = null;
  
  FileContentMetadata contentMetadata = null;
  
  bool isFolder = null;
  
  bool isSymLink = null;
  
  String path = null;
  
  String url = null;
  ItemModel();

  @override
  String toString() {
    return 'ItemModel[links=$links, content=$content, contentMetadata=$contentMetadata, isFolder=$isFolder, isSymLink=$isSymLink, path=$path, url=$url, ]';
  }

  ItemModel.fromJson(Map<String, dynamic> json) {
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

  static List<ItemModel> listFromJson(List<dynamic> json) {
    return json == null ? List<ItemModel>() : json.map((value) => ItemModel.fromJson(value)).toList();
  }

  static Map<String, ItemModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ItemModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ItemModel.fromJson(value));
    }
    return map;
  }
}

