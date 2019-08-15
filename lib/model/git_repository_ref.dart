part of azure_devops_sdk.api;

class GitRepositoryRef {
  
  TeamProjectCollectionReference collection = null;
  
  String id = null;
  /* True if the repository was created as a fork */
  bool isFork = null;
  
  String name = null;
  
  TeamProjectReference project = null;
  
  String remoteUrl = null;
  
  String sshUrl = null;
  
  String url = null;
  GitRepositoryRef();

  @override
  String toString() {
    return 'GitRepositoryRef[collection=$collection, id=$id, isFork=$isFork, name=$name, project=$project, remoteUrl=$remoteUrl, sshUrl=$sshUrl, url=$url, ]';
  }

  GitRepositoryRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['collection'] == null) {
      collection = null;
    } else {
      collection = TeamProjectCollectionReference.fromJson(json['collection']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isFork'] == null) {
      isFork = null;
    } else {
          isFork = json['isFork'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = TeamProjectReference.fromJson(json['project']);
    }
    if (json['remoteUrl'] == null) {
      remoteUrl = null;
    } else {
          remoteUrl = json['remoteUrl'];
    }
    if (json['sshUrl'] == null) {
      sshUrl = null;
    } else {
          sshUrl = json['sshUrl'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (collection != null)
      json['collection'] = collection;
    if (id != null)
      json['id'] = id;
    if (isFork != null)
      json['isFork'] = isFork;
    if (name != null)
      json['name'] = name;
    if (project != null)
      json['project'] = project;
    if (remoteUrl != null)
      json['remoteUrl'] = remoteUrl;
    if (sshUrl != null)
      json['sshUrl'] = sshUrl;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitRepositoryRef> listFromJson(List<dynamic> json) {
    return json == null ? List<GitRepositoryRef>() : json.map((value) => GitRepositoryRef.fromJson(value)).toList();
  }

  static Map<String, GitRepositoryRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitRepositoryRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitRepositoryRef.fromJson(value));
    }
    return map;
  }
}

