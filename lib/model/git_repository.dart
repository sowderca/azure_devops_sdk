part of azure_devops_sdk.api;

class GitRepository {
  
  ReferenceLinks links = null;
  
  String defaultBranch = null;
  
  String id = null;
  /* True if the repository was created as a fork */
  bool isFork = null;
  
  String name = null;
  
  GitRepositoryRef parentRepository = null;
  
  TeamProjectReference project = null;
  
  String remoteUrl = null;
  /* Compressed size (bytes) of the repository. */
  int size = null;
  
  String sshUrl = null;
  
  String url = null;
  
  List<String> validRemoteUrls = [];
  
  String webUrl = null;
  GitRepository();

  @override
  String toString() {
    return 'GitRepository[links=$links, defaultBranch=$defaultBranch, id=$id, isFork=$isFork, name=$name, parentRepository=$parentRepository, project=$project, remoteUrl=$remoteUrl, size=$size, sshUrl=$sshUrl, url=$url, validRemoteUrls=$validRemoteUrls, webUrl=$webUrl, ]';
  }

  GitRepository.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['defaultBranch'] == null) {
      defaultBranch = null;
    } else {
          defaultBranch = json['defaultBranch'];
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
    if (json['parentRepository'] == null) {
      parentRepository = null;
    } else {
      parentRepository = GitRepositoryRef.fromJson(json['parentRepository']);
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
    if (json['size'] == null) {
      size = null;
    } else {
          size = json['size'];
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
    if (json['validRemoteUrls'] == null) {
      validRemoteUrls = null;
    } else {
      validRemoteUrls = (json['validRemoteUrls'] as List).cast<String>();
    }
    if (json['webUrl'] == null) {
      webUrl = null;
    } else {
          webUrl = json['webUrl'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (defaultBranch != null)
      json['defaultBranch'] = defaultBranch;
    if (id != null)
      json['id'] = id;
    if (isFork != null)
      json['isFork'] = isFork;
    if (name != null)
      json['name'] = name;
    if (parentRepository != null)
      json['parentRepository'] = parentRepository;
    if (project != null)
      json['project'] = project;
    if (remoteUrl != null)
      json['remoteUrl'] = remoteUrl;
    if (size != null)
      json['size'] = size;
    if (sshUrl != null)
      json['sshUrl'] = sshUrl;
    if (url != null)
      json['url'] = url;
    if (validRemoteUrls != null)
      json['validRemoteUrls'] = validRemoteUrls;
    if (webUrl != null)
      json['webUrl'] = webUrl;
    return json;
  }

  static List<GitRepository> listFromJson(List<dynamic> json) {
    return json == null ? List<GitRepository>() : json.map((value) => GitRepository.fromJson(value)).toList();
  }

  static Map<String, GitRepository> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitRepository>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitRepository.fromJson(value));
    }
    return map;
  }
}

