# azure_devops_sdk.api.CommentsVersionsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](CommentsVersionsApi.md#callGet) | **GET** /{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId}/versions/{version} | 
[**list**](CommentsVersionsApi.md#list) | **GET** /{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId}/versions | 


# **callGet**
> CommentVersion callGet(organization, project, workItemId, commentId, version, apiVersion)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommentsVersionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var workItemId = 56; // int | 
var commentId = 56; // int | 
var version = 56; // int | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, workItemId, commentId, version, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CommentsVersionsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **workItemId** | **int**|  | [default to null]
 **commentId** | **int**|  | [default to null]
 **version** | **int**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**CommentVersion**](CommentVersion.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<CommentVersion> list(organization, project, workItemId, commentId, apiVersion)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommentsVersionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var workItemId = 56; // int | 
var commentId = 56; // int | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, workItemId, commentId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CommentsVersionsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **workItemId** | **int**|  | [default to null]
 **commentId** | **int**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<CommentVersion>**](CommentVersion.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

