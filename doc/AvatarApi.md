# azure_devops_sdk.api.AvatarApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**remove Project Avatar**](AvatarApi.md#remove Project Avatar) | **DELETE** /{organization}/_apis/projects/{projectId}/avatar | 
[**set Project Avatar**](AvatarApi.md#set Project Avatar) | **PUT** /{organization}/_apis/projects/{projectId}/avatar | 


# **remove Project Avatar**
> remove Project Avatar(organization, projectId, apiVersion)



Removes the avatar for the project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AvatarApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = projectId_example; // String | The ID or name of the project.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.remove Project Avatar(organization, projectId, apiVersion);
} catch (e) {
    print("Exception when calling AvatarApi->remove Project Avatar: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | **String**| The ID or name of the project. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set Project Avatar**
> set Project Avatar(organization, projectId, apiVersion, body)



Sets the avatar for the project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = AvatarApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = projectId_example; // String | The ID or name of the project.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = ProjectAvatar(); // ProjectAvatar | The avatar blob data object to upload.

try { 
    api_instance.set Project Avatar(organization, projectId, apiVersion, body);
} catch (e) {
    print("Exception when calling AvatarApi->set Project Avatar: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | **String**| The ID or name of the project. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**ProjectAvatar**](ProjectAvatar.md)| The avatar blob data object to upload. | 

### Return type

void (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

