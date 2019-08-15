# azure_devops_sdk.api.PullRequestCommentLikesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](PullRequestCommentLikesApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads/{threadId}/comments/{commentId}/likes | 
[**delete**](PullRequestCommentLikesApi.md#delete) | **DELETE** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads/{threadId}/comments/{commentId}/likes | 
[**list**](PullRequestCommentLikesApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads/{threadId}/comments/{commentId}/likes | 


# **create**
> create(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion)



Add a like on a comment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestCommentLikesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var threadId = 56; // int | The ID of the thread that contains the comment.
var commentId = 56; // int | The ID of the comment.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.create(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion);
} catch (e) {
    print("Exception when calling PullRequestCommentLikesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **threadId** | **int**| The ID of the thread that contains the comment. | [default to null]
 **commentId** | **int**| The ID of the comment. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion)



Delete a like on a comment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestCommentLikesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var threadId = 56; // int | The ID of the thread that contains the comment.
var commentId = 56; // int | The ID of the comment.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion);
} catch (e) {
    print("Exception when calling PullRequestCommentLikesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **threadId** | **int**| The ID of the thread that contains the comment. | [default to null]
 **commentId** | **int**| The ID of the comment. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<IdentityRef> list(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion)



Get likes for a comment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestCommentLikesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var threadId = 56; // int | The ID of the thread that contains the comment.
var commentId = 56; // int | The ID of the comment.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestCommentLikesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **threadId** | **int**| The ID of the thread that contains the comment. | [default to null]
 **commentId** | **int**| The ID of the comment. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<IdentityRef>**](IdentityRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

