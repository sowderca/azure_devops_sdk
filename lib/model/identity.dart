part of azure_devops_sdk.api;

class Identity {
  /* The custom display name for the identity (if any). Setting this property to an empty string will clear the existing custom display name. Setting this property to null will not affect the existing persisted value (since null values do not get sent over the wire or to the database) */
  String customDisplayName = null;
  
  IdentityDescriptor descriptor = null;
  
  String id = null;
  
  bool isActive = null;
  
  bool isContainer = null;
  
  String masterId = null;
  
  List<String> memberIds = [];
  
  List<IdentityDescriptor> memberOf = [];
  
  List<IdentityDescriptor> members = [];
  
  int metaTypeId = null;
  
  PropertiesCollection properties = null;
  /* The display name for the identity as specified by the source identity provider. */
  String providerDisplayName = null;
  
  int resourceVersion = null;
  
  String socialDescriptor = null;
  
  String subjectDescriptor = null;
  
  int uniqueUserId = null;
  Identity();

  @override
  String toString() {
    return 'Identity[customDisplayName=$customDisplayName, descriptor=$descriptor, id=$id, isActive=$isActive, isContainer=$isContainer, masterId=$masterId, memberIds=$memberIds, memberOf=$memberOf, members=$members, metaTypeId=$metaTypeId, properties=$properties, providerDisplayName=$providerDisplayName, resourceVersion=$resourceVersion, socialDescriptor=$socialDescriptor, subjectDescriptor=$subjectDescriptor, uniqueUserId=$uniqueUserId, ]';
  }

  Identity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['customDisplayName'] == null) {
      customDisplayName = null;
    } else {
          customDisplayName = json['customDisplayName'];
    }
    if (json['descriptor'] == null) {
      descriptor = null;
    } else {
      descriptor = IdentityDescriptor.fromJson(json['descriptor']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isActive'] == null) {
      isActive = null;
    } else {
          isActive = json['isActive'];
    }
    if (json['isContainer'] == null) {
      isContainer = null;
    } else {
          isContainer = json['isContainer'];
    }
    if (json['masterId'] == null) {
      masterId = null;
    } else {
          masterId = json['masterId'];
    }
    if (json['memberIds'] == null) {
      memberIds = null;
    } else {
      memberIds = (json['memberIds'] as List).cast<String>();
    }
    if (json['memberOf'] == null) {
      memberOf = null;
    } else {
      memberOf = IdentityDescriptor.listFromJson(json['memberOf']);
    }
    if (json['members'] == null) {
      members = null;
    } else {
      members = IdentityDescriptor.listFromJson(json['members']);
    }
    if (json['metaTypeId'] == null) {
      metaTypeId = null;
    } else {
          metaTypeId = json['metaTypeId'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = PropertiesCollection.fromJson(json['properties']);
    }
    if (json['providerDisplayName'] == null) {
      providerDisplayName = null;
    } else {
          providerDisplayName = json['providerDisplayName'];
    }
    if (json['resourceVersion'] == null) {
      resourceVersion = null;
    } else {
          resourceVersion = json['resourceVersion'];
    }
    if (json['socialDescriptor'] == null) {
      socialDescriptor = null;
    } else {
          socialDescriptor = json['socialDescriptor'];
    }
    if (json['subjectDescriptor'] == null) {
      subjectDescriptor = null;
    } else {
          subjectDescriptor = json['subjectDescriptor'];
    }
    if (json['uniqueUserId'] == null) {
      uniqueUserId = null;
    } else {
          uniqueUserId = json['uniqueUserId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (customDisplayName != null)
      json['customDisplayName'] = customDisplayName;
    if (descriptor != null)
      json['descriptor'] = descriptor;
    if (id != null)
      json['id'] = id;
    if (isActive != null)
      json['isActive'] = isActive;
    if (isContainer != null)
      json['isContainer'] = isContainer;
    if (masterId != null)
      json['masterId'] = masterId;
    if (memberIds != null)
      json['memberIds'] = memberIds;
    if (memberOf != null)
      json['memberOf'] = memberOf;
    if (members != null)
      json['members'] = members;
    if (metaTypeId != null)
      json['metaTypeId'] = metaTypeId;
    if (properties != null)
      json['properties'] = properties;
    if (providerDisplayName != null)
      json['providerDisplayName'] = providerDisplayName;
    if (resourceVersion != null)
      json['resourceVersion'] = resourceVersion;
    if (socialDescriptor != null)
      json['socialDescriptor'] = socialDescriptor;
    if (subjectDescriptor != null)
      json['subjectDescriptor'] = subjectDescriptor;
    if (uniqueUserId != null)
      json['uniqueUserId'] = uniqueUserId;
    return json;
  }

  static List<Identity> listFromJson(List<dynamic> json) {
    return json == null ? List<Identity>() : json.map((value) => Identity.fromJson(value)).toList();
  }

  static Map<String, Identity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Identity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Identity.fromJson(value));
    }
    return map;
  }
}

