# azure_devops_sdk.api.WorkItemTypesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](WorkItemTypesApi.md#callGet) | **GET** /{organization}/{project}/_apis/wit/workitemtypes/{type} | 
[**callGet_0**](WorkItemTypesApi.md#callGet_0) | **GET** /{organization}/_apis/work/processes/{processId}/workitemtypes/{witRefName} | 
[**create**](WorkItemTypesApi.md#create) | **POST** /{organization}/_apis/work/processes/{processId}/workitemtypes | 
[**delete**](WorkItemTypesApi.md#delete) | **DELETE** /{organization}/_apis/work/processes/{processId}/workitemtypes/{witRefName} | 
[**list**](WorkItemTypesApi.md#list) | **GET** /{organization}/{project}/_apis/wit/workitemtypes | 
[**list_0**](WorkItemTypesApi.md#list_0) | **GET** /{organization}/_apis/work/processes/{processId}/workitemtypes | 
[**update**](WorkItemTypesApi.md#update) | **PATCH** /{organization}/_apis/work/processes/{processId}/workitemtypes/{witRefName} | 


# **callGet**
> WorkItemType callGet(organization, project, type, apiVersion)



Returns a work item type definition.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var type = type_example; // String | Work item type name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, type, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **type** | **String**| Work item type name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**WorkItemType**](WorkItemType.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> ProcessWorkItemType callGet_0(organization, processId, witRefName, apiVersion, $expand)



Returns a single work item type in a process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var $expand = $expand_example; // String | Flag to determine what properties of work item type to return

try { 
    var result = api_instance.callGet_0(organization, processId, witRefName, apiVersion, $expand);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **$expand** | **String**| Flag to determine what properties of work item type to return | [optional] [default to null]

### Return type

[**ProcessWorkItemType**](ProcessWorkItemType.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> ProcessWorkItemType create(organization, processId, apiVersion, body)



Creates a work item type in the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process on which to create work item type.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = CreateProcessWorkItemTypeRequest(); // CreateProcessWorkItemTypeRequest | 

try { 
    var result = api_instance.create(organization, processId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process on which to create work item type. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**CreateProcessWorkItemTypeRequest**](CreateProcessWorkItemTypeRequest.md)|  | 

### Return type

[**ProcessWorkItemType**](ProcessWorkItemType.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, processId, witRefName, apiVersion)



Removes a work itewm type in the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    api_instance.delete(organization, processId, witRefName, apiVersion);
} catch (e) {
    print("Exception when calling WorkItemTypesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<WorkItemType> list(organization, project, apiVersion)



Returns the list of work item types

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<WorkItemType>**](WorkItemType.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_0**
> List<ProcessWorkItemType> list_0(organization, processId, apiVersion, $expand)



Returns a list of all work item types in a process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var $expand = $expand_example; // String | Flag to determine what properties of work item type to return

try { 
    var result = api_instance.list_0(organization, processId, apiVersion, $expand);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesApi->list_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **$expand** | **String**| Flag to determine what properties of work item type to return | [optional] [default to null]

### Return type

[**List<ProcessWorkItemType>**](ProcessWorkItemType.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> ProcessWorkItemType update(organization, processId, witRefName, apiVersion, body)



Updates a work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = UpdateProcessWorkItemTypeRequest(); // UpdateProcessWorkItemTypeRequest | 

try { 
    var result = api_instance.update(organization, processId, witRefName, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**UpdateProcessWorkItemTypeRequest**](UpdateProcessWorkItemTypeRequest.md)|  | 

### Return type

[**ProcessWorkItemType**](ProcessWorkItemType.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

