part of azure_devops_sdk.api;

class TfvcLabelRef {
  
  ReferenceLinks links = null;
  
  String description = null;
  
  int id = null;
  
  String labelScope = null;
  
  DateTime modifiedDate = null;
  
  String name = null;
  
  IdentityRef owner = null;
  
  String url = null;
  TfvcLabelRef();

  @override
  String toString() {
    return 'TfvcLabelRef[links=$links, description=$description, id=$id, labelScope=$labelScope, modifiedDate=$modifiedDate, name=$name, owner=$owner, url=$url, ]';
  }

  TfvcLabelRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['labelScope'] == null) {
      labelScope = null;
    } else {
          labelScope = json['labelScope'];
    }
    if (json['modifiedDate'] == null) {
      modifiedDate = null;
    } else {
      modifiedDate = DateTime.parse(json['modifiedDate']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = IdentityRef.fromJson(json['owner']);
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
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (labelScope != null)
      json['labelScope'] = labelScope;
    if (modifiedDate != null)
      json['modifiedDate'] = modifiedDate == null ? null : modifiedDate.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (owner != null)
      json['owner'] = owner;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TfvcLabelRef> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcLabelRef>() : json.map((value) => TfvcLabelRef.fromJson(value)).toList();
  }

  static Map<String, TfvcLabelRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcLabelRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcLabelRef.fromJson(value));
    }
    return map;
  }
}

