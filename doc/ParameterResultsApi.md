# azure_devops_sdk.api.ParameterResultsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ParameterResultsApi.md#list) | **GET** /{organization}/{project}/_apis/test/Runs/{runId}/Results/{testCaseResultId}/Iterations/{iterationId}/parameterresults | 


# **list**
> List<TestResultParameterModel> list(organization, project, runId, testCaseResultId, iterationId, apiVersion, paramName)



Get a list of parameterized results

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ParameterResultsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the test run that contains the result.
var testCaseResultId = 56; // int | ID of the test result that contains the iterations.
var iterationId = 56; // int | ID of the iteration that contains the parameterized results.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var paramName = paramName_example; // String | Name of the parameter.

try { 
    var result = api_instance.list(organization, project, runId, testCaseResultId, iterationId, apiVersion, paramName);
    print(result);
} catch (e) {
    print("Exception when calling ParameterResultsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the test run that contains the result. | [default to null]
 **testCaseResultId** | **int**| ID of the test result that contains the iterations. | [default to null]
 **iterationId** | **int**| ID of the iteration that contains the parameterized results. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **paramName** | **String**| Name of the parameter. | [optional] [default to null]

### Return type

[**List<TestResultParameterModel>**](TestResultParameterModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

