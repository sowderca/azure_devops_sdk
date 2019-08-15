part of azure_devops_sdk.api;

class FeedUpdate {
  /* If set, the feed will allow upload of packages that exist on the upstream */
  bool allowUpstreamNameConflict = null;
  /* If set, this feed supports generation of package badges. */
  bool badgesEnabled = null;
  /* The view that the feed administrator has indicated is the default experience for readers. */
  String defaultViewId = null;
  /* A description for the feed.  Descriptions must not exceed 255 characters. */
  String description = null;
  /* If set, feed will hide all deleted/unpublished versions */
  bool hideDeletedPackageVersions = null;
  /* A GUID that uniquely identifies this feed. */
  String id = null;
  /* A name for the feed. feed names must follow these rules: <list type=\"bullet\"><item><description> Must not exceed 64 characters </description></item><item><description> Must not contain whitespaces </description></item><item><description> Must not start with an underscore or a period </description></item><item><description> Must not end with a period </description></item><item><description> Must not contain any of the following illegal characters: <![CDATA[ @, ~, ;, {, }, \\, +, =, <, >, |, /, \\\\, ?, :, &, $, *, \\\", #, [, ] ]]></description></item></list> */
  String name = null;
  /* OBSOLETE: If set, the feed can proxy packages from an upstream feed */
  bool upstreamEnabled = null;
  /* A list of sources that this feed will fetch packages from.  An empty list indicates that this feed will not search any additional sources for packages. */
  List<UpstreamSource> upstreamSources = [];
  FeedUpdate();

  @override
  String toString() {
    return 'FeedUpdate[allowUpstreamNameConflict=$allowUpstreamNameConflict, badgesEnabled=$badgesEnabled, defaultViewId=$defaultViewId, description=$description, hideDeletedPackageVersions=$hideDeletedPackageVersions, id=$id, name=$name, upstreamEnabled=$upstreamEnabled, upstreamSources=$upstreamSources, ]';
  }

  FeedUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['allowUpstreamNameConflict'] == null) {
      allowUpstreamNameConflict = null;
    } else {
          allowUpstreamNameConflict = json['allowUpstreamNameConflict'];
    }
    if (json['badgesEnabled'] == null) {
      badgesEnabled = null;
    } else {
          badgesEnabled = json['badgesEnabled'];
    }
    if (json['defaultViewId'] == null) {
      defaultViewId = null;
    } else {
          defaultViewId = json['defaultViewId'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['hideDeletedPackageVersions'] == null) {
      hideDeletedPackageVersions = null;
    } else {
          hideDeletedPackageVersions = json['hideDeletedPackageVersions'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['upstreamEnabled'] == null) {
      upstreamEnabled = null;
    } else {
          upstreamEnabled = json['upstreamEnabled'];
    }
    if (json['upstreamSources'] == null) {
      upstreamSources = null;
    } else {
      upstreamSources = UpstreamSource.listFromJson(json['upstreamSources']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allowUpstreamNameConflict != null)
      json['allowUpstreamNameConflict'] = allowUpstreamNameConflict;
    if (badgesEnabled != null)
      json['badgesEnabled'] = badgesEnabled;
    if (defaultViewId != null)
      json['defaultViewId'] = defaultViewId;
    if (description != null)
      json['description'] = description;
    if (hideDeletedPackageVersions != null)
      json['hideDeletedPackageVersions'] = hideDeletedPackageVersions;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (upstreamEnabled != null)
      json['upstreamEnabled'] = upstreamEnabled;
    if (upstreamSources != null)
      json['upstreamSources'] = upstreamSources;
    return json;
  }

  static List<FeedUpdate> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedUpdate>() : json.map((value) => FeedUpdate.fromJson(value)).toList();
  }

  static Map<String, FeedUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedUpdate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedUpdate.fromJson(value));
    }
    return map;
  }
}

