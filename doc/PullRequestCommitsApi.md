# azure_devops_sdk.api.PullRequestCommitsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Pull Request Commits**](PullRequestCommitsApi.md#get Pull Request Commits) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/commits | 
[**get Pull Request Iteration Commits**](PullRequestCommitsApi.md#get Pull Request Iteration Commits) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/iterations/{iterationId}/commits | 


# **get Pull Request Commits**
> List<GitCommitRef> get Pull Request Commits(organization, repositoryId, pullRequestId, project, apiVersion)



Get the commits for the specified pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestCommitsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | ID or name of the repository.
var pullRequestId = 56; // int | ID of the pull request.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Pull Request Commits(organization, repositoryId, pullRequestId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestCommitsApi->get Pull Request Commits: $e\n");
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

### Return type

[**List<GitCommitRef>**](GitCommitRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Pull Request Iteration Commits**
> List<GitCommitRef> get Pull Request Iteration Commits(organization, repositoryId, pullRequestId, iterationId, project, apiVersion, top, skip)



Get the commits for the specified iteration of a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestCommitsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | ID or name of the repository.
var pullRequestId = 56; // int | ID of the pull request.
var iterationId = 56; // int | ID of the iteration from which to get the commits.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var top = 56; // int | Maximum number of commits to return. The maximum number of commits that can be returned per batch is 500.
var skip = 56; // int | Number of commits to skip.

try { 
    var result = api_instance.get Pull Request Iteration Commits(organization, repositoryId, pullRequestId, iterationId, project, apiVersion, top, skip);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestCommitsApi->get Pull Request Iteration Commits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| ID or name of the repository. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **iterationId** | **int**| ID of the iteration from which to get the commits. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **top** | **int**| Maximum number of commits to return. The maximum number of commits that can be returned per batch is 500. | [optional] [default to null]
 **skip** | **int**| Number of commits to skip. | [optional] [default to null]

### Return type

[**List<GitCommitRef>**](GitCommitRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

