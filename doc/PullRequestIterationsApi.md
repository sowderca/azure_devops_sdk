# azure_devops_sdk.api.PullRequestIterationsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](PullRequestIterationsApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/iterations/{iterationId} | 
[**list**](PullRequestIterationsApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/iterations | 


# **callGet**
> GitPullRequestIteration callGet(organization, repositoryId, pullRequestId, iterationId, project, apiVersion)



Get the specified iteration for a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestIterationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | ID or name of the repository.
var pullRequestId = 56; // int | ID of the pull request.
var iterationId = 56; // int | ID of the pull request iteration to return.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, repositoryId, pullRequestId, iterationId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestIterationsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| ID or name of the repository. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **iterationId** | **int**| ID of the pull request iteration to return. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**GitPullRequestIteration**](GitPullRequestIteration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<GitPullRequestIteration> list(organization, repositoryId, pullRequestId, project, apiVersion, includeCommits)



Get the list of iterations for the specified pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestIterationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | ID or name of the repository.
var pullRequestId = 56; // int | ID of the pull request.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var includeCommits = true; // bool | If true, include the commits associated with each iteration in the response.

try { 
    var result = api_instance.list(organization, repositoryId, pullRequestId, project, apiVersion, includeCommits);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestIterationsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| ID or name of the repository. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **includeCommits** | **bool**| If true, include the commits associated with each iteration in the response. | [optional] [default to null]

### Return type

[**List<GitPullRequestIteration>**](GitPullRequestIteration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

