# azure_devops_sdk.api.StatusesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](StatusesApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/commits/{commitId}/statuses | 
[**list**](StatusesApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/commits/{commitId}/statuses | 


# **create**
> GitStatus create(organization, commitId, repositoryId, project, apiVersion, body)



Create Git commit status.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = StatusesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var commitId = commitId_example; // String | ID of the Git commit.
var repositoryId = repositoryId_example; // String | ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = GitStatus(); // GitStatus | Git commit status object to create.

try { 
    var result = api_instance.create(organization, commitId, repositoryId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling StatusesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **commitId** | **String**| ID of the Git commit. | [default to null]
 **repositoryId** | **String**| ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitStatus**](GitStatus.md)| Git commit status object to create. | 

### Return type

[**GitStatus**](GitStatus.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<GitStatus> list(organization, commitId, repositoryId, project, apiVersion, top, skip, latestOnly)



Get statuses associated with the Git commit.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = StatusesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var commitId = commitId_example; // String | ID of the Git commit.
var repositoryId = repositoryId_example; // String | ID of the repository.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var top = 56; // int | Optional. The number of statuses to retrieve. Default is 1000.
var skip = 56; // int | Optional. The number of statuses to ignore. Default is 0. For example, to retrieve results 101-150, set top to 50 and skip to 100.
var latestOnly = true; // bool | The flag indicates whether to get only latest statuses grouped by `Context.Name` and `Context.Genre`.

try { 
    var result = api_instance.list(organization, commitId, repositoryId, project, apiVersion, top, skip, latestOnly);
    print(result);
} catch (e) {
    print("Exception when calling StatusesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **commitId** | **String**| ID of the Git commit. | [default to null]
 **repositoryId** | **String**| ID of the repository. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **top** | **int**| Optional. The number of statuses to retrieve. Default is 1000. | [optional] [default to null]
 **skip** | **int**| Optional. The number of statuses to ignore. Default is 0. For example, to retrieve results 101-150, set top to 50 and skip to 100. | [optional] [default to null]
 **latestOnly** | **bool**| The flag indicates whether to get only latest statuses grouped by &#x60;Context.Name&#x60; and &#x60;Context.Genre&#x60;. | [optional] [default to null]

### Return type

[**List<GitStatus>**](GitStatus.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

