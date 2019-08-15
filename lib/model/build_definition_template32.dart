part of azure_devops_sdk.api;

class BuildDefinitionTemplate32 {
  
  bool canDelete = null;
  
  String category = null;
  
  String defaultHostedQueue = null;
  
  String description = null;
  
  Map<String, String> icons = {};
  
  String iconTaskId = null;
  
  String id = null;
  
  String name = null;
  
  BuildDefinition32 template = null;
  BuildDefinitionTemplate32();

  @override
  String toString() {
    return 'BuildDefinitionTemplate32[canDelete=$canDelete, category=$category, defaultHostedQueue=$defaultHostedQueue, description=$description, icons=$icons, iconTaskId=$iconTaskId, id=$id, name=$name, template=$template, ]';
  }

  BuildDefinitionTemplate32.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['canDelete'] == null) {
      canDelete = null;
    } else {
          canDelete = json['canDelete'];
    }
    if (json['category'] == null) {
      category = null;
    } else {
          category = json['category'];
    }
    if (json['defaultHostedQueue'] == null) {
      defaultHostedQueue = null;
    } else {
          defaultHostedQueue = json['defaultHostedQueue'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['icons'] == null) {
      icons = null;
    } else {
          icons = (json['icons'] as Map).cast<String, String>();
    }
    if (json['iconTaskId'] == null) {
      iconTaskId = null;
    } else {
          iconTaskId = json['iconTaskId'];
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
    if (json['template'] == null) {
      template = null;
    } else {
      template = BuildDefinition32.fromJson(json['template']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (canDelete != null)
      json['canDelete'] = canDelete;
    if (category != null)
      json['category'] = category;
    if (defaultHostedQueue != null)
      json['defaultHostedQueue'] = defaultHostedQueue;
    if (description != null)
      json['description'] = description;
    if (icons != null)
      json['icons'] = icons;
    if (iconTaskId != null)
      json['iconTaskId'] = iconTaskId;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (template != null)
      json['template'] = template;
    return json;
  }

  static List<BuildDefinitionTemplate32> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildDefinitionTemplate32>() : json.map((value) => BuildDefinitionTemplate32.fromJson(value)).toList();
  }

  static Map<String, BuildDefinitionTemplate32> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildDefinitionTemplate32>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildDefinitionTemplate32.fromJson(value));
    }
    return map;
  }
}

