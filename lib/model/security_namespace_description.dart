part of azure_devops_sdk.api;

class SecurityNamespaceDescription {
  /* The list of actions that this Security Namespace is responsible for securing. */
  List<ActionDefinition> actions = [];
  /* This is the dataspace category that describes where the security information for this SecurityNamespace should be stored. */
  String dataspaceCategory = null;
  /* This localized name for this namespace. */
  String displayName = null;
  /* If the security tokens this namespace will be operating on need to be split on certain character lengths to determine its elements, that length should be specified here. If not, this value will be -1. */
  int elementLength = null;
  /* This is the type of the extension that should be loaded from the plugins directory for extending this security namespace. */
  String extensionType = null;
  /* If true, the security namespace is remotable, allowing another service to proxy the namespace. */
  bool isRemotable = null;
  /* This non-localized for this namespace. */
  String name = null;
  /* The unique identifier for this namespace. */
  String namespaceId = null;
  /* The permission bits needed by a user in order to read security data on the Security Namespace. */
  int readPermission = null;
  /* If the security tokens this namespace will be operating on need to be split on certain characters to determine its elements that character should be specified here. If not, this value will be the null character. */
  String separatorValue = null;
  /* Used to send information about the structure of the security namespace over the web service. */
  int structureValue = null;
  /* The bits reserved by system store */
  int systemBitMask = null;
  /* If true, the security service will expect an ISecurityDataspaceTokenTranslator plugin to exist for this namespace */
  bool useTokenTranslator = null;
  /* The permission bits needed by a user in order to modify security data on the Security Namespace. */
  int writePermission = null;
  SecurityNamespaceDescription();

  @override
  String toString() {
    return 'SecurityNamespaceDescription[actions=$actions, dataspaceCategory=$dataspaceCategory, displayName=$displayName, elementLength=$elementLength, extensionType=$extensionType, isRemotable=$isRemotable, name=$name, namespaceId=$namespaceId, readPermission=$readPermission, separatorValue=$separatorValue, structureValue=$structureValue, systemBitMask=$systemBitMask, useTokenTranslator=$useTokenTranslator, writePermission=$writePermission, ]';
  }

  SecurityNamespaceDescription.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actions'] == null) {
      actions = null;
    } else {
      actions = ActionDefinition.listFromJson(json['actions']);
    }
    if (json['dataspaceCategory'] == null) {
      dataspaceCategory = null;
    } else {
          dataspaceCategory = json['dataspaceCategory'];
    }
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['elementLength'] == null) {
      elementLength = null;
    } else {
          elementLength = json['elementLength'];
    }
    if (json['extensionType'] == null) {
      extensionType = null;
    } else {
          extensionType = json['extensionType'];
    }
    if (json['isRemotable'] == null) {
      isRemotable = null;
    } else {
          isRemotable = json['isRemotable'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['namespaceId'] == null) {
      namespaceId = null;
    } else {
          namespaceId = json['namespaceId'];
    }
    if (json['readPermission'] == null) {
      readPermission = null;
    } else {
          readPermission = json['readPermission'];
    }
    if (json['separatorValue'] == null) {
      separatorValue = null;
    } else {
          separatorValue = json['separatorValue'];
    }
    if (json['structureValue'] == null) {
      structureValue = null;
    } else {
          structureValue = json['structureValue'];
    }
    if (json['systemBitMask'] == null) {
      systemBitMask = null;
    } else {
          systemBitMask = json['systemBitMask'];
    }
    if (json['useTokenTranslator'] == null) {
      useTokenTranslator = null;
    } else {
          useTokenTranslator = json['useTokenTranslator'];
    }
    if (json['writePermission'] == null) {
      writePermission = null;
    } else {
          writePermission = json['writePermission'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actions != null)
      json['actions'] = actions;
    if (dataspaceCategory != null)
      json['dataspaceCategory'] = dataspaceCategory;
    if (displayName != null)
      json['displayName'] = displayName;
    if (elementLength != null)
      json['elementLength'] = elementLength;
    if (extensionType != null)
      json['extensionType'] = extensionType;
    if (isRemotable != null)
      json['isRemotable'] = isRemotable;
    if (name != null)
      json['name'] = name;
    if (namespaceId != null)
      json['namespaceId'] = namespaceId;
    if (readPermission != null)
      json['readPermission'] = readPermission;
    if (separatorValue != null)
      json['separatorValue'] = separatorValue;
    if (structureValue != null)
      json['structureValue'] = structureValue;
    if (systemBitMask != null)
      json['systemBitMask'] = systemBitMask;
    if (useTokenTranslator != null)
      json['useTokenTranslator'] = useTokenTranslator;
    if (writePermission != null)
      json['writePermission'] = writePermission;
    return json;
  }

  static List<SecurityNamespaceDescription> listFromJson(List<dynamic> json) {
    return json == null ? List<SecurityNamespaceDescription>() : json.map((value) => SecurityNamespaceDescription.fromJson(value)).toList();
  }

  static Map<String, SecurityNamespaceDescription> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SecurityNamespaceDescription>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SecurityNamespaceDescription.fromJson(value));
    }
    return map;
  }
}

