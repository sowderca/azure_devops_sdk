part of azure_devops_sdk.api;

class QueuedReleaseData {
  /* Project ID of the release. */
  String projectId = null;
  /* Release queue position. */
  int queuePosition = null;
  /* Queued release ID. */
  int releaseId = null;
  QueuedReleaseData();

  @override
  String toString() {
    return 'QueuedReleaseData[projectId=$projectId, queuePosition=$queuePosition, releaseId=$releaseId, ]';
  }

  QueuedReleaseData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['queuePosition'] == null) {
      queuePosition = null;
    } else {
          queuePosition = json['queuePosition'];
    }
    if (json['releaseId'] == null) {
      releaseId = null;
    } else {
          releaseId = json['releaseId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (projectId != null)
      json['projectId'] = projectId;
    if (queuePosition != null)
      json['queuePosition'] = queuePosition;
    if (releaseId != null)
      json['releaseId'] = releaseId;
    return json;
  }

  static List<QueuedReleaseData> listFromJson(List<dynamic> json) {
    return json == null ? List<QueuedReleaseData>() : json.map((value) => QueuedReleaseData.fromJson(value)).toList();
  }

  static Map<String, QueuedReleaseData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueuedReleaseData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueuedReleaseData.fromJson(value));
    }
    return map;
  }
}

