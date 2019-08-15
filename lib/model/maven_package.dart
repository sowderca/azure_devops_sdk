part of azure_devops_sdk.api;

class MavenPackage {
  
  String artifactId = null;
  
  ReferenceLink artifactIndex = null;
  
  ReferenceLink artifactMetadata = null;
  
  DateTime deletedDate = null;
  
  ReferenceLinks files = null;
  
  String groupId = null;
  
  MavenPomMetadata pom = null;
  
  ReferenceLink requestedFile = null;
  
  ReferenceLink snapshotMetadata = null;
  
  String version = null;
  
  ReferenceLinks versions = null;
  
  ReferenceLink versionsIndex = null;
  MavenPackage();

  @override
  String toString() {
    return 'MavenPackage[artifactId=$artifactId, artifactIndex=$artifactIndex, artifactMetadata=$artifactMetadata, deletedDate=$deletedDate, files=$files, groupId=$groupId, pom=$pom, requestedFile=$requestedFile, snapshotMetadata=$snapshotMetadata, version=$version, versions=$versions, versionsIndex=$versionsIndex, ]';
  }

  MavenPackage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactId'] == null) {
      artifactId = null;
    } else {
          artifactId = json['artifactId'];
    }
    if (json['artifactIndex'] == null) {
      artifactIndex = null;
    } else {
      artifactIndex = ReferenceLink.fromJson(json['artifactIndex']);
    }
    if (json['artifactMetadata'] == null) {
      artifactMetadata = null;
    } else {
      artifactMetadata = ReferenceLink.fromJson(json['artifactMetadata']);
    }
    if (json['deletedDate'] == null) {
      deletedDate = null;
    } else {
      deletedDate = DateTime.parse(json['deletedDate']);
    }
    if (json['files'] == null) {
      files = null;
    } else {
      files = ReferenceLinks.fromJson(json['files']);
    }
    if (json['groupId'] == null) {
      groupId = null;
    } else {
          groupId = json['groupId'];
    }
    if (json['pom'] == null) {
      pom = null;
    } else {
      pom = MavenPomMetadata.fromJson(json['pom']);
    }
    if (json['requestedFile'] == null) {
      requestedFile = null;
    } else {
      requestedFile = ReferenceLink.fromJson(json['requestedFile']);
    }
    if (json['snapshotMetadata'] == null) {
      snapshotMetadata = null;
    } else {
      snapshotMetadata = ReferenceLink.fromJson(json['snapshotMetadata']);
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
    if (json['versions'] == null) {
      versions = null;
    } else {
      versions = ReferenceLinks.fromJson(json['versions']);
    }
    if (json['versionsIndex'] == null) {
      versionsIndex = null;
    } else {
      versionsIndex = ReferenceLink.fromJson(json['versionsIndex']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactId != null)
      json['artifactId'] = artifactId;
    if (artifactIndex != null)
      json['artifactIndex'] = artifactIndex;
    if (artifactMetadata != null)
      json['artifactMetadata'] = artifactMetadata;
    if (deletedDate != null)
      json['deletedDate'] = deletedDate == null ? null : deletedDate.toUtc().toIso8601String();
    if (files != null)
      json['files'] = files;
    if (groupId != null)
      json['groupId'] = groupId;
    if (pom != null)
      json['pom'] = pom;
    if (requestedFile != null)
      json['requestedFile'] = requestedFile;
    if (snapshotMetadata != null)
      json['snapshotMetadata'] = snapshotMetadata;
    if (version != null)
      json['version'] = version;
    if (versions != null)
      json['versions'] = versions;
    if (versionsIndex != null)
      json['versionsIndex'] = versionsIndex;
    return json;
  }

  static List<MavenPackage> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPackage>() : json.map((value) => MavenPackage.fromJson(value)).toList();
  }

  static Map<String, MavenPackage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPackage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPackage.fromJson(value));
    }
    return map;
  }
}

