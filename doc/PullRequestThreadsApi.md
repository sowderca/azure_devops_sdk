# azure_devops_sdk.api.PullRequestThreadsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](PullRequestThreadsApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads/{threadId} | 
[**create**](PullRequestThreadsApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads | 
[**list**](PullRequestThreadsApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads | 
[**update**](PullRequestThreadsApi.md#update) | **PATCH** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads/{threadId} | 


# **callGet**
> GitPullRequestCommentThread callGet(organization, repositoryId, pullRequestId, threadId, project, apiVersion, $iteration, $baseIteration)



Retrieve a thread in a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestThreadsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var threadId = 56; // int | ID of the thread.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $iteration = 56; // int | If specified, thread position will be tracked using this iteration as the right side of the diff.
var $baseIteration = 56; // int | If specified, thread position will be tracked using this iteration as the left side of the diff.

try { 
    var result = api_instance.callGet(organization, repositoryId, pullRequestId, threadId, project, apiVersion, $iteration, $baseIteration);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestThreadsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **threadId** | **int**| ID of the thread. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$iteration** | **int**| If specified, thread position will be tracked using this iteration as the right side of the diff. | [optional] [default to null]
 **$baseIteration** | **int**| If specified, thread position will be tracked using this iteration as the left side of the diff. | [optional] [default to null]

### Return type

[**GitPullRequestCommentThread**](GitPullRequestCommentThread.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> GitPullRequestCommentThread create(organization, repositoryId, pullRequestId, project, apiVersion, body)



Create a thread in a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestThreadsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | Repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = GitPullRequestCommentThread(); // GitPullRequestCommentThread | The thread to create. Thread must contain at least one comment.

try { 
    var result = api_instance.create(organization, repositoryId, pullRequestId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestThreadsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| Repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitPullRequestCommentThread**](GitPullRequestCommentThread.md)| The thread to create. Thread must contain at least one comment. | 

### Return type

[**GitPullRequestCommentThread**](GitPullRequestCommentThread.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<GitPullRequestCommentThread> list(organization, repositoryId, pullRequestId, project, apiVersion, $iteration, $baseIteration)



Retrieve all threads in a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestThreadsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $iteration = 56; // int | If specified, thread positions will be tracked using this iteration as the right side of the diff.
var $baseIteration = 56; // int | If specified, thread positions will be tracked using this iteration as the left side of the diff.

try { 
    var result = api_instance.list(organization, repositoryId, pullRequestId, project, apiVersion, $iteration, $baseIteration);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestThreadsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$iteration** | **int**| If specified, thread positions will be tracked using this iteration as the right side of the diff. | [optional] [default to null]
 **$baseIteration** | **int**| If specified, thread positions will be tracked using this iteration as the left side of the diff. | [optional] [default to null]

### Return type

[**List<GitPullRequestCommentThread>**](GitPullRequestCommentThread.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> GitPullRequestCommentThread update(organization, repositoryId, pullRequestId, threadId, project, apiVersion, body)



Update a thread in a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestThreadsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var threadId = 56; // int | ID of the thread to update.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = GitPullRequestCommentThread(); // GitPullRequestCommentThread | The thread content that should be updated.

try { 
    var result = api_instance.update(organization, repositoryId, pullRequestId, threadId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestThreadsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **threadId** | **int**| ID of the thread to update. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**GitPullRequestCommentThread**](GitPullRequestCommentThread.md)| The thread content that should be updated. | 

### Return type

[**GitPullRequestCommentThread**](GitPullRequestCommentThread.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

