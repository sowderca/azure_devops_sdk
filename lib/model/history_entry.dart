part of azure_devops_sdk.api;

class HistoryEntry {
  
  ChangeList changeList = null;
  /* The change made to the item from this change list (only relevant for File history, not folders) */
  String itemChangeType = null;
  //enum itemChangeTypeEnum {  none,  add,  edit,  encoding,  rename,  delete,  undelete,  branch,  merge,  lock,  rollback,  sourceRename,  targetRename,  property,  all,  };{
  /* The path of the item at this point in history (only relevant for File history, not folders) */
  String serverItem = null;
  HistoryEntry();

  @override
  String toString() {
    return 'HistoryEntry[changeList=$changeList, itemChangeType=$itemChangeType, serverItem=$serverItem, ]';
  }

  HistoryEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changeList'] == null) {
      changeList = null;
    } else {
      changeList = ChangeList.fromJson(json['changeList']);
    }
    if (json['itemChangeType'] == null) {
      itemChangeType = null;
    } else {
          itemChangeType = json['itemChangeType'];
    }
    if (json['serverItem'] == null) {
      serverItem = null;
    } else {
          serverItem = json['serverItem'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changeList != null)
      json['changeList'] = changeList;
    if (itemChangeType != null)
      json['itemChangeType'] = itemChangeType;
    if (serverItem != null)
      json['serverItem'] = serverItem;
    return json;
  }

  static List<HistoryEntry> listFromJson(List<dynamic> json) {
    return json == null ? List<HistoryEntry>() : json.map((value) => HistoryEntry.fromJson(value)).toList();
  }

  static Map<String, HistoryEntry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HistoryEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HistoryEntry.fromJson(value));
    }
    return map;
  }
}

