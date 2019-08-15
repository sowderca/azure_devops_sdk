part of azure_devops_sdk.api;

class ContributionConstraint {
  /* An optional property that can be specified to group constraints together. All constraints within a group are AND'd together (all must be evaluate to True in order for the contribution to be included). Different groups of constraints are OR'd (only one group needs to evaluate to True for the contribution to be included). */
  int group = null;
  /* Fully qualified identifier of a shared constraint */
  String id = null;
  /* If true, negate the result of the filter (include the contribution if the applied filter returns false instead of true) */
  bool inverse = null;
  /* Name of the IContributionFilter plugin */
  String name = null;
  
  JObject properties = null;
  /* Constraints can be optionally be applied to one or more of the relationships defined in the contribution. If no relationships are defined then all relationships are associated with the constraint. This means the default behaviour will elimiate the contribution from the tree completely if the constraint is applied. */
  List<String> relationships = [];
  ContributionConstraint();

  @override
  String toString() {
    return 'ContributionConstraint[group=$group, id=$id, inverse=$inverse, name=$name, properties=$properties, relationships=$relationships, ]';
  }

  ContributionConstraint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['group'] == null) {
      group = null;
    } else {
          group = json['group'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['inverse'] == null) {
      inverse = null;
    } else {
          inverse = json['inverse'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = JObject.fromJson(json['properties']);
    }
    if (json['relationships'] == null) {
      relationships = null;
    } else {
      relationships = (json['relationships'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (group != null)
      json['group'] = group;
    if (id != null)
      json['id'] = id;
    if (inverse != null)
      json['inverse'] = inverse;
    if (name != null)
      json['name'] = name;
    if (properties != null)
      json['properties'] = properties;
    if (relationships != null)
      json['relationships'] = relationships;
    return json;
  }

  static List<ContributionConstraint> listFromJson(List<dynamic> json) {
    return json == null ? List<ContributionConstraint>() : json.map((value) => ContributionConstraint.fromJson(value)).toList();
  }

  static Map<String, ContributionConstraint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContributionConstraint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContributionConstraint.fromJson(value));
    }
    return map;
  }
}

