# azure_devops_sdk.api.CommentsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](CommentsApi.md#add) | **POST** /{organization}/{project}/_apis/wit/workItems/{workItemId}/comments | 
[**delete**](CommentsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId} | 
[**get Comment**](CommentsApi.md#get Comment) | **GET** /{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId} | 
[**get Comments Batch**](CommentsApi.md#get Comments Batch) | **GET** /{organization}/{project}/_apis/wit/workItems/{workItemId}/comments | 
[**update**](CommentsApi.md#update) | **PATCH** /{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId} | 


# **add**
> Comment add(organization, project, workItemId, apiVersion, body)



Add a comment on a work item.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var workItemId = 56; // int | Id of a work item.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.3' to use this version of the api.
var body = CommentCreate(); // CommentCreate | Comment create request.

try { 
    var result = api_instance.add(organization, project, workItemId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling CommentsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **workItemId** | **int**| Id of a work item. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.3&#39; to use this version of the api. | [default to null]
 **body** | [**CommentCreate**](CommentCreate.md)| Comment create request. | 

### Return type

[**Comment**](Comment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, workItemId, commentId, apiVersion)



Delete a comment on a work item.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var workItemId = 56; // int | Id of a work item.
var commentId = 56; // int | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.3' to use this version of the api.

try { 
    api_instance.delete(organization, project, workItemId, commentId, apiVersion);
} catch (e) {
    print("Exception when calling CommentsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **workItemId** | **int**| Id of a work item. | [default to null]
 **commentId** | **int**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.3&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Comment**
> Comment get Comment(organization, project, workItemId, commentId, apiVersion, includeDeleted, $expand)



Returns a work item comment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var workItemId = 56; // int | Id of a work item to get the comment.
var commentId = 56; // int | Id of the comment to return.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.3' to use this version of the api.
var includeDeleted = true; // bool | Specify if the deleted comment should be retrieved.
var $expand = $expand_example; // String | Specifies the additional data retrieval options for work item comments.

try { 
    var result = api_instance.get Comment(organization, project, workItemId, commentId, apiVersion, includeDeleted, $expand);
    print(result);
} catch (e) {
    print("Exception when calling CommentsApi->get Comment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **workItemId** | **int**| Id of a work item to get the comment. | [default to null]
 **commentId** | **int**| Id of the comment to return. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.3&#39; to use this version of the api. | [default to null]
 **includeDeleted** | **bool**| Specify if the deleted comment should be retrieved. | [optional] [default to null]
 **$expand** | **String**| Specifies the additional data retrieval options for work item comments. | [optional] [default to null]

### Return type

[**Comment**](Comment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Comments Batch**
> CommentList get Comments Batch(organization, project, workItemId, ids, apiVersion, includeDeleted, $expand)



Returns a list of work item comments by ids.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var workItemId = 56; // int | Id of a work item to get comments for.
var ids = ids_example; // String | Comma-separated list of comment ids to return.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.3' to use this version of the api.
var includeDeleted = true; // bool | Specify if the deleted comments should be retrieved.
var $expand = $expand_example; // String | Specifies the additional data retrieval options for work item comments.

try { 
    var result = api_instance.get Comments Batch(organization, project, workItemId, ids, apiVersion, includeDeleted, $expand);
    print(result);
} catch (e) {
    print("Exception when calling CommentsApi->get Comments Batch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **workItemId** | **int**| Id of a work item to get comments for. | [default to null]
 **ids** | **String**| Comma-separated list of comment ids to return. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.3&#39; to use this version of the api. | [default to null]
 **includeDeleted** | **bool**| Specify if the deleted comments should be retrieved. | [optional] [default to null]
 **$expand** | **String**| Specifies the additional data retrieval options for work item comments. | [optional] [default to null]

### Return type

[**CommentList**](CommentList.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> Comment update(organization, project, workItemId, commentId, apiVersion, body)



Update a comment on a work item.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var workItemId = 56; // int | Id of a work item.
var commentId = 56; // int | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.3' to use this version of the api.
var body = CommentUpdate(); // CommentUpdate | Comment update request.

try { 
    var result = api_instance.update(organization, project, workItemId, commentId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling CommentsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **workItemId** | **int**| Id of a work item. | [default to null]
 **commentId** | **int**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.3&#39; to use this version of the api. | [default to null]
 **body** | [**CommentUpdate**](CommentUpdate.md)| Comment update request. | 

### Return type

[**Comment**](Comment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

