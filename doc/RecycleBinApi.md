# azure_devops_sdk.api.RecyclebinApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](RecyclebinApi.md#callGet) | **GET** /{organization}/{project}/_apis/wit/recyclebin/{id} | 
[**destroy Work Item**](RecyclebinApi.md#destroy Work Item) | **DELETE** /{organization}/{project}/_apis/wit/recyclebin/{id} | 
[**get Deleted Work Item Shallow References**](RecyclebinApi.md#get Deleted Work Item Shallow References) | **GET** /{organization}/{project}/_apis/wit/recyclebin | 
[**restore Work Item**](RecyclebinApi.md#restore Work Item) | **PATCH** /{organization}/{project}/_apis/wit/recyclebin/{id} | 


# **callGet**
> WorkItemDelete callGet(organization, id, project, apiVersion)



Gets a deleted work item from Recycle Bin.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RecyclebinApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | ID of the work item to be returned
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, id, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RecyclebinApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**| ID of the work item to be returned | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**WorkItemDelete**](WorkItemDelete.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy Work Item**
> destroy Work Item(organization, id, project, apiVersion)



Destroys the specified work item permanently from the Recycle Bin. This action can not be undone.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RecyclebinApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | ID of the work item to be destroyed permanently
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.destroy Work Item(organization, id, project, apiVersion);
} catch (e) {
    print("Exception when calling RecyclebinApi->destroy Work Item: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**| ID of the work item to be destroyed permanently | [default to null]
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

# **get Deleted Work Item Shallow References**
> List<WorkItemDeleteShallowReference> get Deleted Work Item Shallow References(organization, project, apiVersion)



Gets a list of the IDs and the URLs of the deleted the work items in the Recycle Bin.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RecyclebinApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Deleted Work Item Shallow References(organization, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RecyclebinApi->get Deleted Work Item Shallow References: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<WorkItemDeleteShallowReference>**](WorkItemDeleteShallowReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore Work Item**
> WorkItemDelete restore Work Item(organization, id, project, apiVersion, body)



Restores the deleted work item from Recycle Bin.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RecyclebinApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | ID of the work item to be restored
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = WorkItemDeleteUpdate(); // WorkItemDeleteUpdate | Paylod with instructions to update the IsDeleted flag to false

try { 
    var result = api_instance.restore Work Item(organization, id, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RecyclebinApi->restore Work Item: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**| ID of the work item to be restored | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**WorkItemDeleteUpdate**](WorkItemDeleteUpdate.md)| Paylod with instructions to update the IsDeleted flag to false | 

### Return type

[**WorkItemDelete**](WorkItemDelete.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

