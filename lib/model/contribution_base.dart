part of azure_devops_sdk.api;

class ContributionBase {
  /* Description of the contribution/type */
  String description = null;
  /* Fully qualified identifier of the contribution/type */
  String id = null;
  /* VisibleTo can be used to restrict whom can reference a given contribution/type. This value should be a list of publishers or extensions access is restricted too.  Examples: \"ms\" - Means only the \"ms\" publisher can reference this. \"ms.vss-web\" - Means only the \"vss-web\" extension from the \"ms\" publisher can reference this. */
  List<String> visibleTo = [];
  ContributionBase();

  @override
  String toString() {
    return 'ContributionBase[description=$description, id=$id, visibleTo=$visibleTo, ]';
  }

  ContributionBase.fromJson(Map<String, dynamic> json) {
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

  static List<ContributionBase> listFromJson(List<dynamic> json) {
    return json == null ? List<ContributionBase>() : json.map((value) => ContributionBase.fromJson(value)).toList();
  }

  static Map<String, ContributionBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContributionBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContributionBase.fromJson(value));
    }
    return map;
  }
}

