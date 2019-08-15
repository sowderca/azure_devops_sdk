part of azure_devops_sdk.api;

class CommentTrackingCriteria {
  /* The iteration of the file on the left side of the diff that the thread will be tracked to. Threads were tracked if this is greater than 0. */
  int firstComparingIteration = null;
  /* Original filepath the thread was created on before tracking. This will be different than the current thread filepath if the file in question was renamed in a later iteration. */
  String origFilePath = null;
  
  CommentPosition origLeftFileEnd = null;
  
  CommentPosition origLeftFileStart = null;
  
  CommentPosition origRightFileEnd = null;
  
  CommentPosition origRightFileStart = null;
  /* The iteration of the file on the right side of the diff that the thread will be tracked to. Threads were tracked if this is greater than 0. */
  int secondComparingIteration = null;
  CommentTrackingCriteria();

  @override
  String toString() {
    return 'CommentTrackingCriteria[firstComparingIteration=$firstComparingIteration, origFilePath=$origFilePath, origLeftFileEnd=$origLeftFileEnd, origLeftFileStart=$origLeftFileStart, origRightFileEnd=$origRightFileEnd, origRightFileStart=$origRightFileStart, secondComparingIteration=$secondComparingIteration, ]';
  }

  CommentTrackingCriteria.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['firstComparingIteration'] == null) {
      firstComparingIteration = null;
    } else {
          firstComparingIteration = json['firstComparingIteration'];
    }
    if (json['origFilePath'] == null) {
      origFilePath = null;
    } else {
          origFilePath = json['origFilePath'];
    }
    if (json['origLeftFileEnd'] == null) {
      origLeftFileEnd = null;
    } else {
      origLeftFileEnd = CommentPosition.fromJson(json['origLeftFileEnd']);
    }
    if (json['origLeftFileStart'] == null) {
      origLeftFileStart = null;
    } else {
      origLeftFileStart = CommentPosition.fromJson(json['origLeftFileStart']);
    }
    if (json['origRightFileEnd'] == null) {
      origRightFileEnd = null;
    } else {
      origRightFileEnd = CommentPosition.fromJson(json['origRightFileEnd']);
    }
    if (json['origRightFileStart'] == null) {
      origRightFileStart = null;
    } else {
      origRightFileStart = CommentPosition.fromJson(json['origRightFileStart']);
    }
    if (json['secondComparingIteration'] == null) {
      secondComparingIteration = null;
    } else {
          secondComparingIteration = json['secondComparingIteration'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (firstComparingIteration != null)
      json['firstComparingIteration'] = firstComparingIteration;
    if (origFilePath != null)
      json['origFilePath'] = origFilePath;
    if (origLeftFileEnd != null)
      json['origLeftFileEnd'] = origLeftFileEnd;
    if (origLeftFileStart != null)
      json['origLeftFileStart'] = origLeftFileStart;
    if (origRightFileEnd != null)
      json['origRightFileEnd'] = origRightFileEnd;
    if (origRightFileStart != null)
      json['origRightFileStart'] = origRightFileStart;
    if (secondComparingIteration != null)
      json['secondComparingIteration'] = secondComparingIteration;
    return json;
  }

  static List<CommentTrackingCriteria> listFromJson(List<dynamic> json) {
    return json == null ? List<CommentTrackingCriteria>() : json.map((value) => CommentTrackingCriteria.fromJson(value)).toList();
  }

  static Map<String, CommentTrackingCriteria> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentTrackingCriteria>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommentTrackingCriteria.fromJson(value));
    }
    return map;
  }
}

