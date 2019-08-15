part of azure_devops_sdk.api;

class SvnMappingDetails {
  /* The depth. */
  int depth = null;
  /* Indicates whether to ignore externals. */
  bool ignoreExternals = null;
  /* The local path. */
  String localPath = null;
  /* The revision. */
  String revision = null;
  /* The server path. */
  String serverPath = null;
  SvnMappingDetails();

  @override
  String toString() {
    return 'SvnMappingDetails[depth=$depth, ignoreExternals=$ignoreExternals, localPath=$localPath, revision=$revision, serverPath=$serverPath, ]';
  }

  SvnMappingDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['depth'] == null) {
      depth = null;
    } else {
          depth = json['depth'];
    }
    if (json['ignoreExternals'] == null) {
      ignoreExternals = null;
    } else {
          ignoreExternals = json['ignoreExternals'];
    }
    if (json['localPath'] == null) {
      localPath = null;
    } else {
          localPath = json['localPath'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['serverPath'] == null) {
      serverPath = null;
    } else {
          serverPath = json['serverPath'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (depth != null)
      json['depth'] = depth;
    if (ignoreExternals != null)
      json['ignoreExternals'] = ignoreExternals;
    if (localPath != null)
      json['localPath'] = localPath;
    if (revision != null)
      json['revision'] = revision;
    if (serverPath != null)
      json['serverPath'] = serverPath;
    return json;
  }

  static List<SvnMappingDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<SvnMappingDetails>() : json.map((value) => SvnMappingDetails.fromJson(value)).toList();
  }

  static Map<String, SvnMappingDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SvnMappingDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SvnMappingDetails.fromJson(value));
    }
    return map;
  }
}

