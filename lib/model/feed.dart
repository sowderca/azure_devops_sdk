part of azure_devops_sdk.api;

class Feed {
  /* Supported capabilities of a feed. */
  String capabilities = null;
  //enum capabilitiesEnum {  none,  upstreamV2,  underMaintenance,  defaultCapabilities,  };{
  /* This will either be the feed GUID or the feed GUID and view GUID depending on how the feed was accessed. */
  String fullyQualifiedId = null;
  /* Full name of the view, in feed@view format. */
  String fullyQualifiedName = null;
  /* A GUID that uniquely identifies this feed. */
  String id = null;
  /* If set, all packages in the feed are immutable.  It is important to note that feed views are immutable; therefore, this flag will always be set for views. */
  bool isReadOnly = null;
  /* A name for the feed. feed names must follow these rules: <list type=\"bullet\"><item><description> Must not exceed 64 characters </description></item><item><description> Must not contain whitespaces </description></item><item><description> Must not start with an underscore or a period </description></item><item><description> Must not end with a period </description></item><item><description> Must not contain any of the following illegal characters: <![CDATA[ @, ~, ;, {, }, \\, +, =, <, >, |, /, \\\\, ?, :, &, $, *, \\\", #, [, ] ]]></description></item></list> */
  String name = null;
  
  ProjectReference project = null;
  /* OBSOLETE: This should always be true.  Setting to false will override all sources in UpstreamSources. */
  bool upstreamEnabled = null;
  /* A list of sources that this feed will fetch packages from.  An empty list indicates that this feed will not search any additional sources for packages. */
  List<UpstreamSource> upstreamSources = [];
  
  FeedView view = null;
  /* View Id. */
  String viewId = null;
  /* View name. */
  String viewName = null;
  Feed();

  @override
  String toString() {
    return 'Feed[capabilities=$capabilities, fullyQualifiedId=$fullyQualifiedId, fullyQualifiedName=$fullyQualifiedName, id=$id, isReadOnly=$isReadOnly, name=$name, project=$project, upstreamEnabled=$upstreamEnabled, upstreamSources=$upstreamSources, view=$view, viewId=$viewId, viewName=$viewName, ]';
  }

  Feed.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['capabilities'] == null) {
      capabilities = null;
    } else {
          capabilities = json['capabilities'];
    }
    if (json['fullyQualifiedId'] == null) {
      fullyQualifiedId = null;
    } else {
          fullyQualifiedId = json['fullyQualifiedId'];
    }
    if (json['fullyQualifiedName'] == null) {
      fullyQualifiedName = null;
    } else {
          fullyQualifiedName = json['fullyQualifiedName'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isReadOnly'] == null) {
      isReadOnly = null;
    } else {
          isReadOnly = json['isReadOnly'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ProjectReference.fromJson(json['project']);
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
    if (json['view'] == null) {
      view = null;
    } else {
      view = FeedView.fromJson(json['view']);
    }
    if (json['viewId'] == null) {
      viewId = null;
    } else {
          viewId = json['viewId'];
    }
    if (json['viewName'] == null) {
      viewName = null;
    } else {
          viewName = json['viewName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (capabilities != null)
      json['capabilities'] = capabilities;
    if (fullyQualifiedId != null)
      json['fullyQualifiedId'] = fullyQualifiedId;
    if (fullyQualifiedName != null)
      json['fullyQualifiedName'] = fullyQualifiedName;
    if (id != null)
      json['id'] = id;
    if (isReadOnly != null)
      json['isReadOnly'] = isReadOnly;
    if (name != null)
      json['name'] = name;
    if (project != null)
      json['project'] = project;
    if (upstreamEnabled != null)
      json['upstreamEnabled'] = upstreamEnabled;
    if (upstreamSources != null)
      json['upstreamSources'] = upstreamSources;
    if (view != null)
      json['view'] = view;
    if (viewId != null)
      json['viewId'] = viewId;
    if (viewName != null)
      json['viewName'] = viewName;
    return json;
  }

  static List<Feed> listFromJson(List<dynamic> json) {
    return json == null ? List<Feed>() : json.map((value) => Feed.fromJson(value)).toList();
  }

  static Map<String, Feed> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Feed>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Feed.fromJson(value));
    }
    return map;
  }
}

