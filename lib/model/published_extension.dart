part of azure_devops_sdk.api;

class PublishedExtension {
  
  List<String> categories = [];
  
  String deploymentType = null;
  //enum deploymentTypeEnum {  exe,  msi,  vsix,  referralLink,  };{
  
  String displayName = null;
  
  String extensionId = null;
  
  String extensionName = null;
  
  String flags = null;
  //enum flagsEnum {  none,  disabled,  builtIn,  validated,  trusted,  paid,  public,  multiVersion,  system,  preview,  unpublished,  trial,  locked,  hidden,  };{
  
  List<InstallationTarget> installationTargets = [];
  
  DateTime lastUpdated = null;
  
  String longDescription = null;
  /* Date on which the extension was first uploaded. */
  DateTime publishedDate = null;
  
  PublisherFacts publisher = null;
  /* Date on which the extension first went public. */
  DateTime releaseDate = null;
  
  List<ExtensionShare> sharedWith = [];
  
  String shortDescription = null;
  
  List<ExtensionStatistic> statistics = [];
  
  List<String> tags = [];
  
  List<ExtensionVersion> versions = [];
  PublishedExtension();

  @override
  String toString() {
    return 'PublishedExtension[categories=$categories, deploymentType=$deploymentType, displayName=$displayName, extensionId=$extensionId, extensionName=$extensionName, flags=$flags, installationTargets=$installationTargets, lastUpdated=$lastUpdated, longDescription=$longDescription, publishedDate=$publishedDate, publisher=$publisher, releaseDate=$releaseDate, sharedWith=$sharedWith, shortDescription=$shortDescription, statistics=$statistics, tags=$tags, versions=$versions, ]';
  }

  PublishedExtension.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['categories'] == null) {
      categories = null;
    } else {
      categories = (json['categories'] as List).cast<String>();
    }
    if (json['deploymentType'] == null) {
      deploymentType = null;
    } else {
          deploymentType = json['deploymentType'];
    }
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['extensionId'] == null) {
      extensionId = null;
    } else {
          extensionId = json['extensionId'];
    }
    if (json['extensionName'] == null) {
      extensionName = null;
    } else {
          extensionName = json['extensionName'];
    }
    if (json['flags'] == null) {
      flags = null;
    } else {
          flags = json['flags'];
    }
    if (json['installationTargets'] == null) {
      installationTargets = null;
    } else {
      installationTargets = InstallationTarget.listFromJson(json['installationTargets']);
    }
    if (json['lastUpdated'] == null) {
      lastUpdated = null;
    } else {
      lastUpdated = DateTime.parse(json['lastUpdated']);
    }
    if (json['longDescription'] == null) {
      longDescription = null;
    } else {
          longDescription = json['longDescription'];
    }
    if (json['publishedDate'] == null) {
      publishedDate = null;
    } else {
      publishedDate = DateTime.parse(json['publishedDate']);
    }
    if (json['publisher'] == null) {
      publisher = null;
    } else {
      publisher = PublisherFacts.fromJson(json['publisher']);
    }
    if (json['releaseDate'] == null) {
      releaseDate = null;
    } else {
      releaseDate = DateTime.parse(json['releaseDate']);
    }
    if (json['sharedWith'] == null) {
      sharedWith = null;
    } else {
      sharedWith = ExtensionShare.listFromJson(json['sharedWith']);
    }
    if (json['shortDescription'] == null) {
      shortDescription = null;
    } else {
          shortDescription = json['shortDescription'];
    }
    if (json['statistics'] == null) {
      statistics = null;
    } else {
      statistics = ExtensionStatistic.listFromJson(json['statistics']);
    }
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = (json['tags'] as List).cast<String>();
    }
    if (json['versions'] == null) {
      versions = null;
    } else {
      versions = ExtensionVersion.listFromJson(json['versions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (categories != null)
      json['categories'] = categories;
    if (deploymentType != null)
      json['deploymentType'] = deploymentType;
    if (displayName != null)
      json['displayName'] = displayName;
    if (extensionId != null)
      json['extensionId'] = extensionId;
    if (extensionName != null)
      json['extensionName'] = extensionName;
    if (flags != null)
      json['flags'] = flags;
    if (installationTargets != null)
      json['installationTargets'] = installationTargets;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (longDescription != null)
      json['longDescription'] = longDescription;
    if (publishedDate != null)
      json['publishedDate'] = publishedDate == null ? null : publishedDate.toUtc().toIso8601String();
    if (publisher != null)
      json['publisher'] = publisher;
    if (releaseDate != null)
      json['releaseDate'] = releaseDate == null ? null : releaseDate.toUtc().toIso8601String();
    if (sharedWith != null)
      json['sharedWith'] = sharedWith;
    if (shortDescription != null)
      json['shortDescription'] = shortDescription;
    if (statistics != null)
      json['statistics'] = statistics;
    if (tags != null)
      json['tags'] = tags;
    if (versions != null)
      json['versions'] = versions;
    return json;
  }

  static List<PublishedExtension> listFromJson(List<dynamic> json) {
    return json == null ? List<PublishedExtension>() : json.map((value) => PublishedExtension.fromJson(value)).toList();
  }

  static Map<String, PublishedExtension> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PublishedExtension>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PublishedExtension.fromJson(value));
    }
    return map;
  }
}

