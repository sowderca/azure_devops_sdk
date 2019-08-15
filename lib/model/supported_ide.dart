part of azure_devops_sdk.api;

class SupportedIde {
  /* The download URL for the IDE. */
  String downloadUrl = null;
  /* The type of the IDE. */
  String ideType = null;
  //enum ideTypeEnum {  unknown,  androidStudio,  appCode,  cLion,  dataGrip,  eclipse,  intelliJ,  mps,  phpStorm,  pyCharm,  rubyMine,  tower,  visualStudio,  vsCode,  webStorm,  };{
  /* The name of the IDE. */
  String name = null;
  /* The URL to open the protocol handler for the IDE. */
  String protocolHandlerUrl = null;
  /* A list of SupportedPlatforms. */
  List<String> supportedPlatforms = [];
  SupportedIde();

  @override
  String toString() {
    return 'SupportedIde[downloadUrl=$downloadUrl, ideType=$ideType, name=$name, protocolHandlerUrl=$protocolHandlerUrl, supportedPlatforms=$supportedPlatforms, ]';
  }

  SupportedIde.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['downloadUrl'] == null) {
      downloadUrl = null;
    } else {
          downloadUrl = json['downloadUrl'];
    }
    if (json['ideType'] == null) {
      ideType = null;
    } else {
          ideType = json['ideType'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['protocolHandlerUrl'] == null) {
      protocolHandlerUrl = null;
    } else {
          protocolHandlerUrl = json['protocolHandlerUrl'];
    }
    if (json['supportedPlatforms'] == null) {
      supportedPlatforms = null;
    } else {
      supportedPlatforms = (json['supportedPlatforms'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (downloadUrl != null)
      json['downloadUrl'] = downloadUrl;
    if (ideType != null)
      json['ideType'] = ideType;
    if (name != null)
      json['name'] = name;
    if (protocolHandlerUrl != null)
      json['protocolHandlerUrl'] = protocolHandlerUrl;
    if (supportedPlatforms != null)
      json['supportedPlatforms'] = supportedPlatforms;
    return json;
  }

  static List<SupportedIde> listFromJson(List<dynamic> json) {
    return json == null ? List<SupportedIde>() : json.map((value) => SupportedIde.fromJson(value)).toList();
  }

  static Map<String, SupportedIde> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SupportedIde>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SupportedIde.fromJson(value));
    }
    return map;
  }
}

