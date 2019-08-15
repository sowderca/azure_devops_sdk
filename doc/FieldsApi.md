# azure_devops_sdk.api.FieldsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](FieldsApi.md#add) | **POST** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/fields | 
[**callGet**](FieldsApi.md#callGet) | **GET** /{organization}/{project}/_apis/wit/fields/{fieldNameOrRefName} | 
[**callGet_0**](FieldsApi.md#callGet_0) | **GET** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/fields/{fieldRefName} | 
[**create**](FieldsApi.md#create) | **POST** /{organization}/{project}/_apis/wit/fields | 
[**delete**](FieldsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/wit/fields/{fieldNameOrRefName} | 
[**list**](FieldsApi.md#list) | **GET** /{organization}/{project}/_apis/wit/fields | 
[**list_0**](FieldsApi.md#list_0) | **GET** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/fields | 
[**remove Work Item Type Field**](FieldsApi.md#remove Work Item Type Field) | **DELETE** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/fields/{fieldRefName} | 
[**update**](FieldsApi.md#update) | **PATCH** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/fields/{fieldRefName} | 


# **add**
> ProcessWorkItemTypeField add(organization, processId, witRefName, apiVersion, body)



Adds a field to a work item type.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FieldsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = AddProcessWorkItemTypeFieldRequest(); // AddProcessWorkItemTypeFieldRequest | 

try { 
    var result = api_instance.add(organization, processId, witRefName, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling FieldsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**AddProcessWorkItemTypeFieldRequest**](AddProcessWorkItemTypeFieldRequest.md)|  | 

### Return type

[**ProcessWorkItemTypeField**](ProcessWorkItemTypeField.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> WorkItemField callGet(organization, fieldNameOrRefName, project, apiVersion)



Gets information on a specific field.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FieldsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var fieldNameOrRefName = fieldNameOrRefName_example; // String | Field simple name or reference name
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, fieldNameOrRefName, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling FieldsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **fieldNameOrRefName** | **String**| Field simple name or reference name | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**WorkItemField**](WorkItemField.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> ProcessWorkItemTypeField callGet_0(organization, processId, witRefName, fieldRefName, apiVersion)



Returns a field in a work item type.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FieldsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var fieldRefName = fieldRefName_example; // String | The reference name of the field.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.callGet_0(organization, processId, witRefName, fieldRefName, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling FieldsApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **fieldRefName** | **String**| The reference name of the field. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

[**ProcessWorkItemTypeField**](ProcessWorkItemTypeField.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> WorkItemField create(organization, project, apiVersion, body)



Create a new field.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FieldsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = WorkItemField(); // WorkItemField | New field definition

try { 
    var result = api_instance.create(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling FieldsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**WorkItemField**](WorkItemField.md)| New field definition | 

### Return type

[**WorkItemField**](WorkItemField.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, fieldNameOrRefName, project, apiVersion)



Deletes the field.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = FieldsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var fieldNameOrRefName = fieldNameOrRefName_example; // String | Field simple name or reference name
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, fieldNameOrRefName, project, apiVersion);
} catch (e) {
    print("Exception when calling FieldsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **fieldNameOrRefName** | **String**| Field simple name or reference name | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<WorkItemField> list(organization, project, apiVersion, $expand)



Returns information for all fields.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FieldsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $expand = $expand_example; // String | Use ExtensionFields to include extension fields, otherwise exclude them. Unless the feature flag for this parameter is enabled, extension fields are always included.

try { 
    var result = api_instance.list(organization, project, apiVersion, $expand);
    print(result);
} catch (e) {
    print("Exception when calling FieldsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$expand** | **String**| Use ExtensionFields to include extension fields, otherwise exclude them. Unless the feature flag for this parameter is enabled, extension fields are always included. | [optional] [default to null]

### Return type

[**List<WorkItemField>**](WorkItemField.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_0**
> List<ProcessWorkItemTypeField> list_0(organization, processId, witRefName, apiVersion)



Returns a list of all fields in a work item type.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FieldsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.list_0(organization, processId, witRefName, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling FieldsApi->list_0: $e\n");
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

[**List<ProcessWorkItemTypeField>**](ProcessWorkItemTypeField.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove Work Item Type Field**
> remove Work Item Type Field(organization, processId, witRefName, fieldRefName, apiVersion)



Removes a field from a work item type. Does not permanently delete the field.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FieldsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var fieldRefName = fieldRefName_example; // String | The reference name of the field.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    api_instance.remove Work Item Type Field(organization, processId, witRefName, fieldRefName, apiVersion);
} catch (e) {
    print("Exception when calling FieldsApi->remove Work Item Type Field: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **fieldRefName** | **String**| The reference name of the field. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> ProcessWorkItemTypeField update(organization, processId, witRefName, fieldRefName, apiVersion, body)



Updates a field in a work item type.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = FieldsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var fieldRefName = fieldRefName_example; // String | The reference name of the field.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = UpdateProcessWorkItemTypeFieldRequest(); // UpdateProcessWorkItemTypeFieldRequest | 

try { 
    var result = api_instance.update(organization, processId, witRefName, fieldRefName, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling FieldsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **fieldRefName** | **String**| The reference name of the field. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**UpdateProcessWorkItemTypeFieldRequest**](UpdateProcessWorkItemTypeFieldRequest.md)|  | 

### Return type

[**ProcessWorkItemTypeField**](ProcessWorkItemTypeField.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

