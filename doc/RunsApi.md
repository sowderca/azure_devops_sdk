# azure_devops_sdk.api.RunsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](RunsApi.md#create) | **POST** /{organization}/{project}/_apis/test/runs | 
[**delete**](RunsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/test/runs/{runId} | 
[**get Test Run By Id**](RunsApi.md#get Test Run By Id) | **GET** /{organization}/{project}/_apis/test/runs/{runId} | 
[**get Test Run Statistics**](RunsApi.md#get Test Run Statistics) | **GET** /{organization}/{project}/_apis/test/runs/{runId}/Statistics | 
[**list**](RunsApi.md#list) | **GET** /{organization}/{project}/_apis/test/runs | 
[**update**](RunsApi.md#update) | **PATCH** /{organization}/{project}/_apis/test/runs/{runId} | 


# **create**
> TestRun create(organization, project, apiVersion, body)



Create new test run.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RunsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = RunCreateModel(); // RunCreateModel | Run details RunCreateModel

try { 
    var result = api_instance.create(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RunsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**RunCreateModel**](RunCreateModel.md)| Run details RunCreateModel | 

### Return type

[**TestRun**](TestRun.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, runId, apiVersion)



Delete a test run by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RunsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the run to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, runId, apiVersion);
} catch (e) {
    print("Exception when calling RunsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the run to delete. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Run By Id**
> TestRun get Test Run By Id(organization, project, runId, apiVersion, includeDetails)



Get a test run by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RunsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the run to get.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var includeDetails = true; // bool | Defualt value is true. It includes details like run statistics,release,build,Test enviornment,Post process state and more

try { 
    var result = api_instance.get Test Run By Id(organization, project, runId, apiVersion, includeDetails);
    print(result);
} catch (e) {
    print("Exception when calling RunsApi->get Test Run By Id: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the run to get. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **includeDetails** | **bool**| Defualt value is true. It includes details like run statistics,release,build,Test enviornment,Post process state and more | [optional] [default to null]

### Return type

[**TestRun**](TestRun.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Run Statistics**
> TestRunStatistic get Test Run Statistics(organization, project, runId, apiVersion)



Get test run statistics , used when we want to get summary of a run by outcome.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RunsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the run to get.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Test Run Statistics(organization, project, runId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RunsApi->get Test Run Statistics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the run to get. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**TestRunStatistic**](TestRunStatistic.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TestRun> list(organization, project, apiVersion, buildUri, owner, tmiRunId, planId, includeRunDetails, automated, $skip, $top)



Get a list of test runs.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RunsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var buildUri = buildUri_example; // String | URI of the build that the runs used.
var owner = owner_example; // String | Team foundation ID of the owner of the runs.
var tmiRunId = tmiRunId_example; // String | 
var planId = 56; // int | ID of the test plan that the runs are a part of.
var includeRunDetails = true; // bool | If true, include all the properties of the runs.
var automated = true; // bool | If true, only returns automated runs.
var $skip = 56; // int | Number of test runs to skip.
var $top = 56; // int | Number of test runs to return.

try { 
    var result = api_instance.list(organization, project, apiVersion, buildUri, owner, tmiRunId, planId, includeRunDetails, automated, $skip, $top);
    print(result);
} catch (e) {
    print("Exception when calling RunsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **buildUri** | **String**| URI of the build that the runs used. | [optional] [default to null]
 **owner** | **String**| Team foundation ID of the owner of the runs. | [optional] [default to null]
 **tmiRunId** | **String**|  | [optional] [default to null]
 **planId** | **int**| ID of the test plan that the runs are a part of. | [optional] [default to null]
 **includeRunDetails** | **bool**| If true, include all the properties of the runs. | [optional] [default to null]
 **automated** | **bool**| If true, only returns automated runs. | [optional] [default to null]
 **$skip** | **int**| Number of test runs to skip. | [optional] [default to null]
 **$top** | **int**| Number of test runs to return. | [optional] [default to null]

### Return type

[**List<TestRun>**](TestRun.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> TestRun update(organization, project, runId, apiVersion, body)



Update test run by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RunsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the run to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = RunUpdateModel(); // RunUpdateModel | Run details RunUpdateModel

try { 
    var result = api_instance.update(organization, project, runId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RunsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the run to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**RunUpdateModel**](RunUpdateModel.md)| Run details RunUpdateModel | 

### Return type

[**TestRun**](TestRun.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

