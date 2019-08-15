part of azure_devops_sdk.api;

class AgentPoolQueue {
  
  ReferenceLinks links = null;
  /* The ID of the queue. */
  int id = null;
  /* The name of the queue. */
  String name = null;
  
  TaskAgentPoolReference pool = null;
  /* The full http link to the resource. */
  String url = null;
  AgentPoolQueue();

  @override
  String toString() {
    return 'AgentPoolQueue[links=$links, id=$id, name=$name, pool=$pool, url=$url, ]';
  }

  AgentPoolQueue.fromJson(Map<String, dynamic> json) {
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
    if (json['pool'] == null) {
      pool = null;
    } else {
      pool = TaskAgentPoolReference.fromJson(json['pool']);
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
    if (name != null)
      json['name'] = name;
    if (pool != null)
      json['pool'] = pool;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<AgentPoolQueue> listFromJson(List<dynamic> json) {
    return json == null ? List<AgentPoolQueue>() : json.map((value) => AgentPoolQueue.fromJson(value)).toList();
  }

  static Map<String, AgentPoolQueue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AgentPoolQueue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AgentPoolQueue.fromJson(value));
    }
    return map;
  }
}

