part of azure_devops_sdk.api;

class LineDiffBlock {
  /* Type of change that was made to the block. */
  String changeType = null;
  //enum changeTypeEnum {  none,  add,  delete,  edit,  };{
  /* Line number where this block starts in modified file. */
  int modifiedLineNumberStart = null;
  /* Count of lines in this block in modified file. */
  int modifiedLinesCount = null;
  /* Line number where this block starts in original file. */
  int originalLineNumberStart = null;
  /* Count of lines in this block in original file. */
  int originalLinesCount = null;
  LineDiffBlock();

  @override
  String toString() {
    return 'LineDiffBlock[changeType=$changeType, modifiedLineNumberStart=$modifiedLineNumberStart, modifiedLinesCount=$modifiedLinesCount, originalLineNumberStart=$originalLineNumberStart, originalLinesCount=$originalLinesCount, ]';
  }

  LineDiffBlock.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['changeType'] == null) {
      changeType = null;
    } else {
          changeType = json['changeType'];
    }
    if (json['modifiedLineNumberStart'] == null) {
      modifiedLineNumberStart = null;
    } else {
          modifiedLineNumberStart = json['modifiedLineNumberStart'];
    }
    if (json['modifiedLinesCount'] == null) {
      modifiedLinesCount = null;
    } else {
          modifiedLinesCount = json['modifiedLinesCount'];
    }
    if (json['originalLineNumberStart'] == null) {
      originalLineNumberStart = null;
    } else {
          originalLineNumberStart = json['originalLineNumberStart'];
    }
    if (json['originalLinesCount'] == null) {
      originalLinesCount = null;
    } else {
          originalLinesCount = json['originalLinesCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (changeType != null)
      json['changeType'] = changeType;
    if (modifiedLineNumberStart != null)
      json['modifiedLineNumberStart'] = modifiedLineNumberStart;
    if (modifiedLinesCount != null)
      json['modifiedLinesCount'] = modifiedLinesCount;
    if (originalLineNumberStart != null)
      json['originalLineNumberStart'] = originalLineNumberStart;
    if (originalLinesCount != null)
      json['originalLinesCount'] = originalLinesCount;
    return json;
  }

  static List<LineDiffBlock> listFromJson(List<dynamic> json) {
    return json == null ? List<LineDiffBlock>() : json.map((value) => LineDiffBlock.fromJson(value)).toList();
  }

  static Map<String, LineDiffBlock> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LineDiffBlock>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LineDiffBlock.fromJson(value));
    }
    return map;
  }
}

