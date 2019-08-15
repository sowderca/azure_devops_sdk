part of azure_devops_sdk.api;

class Member {
  
  String displayName = null;
  
  String id = null;
  
  String imageUrl = null;
  
  String uniqueName = null;
  
  String url = null;
  Member();

  @override
  String toString() {
    return 'Member[displayName=$displayName, id=$id, imageUrl=$imageUrl, uniqueName=$uniqueName, url=$url, ]';
  }

  Member.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['imageUrl'] == null) {
      imageUrl = null;
    } else {
          imageUrl = json['imageUrl'];
    }
    if (json['uniqueName'] == null) {
      uniqueName = null;
    } else {
          uniqueName = json['uniqueName'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (id != null)
      json['id'] = id;
    if (imageUrl != null)
      json['imageUrl'] = imageUrl;
    if (uniqueName != null)
      json['uniqueName'] = uniqueName;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Member> listFromJson(List<dynamic> json) {
    return json == null ? List<Member>() : json.map((value) => Member.fromJson(value)).toList();
  }

  static Map<String, Member> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Member>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Member.fromJson(value));
    }
    return map;
  }
}

