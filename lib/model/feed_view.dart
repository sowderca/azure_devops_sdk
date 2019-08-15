part of azure_devops_sdk.api;

class FeedView {
  
  ReferenceLinks links = null;
  /* Id of the view. */
  String id = null;
  /* Name of the view. */
  String name = null;
  /* Type of view. */
  String type = null;
  //enum typeEnum {  none,  release,  implicit,  };{
  /* Url of the view. */
  String url = null;
  /* Visibility status of the view. */
  String visibility = null;
  //enum visibilityEnum {  private,  collection,  organization,  };{
  FeedView();

  @override
  String toString() {
    return 'FeedView[links=$links, id=$id, name=$name, type=$type, url=$url, visibility=$visibility, ]';
  }

  FeedView.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
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
    if (json['visibility'] == null) {
      visibility = null;
    } else {
          visibility = json['visibility'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    if (visibility != null)
      json['visibility'] = visibility;
    return json;
  }

  static List<FeedView> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedView>() : json.map((value) => FeedView.fromJson(value)).toList();
  }

  static Map<String, FeedView> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedView>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedView.fromJson(value));
    }
    return map;
  }
}

