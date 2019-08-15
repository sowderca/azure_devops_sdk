# azure_devops_sdk.api.StatesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](StatesApi.md#callGet) | **GET** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states/{stateId} | 
[**create**](StatesApi.md#create) | **POST** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states | 
[**delete**](StatesApi.md#delete) | **DELETE** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states/{stateId} | 
[**hide State Definition**](StatesApi.md#hide State Definition) | **PUT** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states/{stateId} | 
[**list**](StatesApi.md#list) | **GET** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states | 
[**update**](StatesApi.md#update) | **PATCH** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/states/{stateId} | 


# **callGet**
> WorkItemStateResultModel callGet(organization, processId, witRefName, stateId, apiVersion)



Returns a single state definition in a work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = StatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var stateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the state
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, processId, witRefName, stateId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling StatesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **stateId** | [**String**](.md)| The ID of the state | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**WorkItemStateResultModel**](WorkItemStateResultModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> WorkItemStateResultModel create(organization, processId, witRefName, apiVersion, body)



Creates a state definition in the work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = StatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = WorkItemStateInputModel(); // WorkItemStateInputModel | 

try { 
    var result = api_instance.create(organization, processId, witRefName, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling StatesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**WorkItemStateInputModel**](WorkItemStateInputModel.md)|  | 

### Return type

[**WorkItemStateResultModel**](WorkItemStateResultModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, processId, witRefName, stateId, apiVersion)



Removes a state definition in the work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = StatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var stateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the state
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete(organization, processId, witRefName, stateId, apiVersion);
} catch (e) {
    print("Exception when calling StatesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **stateId** | [**String**](.md)| ID of the state | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hide State Definition**
> WorkItemStateResultModel hide State Definition(organization, processId, witRefName, stateId, apiVersion, body)



Hides a state definition in the work item type of the process.Only states with customizationType:System can be hidden.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = StatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var stateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the state
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = HideStateModel(); // HideStateModel | 

try { 
    var result = api_instance.hide State Definition(organization, processId, witRefName, stateId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling StatesApi->hide State Definition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **stateId** | [**String**](.md)| The ID of the state | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**HideStateModel**](HideStateModel.md)|  | 

### Return type

[**WorkItemStateResultModel**](WorkItemStateResultModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<WorkItemStateResultModel> list(organization, processId, witRefName, apiVersion)



Returns a list of all state definitions in a work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = StatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, processId, witRefName, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling StatesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<WorkItemStateResultModel>**](WorkItemStateResultModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> WorkItemStateResultModel update(organization, processId, witRefName, stateId, apiVersion, body)



Updates a given state definition in the work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = StatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var stateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the state
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = WorkItemStateInputModel(); // WorkItemStateInputModel | 

try { 
    var result = api_instance.update(organization, processId, witRefName, stateId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling StatesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **stateId** | [**String**](.md)| ID of the state | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**WorkItemStateInputModel**](WorkItemStateInputModel.md)|  | 

### Return type

[**WorkItemStateResultModel**](WorkItemStateResultModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

