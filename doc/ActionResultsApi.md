# azure_devops_sdk.api.ActionResultsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ActionResultsApi.md#list) | **GET** /{organization}/{project}/_apis/test/Runs/{runId}/Results/{testCaseResultId}/Iterations/{iterationId}/actionresults/{actionPath} | 


# **list**
> List<TestActionResultModel> list(organization, project, runId, testCaseResultId, iterationId, actionPath, apiVersion)



Gets the action results for an iteration in a test result.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ActionResultsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the test run that contains the result.
var testCaseResultId = 56; // int | ID of the test result that contains the iterations.
var iterationId = 56; // int | ID of the iteration that contains the actions.
var actionPath = actionPath_example; // String | Path of a specific action, used to get just that action.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, runId, testCaseResultId, iterationId, actionPath, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ActionResultsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the test run that contains the result. | [default to null]
 **testCaseResultId** | **int**| ID of the test result that contains the iterations. | [default to null]
 **iterationId** | **int**| ID of the iteration that contains the actions. | [default to null]
 **actionPath** | **String**| Path of a specific action, used to get just that action. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<TestActionResultModel>**](TestActionResultModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

