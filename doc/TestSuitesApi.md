# azure_devops_sdk.api.TestSuitesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](TestSuitesApi.md#add) | **POST** /{organization}/{project}/_apis/test/Plans/{planId}/suites/{suiteId}/testcases/{testCaseIds} | 
[**callGet**](TestSuitesApi.md#callGet) | **GET** /{organization}/{project}/_apis/test/Plans/{planId}/suites/{suiteId}/testcases/{testCaseIds} | 
[**callGet_0**](TestSuitesApi.md#callGet_0) | **GET** /{organization}/{project}/_apis/testplan/Plans/{planId}/suites/{suiteId} | 
[**create**](TestSuitesApi.md#create) | **POST** /{organization}/{project}/_apis/testplan/Plans/{planId}/suites | 
[**delete**](TestSuitesApi.md#delete) | **DELETE** /{organization}/{project}/_apis/testplan/Plans/{planId}/suites/{suiteId} | 
[**get Suites By Test Case Id**](TestSuitesApi.md#get Suites By Test Case Id) | **GET** /{organization}/_apis/testplan/suites | 
[**get Test Suites For Plan**](TestSuitesApi.md#get Test Suites For Plan) | **GET** /{organization}/{project}/_apis/testplan/Plans/{planId}/suites | 
[**list**](TestSuitesApi.md#list) | **GET** /{organization}/{project}/_apis/test/Plans/{planId}/suites/{suiteId}/testcases | 
[**remove Test Cases From Suite Url**](TestSuitesApi.md#remove Test Cases From Suite Url) | **DELETE** /{organization}/{project}/_apis/test/Plans/{planId}/suites/{suiteId}/testcases/{testCaseIds} | 
[**update**](TestSuitesApi.md#update) | **PATCH** /{organization}/{project}/_apis/test/Plans/{planId}/suites/{suiteId}/testcases/{testCaseIds} | 
[**update_0**](TestSuitesApi.md#update_0) | **PATCH** /{organization}/{project}/_apis/testplan/Plans/{planId}/suites/{suiteId} | 


# **add**
> List<SuiteTestCase> add(organization, project, planId, suiteId, testCaseIds, apiVersion)



Add test cases to suite.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuitesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan that contains the suite.
var suiteId = 56; // int | ID of the test suite to which the test cases must be added.
var testCaseIds = testCaseIds_example; // String | IDs of the test cases to add to the suite. Ids are specified in comma separated format.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.add(organization, project, planId, suiteId, testCaseIds, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TestSuitesApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan that contains the suite. | [default to null]
 **suiteId** | **int**| ID of the test suite to which the test cases must be added. | [default to null]
 **testCaseIds** | **String**| IDs of the test cases to add to the suite. Ids are specified in comma separated format. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<SuiteTestCase>**](SuiteTestCase.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> SuiteTestCase callGet(organization, project, planId, suiteId, testCaseIds, apiVersion)



Get a specific test case in a test suite with test case id.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuitesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan that contains the suites.
var suiteId = 56; // int | ID of the suite that contains the test case.
var testCaseIds = 56; // int | ID of the test case to get.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, planId, suiteId, testCaseIds, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TestSuitesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan that contains the suites. | [default to null]
 **suiteId** | **int**| ID of the suite that contains the test case. | [default to null]
 **testCaseIds** | **int**| ID of the test case to get. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**SuiteTestCase**](SuiteTestCase.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> TestSuite callGet_0(organization, project, planId, suiteId, apiVersion, expand)



Get test suite by suite id.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuitesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan that contains the suites.
var suiteId = 56; // int | ID of the suite to get.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var expand = expand_example; // String | Include the children suites and testers details

try { 
    var result = api_instance.callGet_0(organization, project, planId, suiteId, apiVersion, expand);
    print(result);
} catch (e) {
    print("Exception when calling TestSuitesApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan that contains the suites. | [default to null]
 **suiteId** | **int**| ID of the suite to get. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **expand** | **String**| Include the children suites and testers details | [optional] [default to null]

### Return type

[**TestSuite**](TestSuite.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> TestSuite create(organization, project, planId, apiVersion, body)



Create test suite.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuitesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan that contains the suites.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestSuiteCreateParams(); // TestSuiteCreateParams | Parameters for suite creation

try { 
    var result = api_instance.create(organization, project, planId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TestSuitesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan that contains the suites. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestSuiteCreateParams**](TestSuiteCreateParams.md)| Parameters for suite creation | 

### Return type

[**TestSuite**](TestSuite.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, planId, suiteId, apiVersion)



Delete test suite.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuitesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan that contains the suite.
var suiteId = 56; // int | ID of the test suite to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, planId, suiteId, apiVersion);
} catch (e) {
    print("Exception when calling TestSuitesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan that contains the suite. | [default to null]
 **suiteId** | **int**| ID of the test suite to delete. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Suites By Test Case Id**
> List<TestSuite> get Suites By Test Case Id(organization, testCaseId, apiVersion)



Find the list of all test suites in which a given test case is present. This is helpful if you need to find out which test suites are using a test case, when you need to make changes to a test case.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuitesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var testCaseId = 56; // int | ID of the test case for which suites need to be fetched.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Suites By Test Case Id(organization, testCaseId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TestSuitesApi->get Suites By Test Case Id: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **testCaseId** | **int**| ID of the test case for which suites need to be fetched. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<TestSuite>**](TestSuite.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Suites For Plan**
> List<TestSuite> get Test Suites For Plan(organization, project, planId, apiVersion, expand, continuationToken, asTreeView)



Get test suites for plan.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuitesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan for which suites are requested.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var expand = expand_example; // String | Include the children suites and testers details.
var continuationToken = continuationToken_example; // String | If the list of suites returned is not complete, a continuation token to query next batch of suites is included in the response header as \"x-ms-continuationtoken\". Omit this parameter to get the first batch of test suites.
var asTreeView = true; // bool | If the suites returned should be in a tree structure.

try { 
    var result = api_instance.get Test Suites For Plan(organization, project, planId, apiVersion, expand, continuationToken, asTreeView);
    print(result);
} catch (e) {
    print("Exception when calling TestSuitesApi->get Test Suites For Plan: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan for which suites are requested. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **expand** | **String**| Include the children suites and testers details. | [optional] [default to null]
 **continuationToken** | **String**| If the list of suites returned is not complete, a continuation token to query next batch of suites is included in the response header as \&quot;x-ms-continuationtoken\&quot;. Omit this parameter to get the first batch of test suites. | [optional] [default to null]
 **asTreeView** | **bool**| If the suites returned should be in a tree structure. | [optional] [default to null]

### Return type

[**List<TestSuite>**](TestSuite.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<SuiteTestCase> list(organization, project, planId, suiteId, apiVersion)



Get all test cases in a suite.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuitesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan that contains the suites.
var suiteId = 56; // int | ID of the suite to get.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, planId, suiteId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TestSuitesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan that contains the suites. | [default to null]
 **suiteId** | **int**| ID of the suite to get. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<SuiteTestCase>**](SuiteTestCase.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove Test Cases From Suite Url**
> remove Test Cases From Suite Url(organization, project, planId, suiteId, testCaseIds, apiVersion)



The test points associated with the test cases are removed from the test suite. The test case work item is not deleted from the system. See test cases resource to delete a test case permanently.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuitesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan that contains the suite.
var suiteId = 56; // int | ID of the suite to get.
var testCaseIds = testCaseIds_example; // String | IDs of the test cases to remove from the suite.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.remove Test Cases From Suite Url(organization, project, planId, suiteId, testCaseIds, apiVersion);
} catch (e) {
    print("Exception when calling TestSuitesApi->remove Test Cases From Suite Url: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan that contains the suite. | [default to null]
 **suiteId** | **int**| ID of the suite to get. | [default to null]
 **testCaseIds** | **String**| IDs of the test cases to remove from the suite. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> List<SuiteTestCase> update(organization, project, planId, suiteId, testCaseIds, apiVersion, body)



Updates the properties of the test case association in a suite.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuitesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan that contains the suite.
var suiteId = 56; // int | ID of the test suite to which the test cases must be added.
var testCaseIds = testCaseIds_example; // String | IDs of the test cases to add to the suite. Ids are specified in comma separated format.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = SuiteTestCaseUpdateModel(); // SuiteTestCaseUpdateModel | Model for updation of the properties of test case suite association.

try { 
    var result = api_instance.update(organization, project, planId, suiteId, testCaseIds, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TestSuitesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan that contains the suite. | [default to null]
 **suiteId** | **int**| ID of the test suite to which the test cases must be added. | [default to null]
 **testCaseIds** | **String**| IDs of the test cases to add to the suite. Ids are specified in comma separated format. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**SuiteTestCaseUpdateModel**](SuiteTestCaseUpdateModel.md)| Model for updation of the properties of test case suite association. | 

### Return type

[**List<SuiteTestCase>**](SuiteTestCase.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_0**
> TestSuite update_0(organization, project, planId, suiteId, apiVersion, body)



Update test suite.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuitesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var planId = 56; // int | ID of the test plan that contains the suites.
var suiteId = 56; // int | ID of the parent suite.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestSuiteUpdateParams(); // TestSuiteUpdateParams | Parameters for suite updation

try { 
    var result = api_instance.update_0(organization, project, planId, suiteId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TestSuitesApi->update_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **planId** | **int**| ID of the test plan that contains the suites. | [default to null]
 **suiteId** | **int**| ID of the parent suite. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestSuiteUpdateParams**](TestSuiteUpdateParams.md)| Parameters for suite updation | 

### Return type

[**TestSuite**](TestSuite.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

