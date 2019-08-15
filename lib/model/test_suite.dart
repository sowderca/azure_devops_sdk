part of azure_devops_sdk.api;

class TestSuite {
  /* Area uri of the test suite. */
  String areaUri = null;
  /* Child test suites of current test suite. */
  List<TestSuite> children = [];
  /* Test suite default configuration. */
  List<ShallowReference> defaultConfigurations = [];
  /* Test suite default testers. */
  List<ShallowReference> defaultTesters = [];
  /* Id of test suite. */
  int id = null;
  /* Default configuration was inherited or not. */
  bool inheritDefaultConfigurations = null;
  /* Last error for test suite. */
  String lastError = null;
  /* Last populated date. */
  DateTime lastPopulatedDate = null;
  
  IdentityRef lastUpdatedBy = null;
  /* Last update date. */
  DateTime lastUpdatedDate = null;
  /* Name of test suite. */
  String name = null;
  
  ShallowReference parent = null;
  
  ShallowReference plan = null;
  
  ShallowReference project = null;
  /* Test suite query string, for dynamic suites. */
  String queryString = null;
  /* Test suite requirement id. */
  int requirementId = null;
  /* Test suite revision. */
  int revision = null;
  /* State of test suite. */
  String state = null;
  /* List of shallow reference of suites. */
  List<ShallowReference> suites = [];
  /* Test suite type. */
  String suiteType = null;
  /* Test cases count. */
  int testCaseCount = null;
  /* Test case url. */
  String testCasesUrl = null;
  /* Used in tree view. If test suite is root suite then, it is name of plan otherwise title of the suite. */
  String text = null;
  /* Url of test suite. */
  String url = null;
  TestSuite();

  @override
  String toString() {
    return 'TestSuite[areaUri=$areaUri, children=$children, defaultConfigurations=$defaultConfigurations, defaultTesters=$defaultTesters, id=$id, inheritDefaultConfigurations=$inheritDefaultConfigurations, lastError=$lastError, lastPopulatedDate=$lastPopulatedDate, lastUpdatedBy=$lastUpdatedBy, lastUpdatedDate=$lastUpdatedDate, name=$name, parent=$parent, plan=$plan, project=$project, queryString=$queryString, requirementId=$requirementId, revision=$revision, state=$state, suites=$suites, suiteType=$suiteType, testCaseCount=$testCaseCount, testCasesUrl=$testCasesUrl, text=$text, url=$url, ]';
  }

  TestSuite.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['areaUri'] == null) {
      areaUri = null;
    } else {
          areaUri = json['areaUri'];
    }
    if (json['children'] == null) {
      children = null;
    } else {
      children = TestSuite.listFromJson(json['children']);
    }
    if (json['defaultConfigurations'] == null) {
      defaultConfigurations = null;
    } else {
      defaultConfigurations = ShallowReference.listFromJson(json['defaultConfigurations']);
    }
    if (json['defaultTesters'] == null) {
      defaultTesters = null;
    } else {
      defaultTesters = ShallowReference.listFromJson(json['defaultTesters']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['inheritDefaultConfigurations'] == null) {
      inheritDefaultConfigurations = null;
    } else {
          inheritDefaultConfigurations = json['inheritDefaultConfigurations'];
    }
    if (json['lastError'] == null) {
      lastError = null;
    } else {
          lastError = json['lastError'];
    }
    if (json['lastPopulatedDate'] == null) {
      lastPopulatedDate = null;
    } else {
      lastPopulatedDate = DateTime.parse(json['lastPopulatedDate']);
    }
    if (json['lastUpdatedBy'] == null) {
      lastUpdatedBy = null;
    } else {
      lastUpdatedBy = IdentityRef.fromJson(json['lastUpdatedBy']);
    }
    if (json['lastUpdatedDate'] == null) {
      lastUpdatedDate = null;
    } else {
      lastUpdatedDate = DateTime.parse(json['lastUpdatedDate']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['parent'] == null) {
      parent = null;
    } else {
      parent = ShallowReference.fromJson(json['parent']);
    }
    if (json['plan'] == null) {
      plan = null;
    } else {
      plan = ShallowReference.fromJson(json['plan']);
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ShallowReference.fromJson(json['project']);
    }
    if (json['queryString'] == null) {
      queryString = null;
    } else {
          queryString = json['queryString'];
    }
    if (json['requirementId'] == null) {
      requirementId = null;
    } else {
          requirementId = json['requirementId'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['suites'] == null) {
      suites = null;
    } else {
      suites = ShallowReference.listFromJson(json['suites']);
    }
    if (json['suiteType'] == null) {
      suiteType = null;
    } else {
          suiteType = json['suiteType'];
    }
    if (json['testCaseCount'] == null) {
      testCaseCount = null;
    } else {
          testCaseCount = json['testCaseCount'];
    }
    if (json['testCasesUrl'] == null) {
      testCasesUrl = null;
    } else {
          testCasesUrl = json['testCasesUrl'];
    }
    if (json['text'] == null) {
      text = null;
    } else {
          text = json['text'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (areaUri != null)
      json['areaUri'] = areaUri;
    if (children != null)
      json['children'] = children;
    if (defaultConfigurations != null)
      json['defaultConfigurations'] = defaultConfigurations;
    if (defaultTesters != null)
      json['defaultTesters'] = defaultTesters;
    if (id != null)
      json['id'] = id;
    if (inheritDefaultConfigurations != null)
      json['inheritDefaultConfigurations'] = inheritDefaultConfigurations;
    if (lastError != null)
      json['lastError'] = lastError;
    if (lastPopulatedDate != null)
      json['lastPopulatedDate'] = lastPopulatedDate == null ? null : lastPopulatedDate.toUtc().toIso8601String();
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (parent != null)
      json['parent'] = parent;
    if (plan != null)
      json['plan'] = plan;
    if (project != null)
      json['project'] = project;
    if (queryString != null)
      json['queryString'] = queryString;
    if (requirementId != null)
      json['requirementId'] = requirementId;
    if (revision != null)
      json['revision'] = revision;
    if (state != null)
      json['state'] = state;
    if (suites != null)
      json['suites'] = suites;
    if (suiteType != null)
      json['suiteType'] = suiteType;
    if (testCaseCount != null)
      json['testCaseCount'] = testCaseCount;
    if (testCasesUrl != null)
      json['testCasesUrl'] = testCasesUrl;
    if (text != null)
      json['text'] = text;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestSuite> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSuite>() : json.map((value) => TestSuite.fromJson(value)).toList();
  }

  static Map<String, TestSuite> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSuite>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSuite.fromJson(value));
    }
    return map;
  }
}

