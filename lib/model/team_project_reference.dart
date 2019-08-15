part of azure_devops_sdk.api;

class TeamProjectReference {
  /* Project abbreviation. */
  String abbreviation = null;
  /* Url to default team identity image. */
  String defaultTeamImageUrl = null;
  /* The project's description (if any). */
  String description = null;
  /* Project identifier. */
  String id = null;
  /* Project last update time. */
  DateTime lastUpdateTime = null;
  /* Project name. */
  String name = null;
  /* Project revision. */
  int revision = null;
  /* Project state. */
  String state = null;
  //enum stateEnum {  deleting,  new,  wellFormed,  createPending,  all,  unchanged,  deleted,  };{
  /* Url to the full version of the object. */
  String url = null;
  /* Project visibility. */
  String visibility = null;
  //enum visibilityEnum {  private,  public,  };{
  TeamProjectReference();

  @override
  String toString() {
    return 'TeamProjectReference[abbreviation=$abbreviation, defaultTeamImageUrl=$defaultTeamImageUrl, description=$description, id=$id, lastUpdateTime=$lastUpdateTime, name=$name, revision=$revision, state=$state, url=$url, visibility=$visibility, ]';
  }

  TeamProjectReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['abbreviation'] == null) {
      abbreviation = null;
    } else {
          abbreviation = json['abbreviation'];
    }
    if (json['defaultTeamImageUrl'] == null) {
      defaultTeamImageUrl = null;
    } else {
          defaultTeamImageUrl = json['defaultTeamImageUrl'];
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
    if (json['lastUpdateTime'] == null) {
      lastUpdateTime = null;
    } else {
      lastUpdateTime = DateTime.parse(json['lastUpdateTime']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['visibility'] == null) {
      visibility = null;
    } else {
          visibility = json['visibility'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (abbreviation != null)
      json['abbreviation'] = abbreviation;
    if (defaultTeamImageUrl != null)
      json['defaultTeamImageUrl'] = defaultTeamImageUrl;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (lastUpdateTime != null)
      json['lastUpdateTime'] = lastUpdateTime == null ? null : lastUpdateTime.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (revision != null)
      json['revision'] = revision;
    if (state != null)
      json['state'] = state;
    if (url != null)
      json['url'] = url;
    if (visibility != null)
      json['visibility'] = visibility;
    return json;
  }

  static List<TeamProjectReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamProjectReference>() : json.map((value) => TeamProjectReference.fromJson(value)).toList();
  }

  static Map<String, TeamProjectReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamProjectReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamProjectReference.fromJson(value));
    }
    return map;
  }
}

