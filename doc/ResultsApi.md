# azure_devops_sdk.api.ResultsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](ResultsApi.md#add) | **POST** /{organization}/{project}/_apis/test/Runs/{runId}/results | 
[**callGet**](ResultsApi.md#callGet) | **GET** /{organization}/_apis/clt/testRuns/{testRunId}/results | 
[**callGet_0**](ResultsApi.md#callGet_0) | **GET** /{organization}/{project}/_apis/test/Runs/{runId}/results/{testCaseResultId} | 
[**list**](ResultsApi.md#list) | **GET** /{organization}/{project}/_apis/test/Runs/{runId}/results | 
[**update**](ResultsApi.md#update) | **PATCH** /{organization}/{project}/_apis/test/Runs/{runId}/results | 


# **add**
> List<TestCaseResult> add(organization, project, runId, apiVersion, body)



Add test results to a test run.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ResultsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | Test run ID into which test results to add.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = [List&lt;TestCaseResult&gt;()]; // List<TestCaseResult> | List of test results to add.

try { 
    var result = api_instance.add(organization, project, runId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ResultsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| Test run ID into which test results to add. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;TestCaseResult&gt;**](TestCaseResult.md)| List of test results to add. | 

### Return type

[**List<TestCaseResult>**](TestCaseResult.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> TestResults callGet(organization, testRunId, apiVersion)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = ResultsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var testRunId = testRunId_example; // String | The test run identifier
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, testRunId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ResultsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **testRunId** | **String**| The test run identifier | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**TestResults**](TestResults.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> TestCaseResult callGet_0(organization, project, runId, testCaseResultId, apiVersion, detailsToInclude)



Get a test result for a test run.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ResultsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | Test run ID of a test result to fetch.
var testCaseResultId = 56; // int | Test result ID.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var detailsToInclude = detailsToInclude_example; // String | Details to include with test results. Default is None. Other values are Iterations, WorkItems and SubResults.

try { 
    var result = api_instance.callGet_0(organization, project, runId, testCaseResultId, apiVersion, detailsToInclude);
    print(result);
} catch (e) {
    print("Exception when calling ResultsApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| Test run ID of a test result to fetch. | [default to null]
 **testCaseResultId** | **int**| Test result ID. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **detailsToInclude** | **String**| Details to include with test results. Default is None. Other values are Iterations, WorkItems and SubResults. | [optional] [default to null]

### Return type

[**TestCaseResult**](TestCaseResult.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TestCaseResult> list(organization, project, runId, apiVersion, detailsToInclude, $skip, $top, outcomes)



Get test results for a test run.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ResultsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | Test run ID of test results to fetch.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var detailsToInclude = detailsToInclude_example; // String | Details to include with test results. Default is None. Other values are Iterations and WorkItems.
var $skip = 56; // int | Number of test results to skip from beginning.
var $top = 56; // int | Number of test results to return. Maximum is 1000 when detailsToInclude is None and 200 otherwise.
var outcomes = outcomes_example; // String | Comma separated list of test outcomes to filter test results.

try { 
    var result = api_instance.list(organization, project, runId, apiVersion, detailsToInclude, $skip, $top, outcomes);
    print(result);
} catch (e) {
    print("Exception when calling ResultsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| Test run ID of test results to fetch. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **detailsToInclude** | **String**| Details to include with test results. Default is None. Other values are Iterations and WorkItems. | [optional] [default to null]
 **$skip** | **int**| Number of test results to skip from beginning. | [optional] [default to null]
 **$top** | **int**| Number of test results to return. Maximum is 1000 when detailsToInclude is None and 200 otherwise. | [optional] [default to null]
 **outcomes** | **String**| Comma separated list of test outcomes to filter test results. | [optional] [default to null]

### Return type

[**List<TestCaseResult>**](TestCaseResult.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> List<TestCaseResult> update(organization, project, runId, apiVersion, body)



Update test results in a test run.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ResultsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | Test run ID whose test results to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = [List&lt;TestCaseResult&gt;()]; // List<TestCaseResult> | List of test results to update.

try { 
    var result = api_instance.update(organization, project, runId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ResultsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| Test run ID whose test results to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;TestCaseResult&gt;**](TestCaseResult.md)| List of test results to update. | 

### Return type

[**List<TestCaseResult>**](TestCaseResult.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

