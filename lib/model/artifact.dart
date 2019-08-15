part of azure_devops_sdk.api;

class Artifact {
  /* Gets or sets alias. */
  String alias = null;
  /* Gets or sets definition reference. e.g. {\"project\":{\"id\":\"fed755ea-49c5-4399-acea-fd5b5aa90a6c\",\"name\":\"myProject\"},\"definition\":{\"id\":\"1\",\"name\":\"mybuildDefinition\"},\"connection\":{\"id\":\"1\",\"name\":\"myConnection\"}}. */
  Map<String, ArtifactSourceReference> definitionReference = {};
  /* Indicates whether artifact is primary or not. */
  bool isPrimary = null;
  /* Indicates whether artifact is retained by release or not. */
  bool isRetained = null;
  /* Gets or sets type. It can have value as 'Build', 'Jenkins', 'GitHub', 'Nuget', 'Team Build (external)', 'ExternalTFSBuild', 'Git', 'TFVC', 'ExternalTfsXamlBuild'. */
  String type = null;
  Artifact();

  @override
  String toString() {
    return 'Artifact[alias=$alias, definitionReference=$definitionReference, isPrimary=$isPrimary, isRetained=$isRetained, type=$type, ]';
  }

  Artifact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['alias'] == null) {
      alias = null;
    } else {
          alias = json['alias'];
    }
    if (json['definitionReference'] == null) {
      definitionReference = null;
    } else {
      definitionReference = ArtifactSourceReference.mapFromJson(json['definitionReference']);
    }
    if (json['isPrimary'] == null) {
      isPrimary = null;
    } else {
          isPrimary = json['isPrimary'];
    }
    if (json['isRetained'] == null) {
      isRetained = null;
    } else {
          isRetained = json['isRetained'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (alias != null)
      json['alias'] = alias;
    if (definitionReference != null)
      json['definitionReference'] = definitionReference;
    if (isPrimary != null)
      json['isPrimary'] = isPrimary;
    if (isRetained != null)
      json['isRetained'] = isRetained;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<Artifact> listFromJson(List<dynamic> json) {
    return json == null ? List<Artifact>() : json.map((value) => Artifact.fromJson(value)).toList();
  }

  static Map<String, Artifact> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Artifact>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Artifact.fromJson(value));
    }
    return map;
  }
}

