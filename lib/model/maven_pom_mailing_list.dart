part of azure_devops_sdk.api;

class MavenPomMailingList {
  
  String archive = null;
  
  String name = null;
  
  List<String> otherArchives = [];
  
  String post = null;
  
  String subscribe = null;
  
  String unsubscribe = null;
  MavenPomMailingList();

  @override
  String toString() {
    return 'MavenPomMailingList[archive=$archive, name=$name, otherArchives=$otherArchives, post=$post, subscribe=$subscribe, unsubscribe=$unsubscribe, ]';
  }

  MavenPomMailingList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['archive'] == null) {
      archive = null;
    } else {
          archive = json['archive'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['otherArchives'] == null) {
      otherArchives = null;
    } else {
      otherArchives = (json['otherArchives'] as List).cast<String>();
    }
    if (json['post'] == null) {
      post = null;
    } else {
          post = json['post'];
    }
    if (json['subscribe'] == null) {
      subscribe = null;
    } else {
          subscribe = json['subscribe'];
    }
    if (json['unsubscribe'] == null) {
      unsubscribe = null;
    } else {
          unsubscribe = json['unsubscribe'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (archive != null)
      json['archive'] = archive;
    if (name != null)
      json['name'] = name;
    if (otherArchives != null)
      json['otherArchives'] = otherArchives;
    if (post != null)
      json['post'] = post;
    if (subscribe != null)
      json['subscribe'] = subscribe;
    if (unsubscribe != null)
      json['unsubscribe'] = unsubscribe;
    return json;
  }

  static List<MavenPomMailingList> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomMailingList>() : json.map((value) => MavenPomMailingList.fromJson(value)).toList();
  }

  static Map<String, MavenPomMailingList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomMailingList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomMailingList.fromJson(value));
    }
    return map;
  }
}

