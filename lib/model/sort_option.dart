part of azure_devops_sdk.api;

class SortOption {
  /* Field name on which sorting should be done. */
  String field = null;
  /* Order (ASC/DESC) in which the results should be sorted. */
  String sortOrder = null;
  SortOption();

  @override
  String toString() {
    return 'SortOption[field=$field, sortOrder=$sortOrder, ]';
  }

  SortOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['field'] == null) {
      field = null;
    } else {
          field = json['field'];
    }
    if (json['sortOrder'] == null) {
      sortOrder = null;
    } else {
          sortOrder = json['sortOrder'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (field != null)
      json['field'] = field;
    if (sortOrder != null)
      json['sortOrder'] = sortOrder;
    return json;
  }

  static List<SortOption> listFromJson(List<dynamic> json) {
    return json == null ? List<SortOption>() : json.map((value) => SortOption.fromJson(value)).toList();
  }

  static Map<String, SortOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SortOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SortOption.fromJson(value));
    }
    return map;
  }
}

