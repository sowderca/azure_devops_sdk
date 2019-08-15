part of azure_devops_sdk.api;

class DebugEntryCreateBatch {
  /* Defines what to do when a debug entry in the batch already exists. */
  String createBehavior = null;
  //enum createBehaviorEnum {  throwIfExists,  skipIfExists,  overwriteIfExists,  };{
  /* The debug entries. */
  List<DebugEntry> debugEntries = [];
  DebugEntryCreateBatch();

  @override
  String toString() {
    return 'DebugEntryCreateBatch[createBehavior=$createBehavior, debugEntries=$debugEntries, ]';
  }

  DebugEntryCreateBatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createBehavior'] == null) {
      createBehavior = null;
    } else {
          createBehavior = json['createBehavior'];
    }
    if (json['debugEntries'] == null) {
      debugEntries = null;
    } else {
      debugEntries = DebugEntry.listFromJson(json['debugEntries']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createBehavior != null)
      json['createBehavior'] = createBehavior;
    if (debugEntries != null)
      json['debugEntries'] = debugEntries;
    return json;
  }

  static List<DebugEntryCreateBatch> listFromJson(List<dynamic> json) {
    return json == null ? List<DebugEntryCreateBatch>() : json.map((value) => DebugEntryCreateBatch.fromJson(value)).toList();
  }

  static Map<String, DebugEntryCreateBatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DebugEntryCreateBatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DebugEntryCreateBatch.fromJson(value));
    }
    return map;
  }
}

