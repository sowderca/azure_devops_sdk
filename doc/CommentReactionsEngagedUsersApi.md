# azure_devops_sdk.api.CommentReactionsEngagedUsersApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](CommentReactionsEngagedUsersApi.md#list) | **GET** /{organization}/{project}/_apis/wit/workItems/{workItemId}/comments/{commentId}/reactions/{reactionType}/users | 


# **list**
> List<IdentityRef> list(organization, project, workItemId, commentId, reactionType, apiVersion, $top, $skip)



Get users who reacted on the comment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CommentReactionsEngagedUsersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var workItemId = 56; // int | WorkItem ID.
var commentId = 56; // int | Comment ID.
var reactionType = reactionType_example; // String | Type of the reaction.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var $top = 56; // int | 
var $skip = 56; // int | 

try { 
    var result = api_instance.list(organization, project, workItemId, commentId, reactionType, apiVersion, $top, $skip);
    print(result);
} catch (e) {
    print("Exception when calling CommentReactionsEngagedUsersApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **workItemId** | **int**| WorkItem ID. | [default to null]
 **commentId** | **int**| Comment ID. | [default to null]
 **reactionType** | **String**| Type of the reaction. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **$top** | **int**|  | [optional] [default to null]
 **$skip** | **int**|  | [optional] [default to null]

### Return type

[**List<IdentityRef>**](IdentityRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

