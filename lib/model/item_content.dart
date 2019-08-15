part of azure_devops_sdk.api;

class ItemContent {
  
  String content = null;
  
  String contentType = null;
  //enum contentTypeEnum {  rawText,  base64Encoded,  };{
  ItemContent();

  @override
  String toString() {
    return 'ItemContent[content=$content, contentType=$contentType, ]';
  }

  ItemContent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['content'] == null) {
      content = null;
    } else {
          content = json['content'];
    }
    if (json['contentType'] == null) {
      contentType = null;
    } else {
          contentType = json['contentType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    if (contentType != null)
      json['contentType'] = contentType;
    return json;
  }

  static List<ItemContent> listFromJson(List<dynamic> json) {
    return json == null ? List<ItemContent>() : json.map((value) => ItemContent.fromJson(value)).toList();
  }

  static Map<String, ItemContent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ItemContent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ItemContent.fromJson(value));
    }
    return map;
  }
}

