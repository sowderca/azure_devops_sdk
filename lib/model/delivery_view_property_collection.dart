part of azure_devops_sdk.api;

class DeliveryViewPropertyCollection {
  
  CardSettings cardSettings = null;
  /* Field criteria */
  List<FilterClause> criteria = [];
  /* Markers. Will be missing/null if there are no markers. */
  List<Marker> markers = [];
  /* Team backlog mappings */
  List<TeamBacklogMapping> teamBacklogMappings = [];
  DeliveryViewPropertyCollection();

  @override
  String toString() {
    return 'DeliveryViewPropertyCollection[cardSettings=$cardSettings, criteria=$criteria, markers=$markers, teamBacklogMappings=$teamBacklogMappings, ]';
  }

  DeliveryViewPropertyCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cardSettings'] == null) {
      cardSettings = null;
    } else {
      cardSettings = CardSettings.fromJson(json['cardSettings']);
    }
    if (json['criteria'] == null) {
      criteria = null;
    } else {
      criteria = FilterClause.listFromJson(json['criteria']);
    }
    if (json['markers'] == null) {
      markers = null;
    } else {
      markers = Marker.listFromJson(json['markers']);
    }
    if (json['teamBacklogMappings'] == null) {
      teamBacklogMappings = null;
    } else {
      teamBacklogMappings = TeamBacklogMapping.listFromJson(json['teamBacklogMappings']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cardSettings != null)
      json['cardSettings'] = cardSettings;
    if (criteria != null)
      json['criteria'] = criteria;
    if (markers != null)
      json['markers'] = markers;
    if (teamBacklogMappings != null)
      json['teamBacklogMappings'] = teamBacklogMappings;
    return json;
  }

  static List<DeliveryViewPropertyCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<DeliveryViewPropertyCollection>() : json.map((value) => DeliveryViewPropertyCollection.fromJson(value)).toList();
  }

  static Map<String, DeliveryViewPropertyCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeliveryViewPropertyCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeliveryViewPropertyCollection.fromJson(value));
    }
    return map;
  }
}

