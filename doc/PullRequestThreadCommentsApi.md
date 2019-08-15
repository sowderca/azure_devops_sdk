# azure_devops_sdk.api.PullRequestThreadCommentsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](PullRequestThreadCommentsApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads/{threadId}/comments/{commentId} | 
[**create**](PullRequestThreadCommentsApi.md#create) | **POST** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads/{threadId}/comments | 
[**delete**](PullRequestThreadCommentsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads/{threadId}/comments/{commentId} | 
[**list**](PullRequestThreadCommentsApi.md#list) | **GET** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads/{threadId}/comments | 
[**update**](PullRequestThreadCommentsApi.md#update) | **PATCH** /{organization}/{project}/_apis/git/repositories/{repositoryId}/pullRequests/{pullRequestId}/threads/{threadId}/comments/{commentId} | 


# **callGet**
> Comment callGet(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion)



Retrieve a comment associated with a specific thread in a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestThreadCommentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var threadId = 56; // int | ID of the thread that the desired comment is in.
var commentId = 56; // int | ID of the comment.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestThreadCommentsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **threadId** | **int**| ID of the thread that the desired comment is in. | [default to null]
 **commentId** | **int**| ID of the comment. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**Comment**](Comment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> Comment create(organization, repositoryId, pullRequestId, threadId, project, apiVersion, body)



Create a comment on a specific thread in a pull request (up to 500 comments can be created per thread).

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestThreadCommentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var threadId = 56; // int | ID of the thread that the desired comment is in.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = Comment(); // Comment | The comment to create. Comments can be up to 150,000 characters.

try { 
    var result = api_instance.create(organization, repositoryId, pullRequestId, threadId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestThreadCommentsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **threadId** | **int**| ID of the thread that the desired comment is in. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**Comment**](Comment.md)| The comment to create. Comments can be up to 150,000 characters. | 

### Return type

[**Comment**](Comment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion)



Delete a comment associated with a specific thread in a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestThreadCommentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var threadId = 56; // int | ID of the thread that the desired comment is in.
var commentId = 56; // int | ID of the comment.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion);
} catch (e) {
    print("Exception when calling PullRequestThreadCommentsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **threadId** | **int**| ID of the thread that the desired comment is in. | [default to null]
 **commentId** | **int**| ID of the comment. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<Comment> list(organization, repositoryId, pullRequestId, threadId, project, apiVersion)



Retrieve all comments associated with a specific thread in a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestThreadCommentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var threadId = 56; // int | ID of the thread.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, repositoryId, pullRequestId, threadId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestThreadCommentsApi->list: $e\n");
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

### Return type

[**List<Comment>**](Comment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> Comment update(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion, body)



Update a comment associated with a specific thread in a pull request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PullRequestThreadCommentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var repositoryId = repositoryId_example; // String | The repository ID of the pull request's target branch.
var pullRequestId = 56; // int | ID of the pull request.
var threadId = 56; // int | ID of the thread that the desired comment is in.
var commentId = 56; // int | ID of the comment to update.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = Comment(); // Comment | The comment content that should be updated. Comments can be up to 150,000 characters.

try { 
    var result = api_instance.update(organization, repositoryId, pullRequestId, threadId, commentId, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PullRequestThreadCommentsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **repositoryId** | **String**| The repository ID of the pull request&#39;s target branch. | [default to null]
 **pullRequestId** | **int**| ID of the pull request. | [default to null]
 **threadId** | **int**| ID of the thread that the desired comment is in. | [default to null]
 **commentId** | **int**| ID of the comment to update. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**Comment**](Comment.md)| The comment content that should be updated. Comments can be up to 150,000 characters. | 

### Return type

[**Comment**](Comment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

