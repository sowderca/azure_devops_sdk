# azure_devops_sdk.api.ProcessesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ProcessesApi.md#callGet) | **GET** /{organization}/_apis/process/processes/{processId} | 
[**callGet_0**](ProcessesApi.md#callGet_0) | **GET** /{organization}/_apis/work/processes/{processTypeId} | 
[**create**](ProcessesApi.md#create) | **POST** /{organization}/_apis/work/processes | 
[**delete**](ProcessesApi.md#delete) | **DELETE** /{organization}/_apis/work/processes/{processTypeId} | 
[**edit Process**](ProcessesApi.md#edit Process) | **PATCH** /{organization}/_apis/work/processes/{processTypeId} | 
[**export Process Template**](ProcessesApi.md#export Process Template) | **GET** /{organization}/_apis/work/processadmin/processes/export/{id} | 
[**import Process Template**](ProcessesApi.md#import Process Template) | **POST** /{organization}/_apis/work/processadmin/processes/import | 
[**import Process Template Status**](ProcessesApi.md#import Process Template Status) | **GET** /{organization}/_apis/work/processadmin/processes/status/{id} | 
[**list**](ProcessesApi.md#list) | **GET** /{organization}/_apis/process/processes | 
[**list_0**](ProcessesApi.md#list_0) | **GET** /{organization}/_apis/work/processes | 


# **callGet**
> Process callGet(organization, processId, apiVersion)



Get a process by ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProcessesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID for a process.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, processId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ProcessesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| ID for a process. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**Process**](Process.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> ProcessInfo callGet_0(organization, processTypeId, apiVersion, $expand)



Get a single process of a specified ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProcessesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processTypeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var $expand = $expand_example; // String | 

try { 
    var result = api_instance.callGet_0(organization, processTypeId, apiVersion, $expand);
    print(result);
} catch (e) {
    print("Exception when calling ProcessesApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processTypeId** | [**String**](.md)|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **$expand** | **String**|  | [optional] [default to null]

### Return type

[**ProcessInfo**](ProcessInfo.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> ProcessInfo create(organization, apiVersion, body)



Creates a process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProcessesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = CreateProcessModel(); // CreateProcessModel | CreateProcessModel.

try { 
    var result = api_instance.create(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ProcessesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**CreateProcessModel**](CreateProcessModel.md)| CreateProcessModel. | 

### Return type

[**ProcessInfo**](ProcessInfo.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, processTypeId, apiVersion)



Removes a process of a specific ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProcessesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processTypeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    api_instance.delete(organization, processTypeId, apiVersion);
} catch (e) {
    print("Exception when calling ProcessesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processTypeId** | [**String**](.md)|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit Process**
> ProcessInfo edit Process(organization, processTypeId, apiVersion, body)



Edit a process of a specific ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProcessesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processTypeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = UpdateProcessModel(); // UpdateProcessModel | 

try { 
    var result = api_instance.edit Process(organization, processTypeId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ProcessesApi->edit Process: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processTypeId** | [**String**](.md)|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**UpdateProcessModel**](UpdateProcessModel.md)|  | 

### Return type

[**ProcessInfo**](ProcessInfo.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **export Process Template**
> String export Process Template(organization, id, apiVersion)



Returns requested process template.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = ProcessesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.export Process Template(organization, id, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ProcessesApi->export Process Template: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | [**String**](.md)| The ID of the process | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import Process Template**
> ProcessImportResult import Process Template(organization, apiVersion, body, ignoreWarnings, replaceExistingTemplate)



Imports a process from zip file.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = ProcessesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = String(); // String | Stream to upload
var ignoreWarnings = true; // bool | Ignores validation warnings. Default value is false.
var replaceExistingTemplate = true; // bool | Replaces the existing template. Default value is true.

try { 
    var result = api_instance.import Process Template(organization, apiVersion, body, ignoreWarnings, replaceExistingTemplate);
    print(result);
} catch (e) {
    print("Exception when calling ProcessesApi->import Process Template: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | **String**| Stream to upload | 
 **ignoreWarnings** | **bool**| Ignores validation warnings. Default value is false. | [optional] [default to null]
 **replaceExistingTemplate** | **bool**| Replaces the existing template. Default value is true. | [optional] [default to null]

### Return type

[**ProcessImportResult**](ProcessImportResult.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import Process Template Status**
> ProcessPromoteStatus import Process Template Status(organization, id, apiVersion)



Tells whether promote has completed for the specified promote job ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = ProcessesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the promote job operation
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.import Process Template Status(organization, id, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ProcessesApi->import Process Template Status: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | [**String**](.md)| The ID of the promote job operation | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**ProcessPromoteStatus**](ProcessPromoteStatus.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<Process> list(organization, apiVersion)



Get a list of processes.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProcessesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ProcessesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<Process>**](Process.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_0**
> List<ProcessInfo> list_0(organization, apiVersion, $expand)



Get list of all processes including system and inherited.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ProcessesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var $expand = $expand_example; // String | 

try { 
    var result = api_instance.list_0(organization, apiVersion, $expand);
    print(result);
} catch (e) {
    print("Exception when calling ProcessesApi->list_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **$expand** | **String**|  | [optional] [default to null]

### Return type

[**List<ProcessInfo>**](ProcessInfo.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

