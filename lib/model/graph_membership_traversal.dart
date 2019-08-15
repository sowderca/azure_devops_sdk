part of azure_devops_sdk.api;

class GraphMembershipTraversal {
  /* Reason why the subject could not be traversed completely */
  String incompletenessReason = null;
  /* When true, the subject is traversed completely */
  bool isComplete = null;
  /* The traversed subject descriptor */
  String subjectDescriptor = null;
  /* Subject descriptor ids of the traversed members */
  List<String> traversedSubjectIds = [];
  /* Subject descriptors of the traversed members */
  List<String> traversedSubjects = [];
  GraphMembershipTraversal();

  @override
  String toString() {
    return 'GraphMembershipTraversal[incompletenessReason=$incompletenessReason, isComplete=$isComplete, subjectDescriptor=$subjectDescriptor, traversedSubjectIds=$traversedSubjectIds, traversedSubjects=$traversedSubjects, ]';
  }

  GraphMembershipTraversal.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['incompletenessReason'] == null) {
      incompletenessReason = null;
    } else {
          incompletenessReason = json['incompletenessReason'];
    }
    if (json['isComplete'] == null) {
      isComplete = null;
    } else {
          isComplete = json['isComplete'];
    }
    if (json['subjectDescriptor'] == null) {
      subjectDescriptor = null;
    } else {
          subjectDescriptor = json['subjectDescriptor'];
    }
    if (json['traversedSubjectIds'] == null) {
      traversedSubjectIds = null;
    } else {
      traversedSubjectIds = (json['traversedSubjectIds'] as List).cast<String>();
    }
    if (json['traversedSubjects'] == null) {
      traversedSubjects = null;
    } else {
      traversedSubjects = (json['traversedSubjects'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (incompletenessReason != null)
      json['incompletenessReason'] = incompletenessReason;
    if (isComplete != null)
      json['isComplete'] = isComplete;
    if (subjectDescriptor != null)
      json['subjectDescriptor'] = subjectDescriptor;
    if (traversedSubjectIds != null)
      json['traversedSubjectIds'] = traversedSubjectIds;
    if (traversedSubjects != null)
      json['traversedSubjects'] = traversedSubjects;
    return json;
  }

  static List<GraphMembershipTraversal> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphMembershipTraversal>() : json.map((value) => GraphMembershipTraversal.fromJson(value)).toList();
  }

  static Map<String, GraphMembershipTraversal> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphMembershipTraversal>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphMembershipTraversal.fromJson(value));
    }
    return map;
  }
}

