# azure_devops_sdk.api.IterationsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](IterationsApi.md#callGet) | **GET** /{organization}/{project}/_apis/test/Runs/{runId}/Results/{testCaseResultId}/iterations/{iterationId} | 
[**callGet_0**](IterationsApi.md#callGet_0) | **GET** /{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{id} | 
[**delete**](IterationsApi.md#delete) | **DELETE** /{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{id} | 
[**get Iteration Work Items**](IterationsApi.md#get Iteration Work Items) | **GET** /{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{iterationId}/workitems | 
[**list**](IterationsApi.md#list) | **GET** /{organization}/{project}/_apis/test/Runs/{runId}/Results/{testCaseResultId}/iterations | 
[**list_0**](IterationsApi.md#list_0) | **GET** /{organization}/{project}/{team}/_apis/work/teamsettings/iterations | 
[**post Team Iteration**](IterationsApi.md#post Team Iteration) | **POST** /{organization}/{project}/{team}/_apis/work/teamsettings/iterations | 


# **callGet**
> TestIterationDetailsModel callGet(organization, project, runId, testCaseResultId, iterationId, apiVersion, includeActionResults)



Get iteration for a result

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = IterationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the test run that contains the result.
var testCaseResultId = 56; // int | ID of the test result that contains the iterations.
var iterationId = 56; // int | Id of the test results Iteration.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var includeActionResults = true; // bool | Include result details for each action performed in the test iteration. ActionResults refer to outcome (pass/fail) of test steps that are executed as part of a running a manual test. Including the ActionResults flag gets the outcome of test steps in the actionResults section and test parameters in the parameters section for each test iteration.

try { 
    var result = api_instance.callGet(organization, project, runId, testCaseResultId, iterationId, apiVersion, includeActionResults);
    print(result);
} catch (e) {
    print("Exception when calling IterationsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the test run that contains the result. | [default to null]
 **testCaseResultId** | **int**| ID of the test result that contains the iterations. | [default to null]
 **iterationId** | **int**| Id of the test results Iteration. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **includeActionResults** | **bool**| Include result details for each action performed in the test iteration. ActionResults refer to outcome (pass/fail) of test steps that are executed as part of a running a manual test. Including the ActionResults flag gets the outcome of test steps in the actionResults section and test parameters in the parameters section for each test iteration. | [optional] [default to null]

### Return type

[**TestIterationDetailsModel**](TestIterationDetailsModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> TeamSettingsIteration callGet_0(organization, project, id, team, apiVersion)



Get team's iteration by iterationId

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = IterationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the iteration
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet_0(organization, project, id, team, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling IterationsApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **id** | [**String**](.md)| ID of the iteration | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**TeamSettingsIteration**](TeamSettingsIteration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, id, team, apiVersion)



Delete a team's iteration by iterationId

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = IterationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the iteration
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, id, team, apiVersion);
} catch (e) {
    print("Exception when calling IterationsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **id** | [**String**](.md)| ID of the iteration | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Iteration Work Items**
> IterationWorkItems get Iteration Work Items(organization, project, iterationId, team, apiVersion)



Get work items for iteration

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = IterationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var iterationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the iteration
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Iteration Work Items(organization, project, iterationId, team, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling IterationsApi->get Iteration Work Items: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **iterationId** | [**String**](.md)| ID of the iteration | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**IterationWorkItems**](IterationWorkItems.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TestIterationDetailsModel> list(organization, project, runId, testCaseResultId, apiVersion, includeActionResults)



Get iterations for a result

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = IterationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the test run that contains the result.
var testCaseResultId = 56; // int | ID of the test result that contains the iterations.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var includeActionResults = true; // bool | Include result details for each action performed in the test iteration. ActionResults refer to outcome (pass/fail) of test steps that are executed as part of a running a manual test. Including the ActionResults flag gets the outcome of test steps in the actionResults section and test parameters in the parameters section for each test iteration.

try { 
    var result = api_instance.list(organization, project, runId, testCaseResultId, apiVersion, includeActionResults);
    print(result);
} catch (e) {
    print("Exception when calling IterationsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the test run that contains the result. | [default to null]
 **testCaseResultId** | **int**| ID of the test result that contains the iterations. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **includeActionResults** | **bool**| Include result details for each action performed in the test iteration. ActionResults refer to outcome (pass/fail) of test steps that are executed as part of a running a manual test. Including the ActionResults flag gets the outcome of test steps in the actionResults section and test parameters in the parameters section for each test iteration. | [optional] [default to null]

### Return type

[**List<TestIterationDetailsModel>**](TestIterationDetailsModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_0**
> List<TeamSettingsIteration> list_0(organization, project, team, apiVersion, $timeframe)



Get a team's iterations using timeframe filter

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = IterationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $timeframe = $timeframe_example; // String | A filter for which iterations are returned based on relative time. Only Current is supported currently.

try { 
    var result = api_instance.list_0(organization, project, team, apiVersion, $timeframe);
    print(result);
} catch (e) {
    print("Exception when calling IterationsApi->list_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$timeframe** | **String**| A filter for which iterations are returned based on relative time. Only Current is supported currently. | [optional] [default to null]

### Return type

[**List<TeamSettingsIteration>**](TeamSettingsIteration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post Team Iteration**
> TeamSettingsIteration post Team Iteration(organization, project, team, apiVersion, body)



Add an iteration to the team

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = IterationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TeamSettingsIteration(); // TeamSettingsIteration | Iteration to add

try { 
    var result = api_instance.post Team Iteration(organization, project, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling IterationsApi->post Team Iteration: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TeamSettingsIteration**](TeamSettingsIteration.md)| Iteration to add | 

### Return type

[**TeamSettingsIteration**](TeamSettingsIteration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

