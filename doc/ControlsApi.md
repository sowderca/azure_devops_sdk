# azure_devops_sdk.api.ControlsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ControlsApi.md#create) | **POST** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/groups/{groupId}/controls | 
[**move Control To Group**](ControlsApi.md#move Control To Group) | **PUT** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/groups/{groupId}/controls/{controlId} | 
[**remove Control From Group**](ControlsApi.md#remove Control From Group) | **DELETE** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/groups/{groupId}/controls/{controlId} | 
[**update**](ControlsApi.md#update) | **PATCH** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/groups/{groupId}/controls/{controlId} | 


# **create**
> Control create(organization, processId, witRefName, groupId, apiVersion, body)



Creates a control in a group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ControlsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var groupId = groupId_example; // String | The ID of the group to add the control to.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Control(); // Control | The control.

try { 
    var result = api_instance.create(organization, processId, witRefName, groupId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ControlsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **groupId** | **String**| The ID of the group to add the control to. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Control**](Control.md)| The control. | 

### Return type

[**Control**](Control.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **move Control To Group**
> Control move Control To Group(organization, processId, witRefName, groupId, controlId, apiVersion, body, removeFromGroupId)



Moves a control to a specified group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ControlsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var groupId = groupId_example; // String | The ID of the group to move the control to.
var controlId = controlId_example; // String | The ID of the control.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Control(); // Control | The control.
var removeFromGroupId = removeFromGroupId_example; // String | The group ID to remove the control from.

try { 
    var result = api_instance.move Control To Group(organization, processId, witRefName, groupId, controlId, apiVersion, body, removeFromGroupId);
    print(result);
} catch (e) {
    print("Exception when calling ControlsApi->move Control To Group: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **groupId** | **String**| The ID of the group to move the control to. | [default to null]
 **controlId** | **String**| The ID of the control. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Control**](Control.md)| The control. | 
 **removeFromGroupId** | **String**| The group ID to remove the control from. | [optional] [default to null]

### Return type

[**Control**](Control.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove Control From Group**
> remove Control From Group(organization, processId, witRefName, groupId, controlId, apiVersion)



Removes a control from the work item form.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ControlsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var groupId = groupId_example; // String | The ID of the group.
var controlId = controlId_example; // String | The ID of the control to remove.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.remove Control From Group(organization, processId, witRefName, groupId, controlId, apiVersion);
} catch (e) {
    print("Exception when calling ControlsApi->remove Control From Group: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **groupId** | **String**| The ID of the group. | [default to null]
 **controlId** | **String**| The ID of the control to remove. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> Control update(organization, processId, witRefName, groupId, controlId, apiVersion, body)



Updates a control on the work item form.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ControlsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var groupId = groupId_example; // String | The ID of the group.
var controlId = controlId_example; // String | The ID of the control.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Control(); // Control | The updated control.

try { 
    var result = api_instance.update(organization, processId, witRefName, groupId, controlId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ControlsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **groupId** | **String**| The ID of the group. | [default to null]
 **controlId** | **String**| The ID of the control. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Control**](Control.md)| The updated control. | 

### Return type

[**Control**](Control.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

