part of azure_devops_sdk.api;

class ContributionType {
  /* Description of the contribution/type */
  String description = null;
  /* Fully qualified identifier of the contribution/type */
  String id = null;
  /* VisibleTo can be used to restrict whom can reference a given contribution/type. This value should be a list of publishers or extensions access is restricted too.  Examples: \"ms\" - Means only the \"ms\" publisher can reference this. \"ms.vss-web\" - Means only the \"vss-web\" extension from the \"ms\" publisher can reference this. */
  List<String> visibleTo = [];
  ContributionType();

  @override
  String toString() {
    return 'ContributionType[description=$description, id=$id, visibleTo=$visibleTo, ]';
  }

  ContributionType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['visibleTo'] == null) {
      visibleTo = null;
    } else {
      visibleTo = (json['visibleTo'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (visibleTo != null)
      json['visibleTo'] = visibleTo;
    return json;
  }

  static List<ContributionType> listFromJson(List<dynamic> json) {
    return json == null ? List<ContributionType>() : json.map((value) => ContributionType.fromJson(value)).toList();
  }

  static Map<String, ContributionType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContributionType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContributionType.fromJson(value));
    }
    return map;
  }
}

