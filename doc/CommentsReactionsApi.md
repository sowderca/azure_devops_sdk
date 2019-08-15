# azure_devops_sdk.api.CommentsReactionsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CommentsReactionsApi.md#create) | **PUT** /{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId}/reactions/{reactionType} | 
[**delete**](CommentsReactionsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId}/reactions/{reactionType} | 
[**list**](CommentsReactionsApi.md#list) | **GET** /{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId}/reactions | 


# **create**
> CommentReaction create(organization, project, workItemId, commentId, reactionType, apiVersion)



Adds a new reaction to a comment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = CommentsReactionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var workItemId = 56; // int | WorkItem ID
var commentId = 56; // int | Comment ID
var reactionType = reactionType_example; // String | Type of the reaction
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.create(organization, project, workItemId, commentId, reactionType, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CommentsReactionsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **workItemId** | **int**| WorkItem ID | [default to null]
 **commentId** | **int**| Comment ID | [default to null]
 **reactionType** | **String**| Type of the reaction | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**CommentReaction**](CommentReaction.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> CommentReaction delete(organization, project, workItemId, commentId, reactionType, apiVersion)



Deletes an existing reaction on a comment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommentsReactionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var workItemId = 56; // int | WorkItem ID
var commentId = 56; // int | Comment ID
var reactionType = reactionType_example; // String | Type of the reaction
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.delete(organization, project, workItemId, commentId, reactionType, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CommentsReactionsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **workItemId** | **int**| WorkItem ID | [default to null]
 **commentId** | **int**| Comment ID | [default to null]
 **reactionType** | **String**| Type of the reaction | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**CommentReaction**](CommentReaction.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<CommentReaction> list(organization, project, workItemId, commentId, apiVersion)



Gets reactions of a comment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommentsReactionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var workItemId = 56; // int | WorkItem ID
var commentId = 56; // int | Comment ID
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, workItemId, commentId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CommentsReactionsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **workItemId** | **int**| WorkItem ID | [default to null]
 **commentId** | **int**| Comment ID | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<CommentReaction>**](CommentReaction.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

