part of azure_devops_sdk.api;

class Profile {
  
  AttributesContainer applicationContainer = null;
  /* The core attributes of this profile. */
  Map<String, CoreProfileAttribute> coreAttributes = {};
  /* The maximum revision number of any attribute. */
  int coreRevision = null;
  /* The unique identifier of the profile. */
  String id = null;
  /* The current state of the profile. */
  String profileState = null;
  //enum profileStateEnum {  custom,  customReadOnly,  readOnly,  };{
  /* The maximum revision number of any attribute. */
  int revision = null;
  /* The time at which this profile was last changed. */
  DateTime timeStamp = null;
  Profile();

  @override
  String toString() {
    return 'Profile[applicationContainer=$applicationContainer, coreAttributes=$coreAttributes, coreRevision=$coreRevision, id=$id, profileState=$profileState, revision=$revision, timeStamp=$timeStamp, ]';
  }

  Profile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['applicationContainer'] == null) {
      applicationContainer = null;
    } else {
      applicationContainer = AttributesContainer.fromJson(json['applicationContainer']);
    }
    if (json['coreAttributes'] == null) {
      coreAttributes = null;
    } else {
      coreAttributes = CoreProfileAttribute.mapFromJson(json['coreAttributes']);
    }
    if (json['coreRevision'] == null) {
      coreRevision = null;
    } else {
          coreRevision = json['coreRevision'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['profileState'] == null) {
      profileState = null;
    } else {
          profileState = json['profileState'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['timeStamp'] == null) {
      timeStamp = null;
    } else {
      timeStamp = DateTime.parse(json['timeStamp']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (applicationContainer != null)
      json['applicationContainer'] = applicationContainer;
    if (coreAttributes != null)
      json['coreAttributes'] = coreAttributes;
    if (coreRevision != null)
      json['coreRevision'] = coreRevision;
    if (id != null)
      json['id'] = id;
    if (profileState != null)
      json['profileState'] = profileState;
    if (revision != null)
      json['revision'] = revision;
    if (timeStamp != null)
      json['timeStamp'] = timeStamp == null ? null : timeStamp.toUtc().toIso8601String();
    return json;
  }

  static List<Profile> listFromJson(List<dynamic> json) {
    return json == null ? List<Profile>() : json.map((value) => Profile.fromJson(value)).toList();
  }

  static Map<String, Profile> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Profile>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Profile.fromJson(value));
    }
    return map;
  }
}

