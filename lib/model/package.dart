part of azure_devops_sdk.api;

class Package {
  
  ReferenceLinks links = null;
  /* Id of the package. */
  String id = null;
  /* Used for legacy scenarios and may be removed in future versions. */
  bool isCached = null;
  /* The display name of the package. */
  String name = null;
  /* The normalized name representing the identity of this package within its package type. */
  String normalizedName = null;
  /* Type of the package. */
  String protocolType = null;
  /* [Obsolete] - this field is unused and will be removed in a future release. */
  int starCount = null;
  /* Url for this package. */
  String url = null;
  /* All versions for this package within its feed. */
  List<MinimalPackageVersion> versions = [];
  Package();

  @override
  String toString() {
    return 'Package[links=$links, id=$id, isCached=$isCached, name=$name, normalizedName=$normalizedName, protocolType=$protocolType, starCount=$starCount, url=$url, versions=$versions, ]';
  }

  Package.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isCached'] == null) {
      isCached = null;
    } else {
          isCached = json['isCached'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['normalizedName'] == null) {
      normalizedName = null;
    } else {
          normalizedName = json['normalizedName'];
    }
    if (json['protocolType'] == null) {
      protocolType = null;
    } else {
          protocolType = json['protocolType'];
    }
    if (json['starCount'] == null) {
      starCount = null;
    } else {
          starCount = json['starCount'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['versions'] == null) {
      versions = null;
    } else {
      versions = MinimalPackageVersion.listFromJson(json['versions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (id != null)
      json['id'] = id;
    if (isCached != null)
      json['isCached'] = isCached;
    if (name != null)
      json['name'] = name;
    if (normalizedName != null)
      json['normalizedName'] = normalizedName;
    if (protocolType != null)
      json['protocolType'] = protocolType;
    if (starCount != null)
      json['starCount'] = starCount;
    if (url != null)
      json['url'] = url;
    if (versions != null)
      json['versions'] = versions;
    return json;
  }

  static List<Package> listFromJson(List<dynamic> json) {
    return json == null ? List<Package>() : json.map((value) => Package.fromJson(value)).toList();
  }

  static Map<String, Package> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Package>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Package.fromJson(value));
    }
    return map;
  }
}

