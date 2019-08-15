part of azure_devops_sdk.api;

class GitRefFavorite {
  
  ReferenceLinks links = null;
  
  int id = null;
  
  String identityId = null;
  
  String name = null;
  
  String repositoryId = null;
  
  String type = null;
  //enum typeEnum {  invalid,  folder,  ref,  };{
  
  String url = null;
  GitRefFavorite();

  @override
  String toString() {
    return 'GitRefFavorite[links=$links, id=$id, identityId=$identityId, name=$name, repositoryId=$repositoryId, type=$type, url=$url, ]';
  }

  GitRefFavorite.fromJson(Map<String, dynamic> json) {
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
    if (json['identityId'] == null) {
      identityId = null;
    } else {
          identityId = json['identityId'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['repositoryId'] == null) {
      repositoryId = null;
    } else {
          repositoryId = json['repositoryId'];
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
    if (links != null)
      json['_links'] = links;
    if (id != null)
      json['id'] = id;
    if (identityId != null)
      json['identityId'] = identityId;
    if (name != null)
      json['name'] = name;
    if (repositoryId != null)
      json['repositoryId'] = repositoryId;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitRefFavorite> listFromJson(List<dynamic> json) {
    return json == null ? List<GitRefFavorite>() : json.map((value) => GitRefFavorite.fromJson(value)).toList();
  }

  static Map<String, GitRefFavorite> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitRefFavorite>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitRefFavorite.fromJson(value));
    }
    return map;
  }
}

