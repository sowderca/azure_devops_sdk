part of azure_devops_sdk.api;

class TaskDefinitionEndpoint {
  /* An ID that identifies a service connection to be used for authenticating endpoint requests. */
  String connectionId = null;
  /* An Json based keyselector to filter response returned by fetching the endpoint <c>Url</c>.A Json based keyselector must be prefixed with \"jsonpath:\". KeySelector can be used to specify the filter to get the keys for the values specified with Selector. <example> The following keyselector defines an Json for extracting nodes named 'ServiceName'. <code> endpoint.KeySelector = \"jsonpath://ServiceName\"; </code></example> */
  String keySelector = null;
  /* The scope as understood by Connected Services. Essentially, a project-id for now. */
  String scope = null;
  /* An XPath/Json based selector to filter response returned by fetching the endpoint <c>Url</c>. An XPath based selector must be prefixed with the string \"xpath:\". A Json based selector must be prefixed with \"jsonpath:\". <example> The following selector defines an XPath for extracting nodes named 'ServiceName'. <code> endpoint.Selector = \"xpath://ServiceName\"; </code></example> */
  String selector = null;
  /* TaskId that this endpoint belongs to. */
  String taskId = null;
  /* URL to GET. */
  String url = null;
  TaskDefinitionEndpoint();

  @override
  String toString() {
    return 'TaskDefinitionEndpoint[connectionId=$connectionId, keySelector=$keySelector, scope=$scope, selector=$selector, taskId=$taskId, url=$url, ]';
  }

  TaskDefinitionEndpoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['connectionId'] == null) {
      connectionId = null;
    } else {
          connectionId = json['connectionId'];
    }
    if (json['keySelector'] == null) {
      keySelector = null;
    } else {
          keySelector = json['keySelector'];
    }
    if (json['scope'] == null) {
      scope = null;
    } else {
          scope = json['scope'];
    }
    if (json['selector'] == null) {
      selector = null;
    } else {
          selector = json['selector'];
    }
    if (json['taskId'] == null) {
      taskId = null;
    } else {
          taskId = json['taskId'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (connectionId != null)
      json['connectionId'] = connectionId;
    if (keySelector != null)
      json['keySelector'] = keySelector;
    if (scope != null)
      json['scope'] = scope;
    if (selector != null)
      json['selector'] = selector;
    if (taskId != null)
      json['taskId'] = taskId;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TaskDefinitionEndpoint> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskDefinitionEndpoint>() : json.map((value) => TaskDefinitionEndpoint.fromJson(value)).toList();
  }

  static Map<String, TaskDefinitionEndpoint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskDefinitionEndpoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskDefinitionEndpoint.fromJson(value));
    }
    return map;
  }
}

