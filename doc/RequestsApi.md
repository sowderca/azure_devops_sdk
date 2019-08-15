# azure_devops_sdk.api.RequestsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create Requests**](RequestsApi.md#create Requests) | **POST** /{organization}/_apis/symbol/requests | 
[**create Requests Request Id Debug Entries**](RequestsApi.md#create Requests Request Id Debug Entries) | **POST** /{organization}/_apis/symbol/requests/{requestId} | 
[**delete Requests Request Id**](RequestsApi.md#delete Requests Request Id) | **DELETE** /{organization}/_apis/symbol/requests/{requestId} | 
[**delete Requests Request Name**](RequestsApi.md#delete Requests Request Name) | **DELETE** /{organization}/_apis/symbol/requests | 
[**get Requests Request Id**](RequestsApi.md#get Requests Request Id) | **GET** /{organization}/_apis/symbol/requests/{requestId} | 
[**get Requests Request Name**](RequestsApi.md#get Requests Request Name) | **GET** /{organization}/_apis/symbol/requests | 
[**list**](RequestsApi.md#list) | **GET** /{organization}/_apis/distributedtask/agentclouds/{agentCloudId}/requests | 
[**update Requests Request Id**](RequestsApi.md#update Requests Request Id) | **PATCH** /{organization}/_apis/symbol/requests/{requestId} | 
[**update Requests Request Name**](RequestsApi.md#update Requests Request Name) | **PATCH** /{organization}/_apis/symbol/requests | 


# **create Requests**
> Request create Requests(organization, apiVersion, body)



Create a new symbol request.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Request(); // Request | The symbol request to create.

try { 
    var result = api_instance.create Requests(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->create Requests: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Request**](Request.md)| The symbol request to create. | 

### Return type

[**Request**](Request.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create Requests Request Id Debug Entries**
> List<DebugEntry> create Requests Request Id Debug Entries(organization, requestId, collection, apiVersion, body)



Create debug entries for a symbol request as specified by its identifier.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var requestId = requestId_example; // String | The symbol request identifier.
var collection = collection_example; // String | A valid debug entry collection name. Must be \"debugentries\".
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = DebugEntryCreateBatch(); // DebugEntryCreateBatch | A batch that contains debug entries to create.

try { 
    var result = api_instance.create Requests Request Id Debug Entries(organization, requestId, collection, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->create Requests Request Id Debug Entries: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **requestId** | **String**| The symbol request identifier. | [default to null]
 **collection** | **String**| A valid debug entry collection name. Must be \&quot;debugentries\&quot;. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**DebugEntryCreateBatch**](DebugEntryCreateBatch.md)| A batch that contains debug entries to create. | 

### Return type

[**List<DebugEntry>**](DebugEntry.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete Requests Request Id**
> delete Requests Request Id(organization, requestId, apiVersion, synchronous)



Delete a symbol request by request identifier.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var requestId = requestId_example; // String | The symbol request identifier.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var synchronous = true; // bool | If true, delete all the debug entries under this request synchronously in the current session. If false, the deletion will be postponed to a later point and be executed automatically by the system.

try { 
    api_instance.delete Requests Request Id(organization, requestId, apiVersion, synchronous);
} catch (e) {
    print("Exception when calling RequestsApi->delete Requests Request Id: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **requestId** | **String**| The symbol request identifier. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **synchronous** | **bool**| If true, delete all the debug entries under this request synchronously in the current session. If false, the deletion will be postponed to a later point and be executed automatically by the system. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete Requests Request Name**
> delete Requests Request Name(organization, requestName, apiVersion, synchronous)



Delete a symbol request by request name.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var requestName = requestName_example; // String | The symbol request name.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var synchronous = true; // bool | If true, delete all the debug entries under this request synchronously in the current session. If false, the deletion will be postponed to a later point and be executed automatically by the system.

try { 
    api_instance.delete Requests Request Name(organization, requestName, apiVersion, synchronous);
} catch (e) {
    print("Exception when calling RequestsApi->delete Requests Request Name: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **requestName** | **String**| The symbol request name. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **synchronous** | **bool**| If true, delete all the debug entries under this request synchronously in the current session. If false, the deletion will be postponed to a later point and be executed automatically by the system. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Requests Request Id**
> Request get Requests Request Id(organization, requestId, apiVersion)



Get a symbol request by request identifier.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var requestId = requestId_example; // String | The symbol request identifier.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Requests Request Id(organization, requestId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->get Requests Request Id: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **requestId** | **String**| The symbol request identifier. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**Request**](Request.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Requests Request Name**
> Request get Requests Request Name(organization, requestName, apiVersion)



Get a symbol request by request name.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var requestName = requestName_example; // String | The symbol request name.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Requests Request Name(organization, requestName, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->get Requests Request Name: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **requestName** | **String**| The symbol request name. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**Request**](Request.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TaskAgentCloudRequest> list(organization, agentCloudId, apiVersion)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = RequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var agentCloudId = 56; // int | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, agentCloudId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **agentCloudId** | **int**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<TaskAgentCloudRequest>**](TaskAgentCloudRequest.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Requests Request Id**
> Request update Requests Request Id(organization, requestId, apiVersion, body)



Update a symbol request by request identifier.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var requestId = requestId_example; // String | The symbol request identifier.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Request(); // Request | The symbol request.

try { 
    var result = api_instance.update Requests Request Id(organization, requestId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->update Requests Request Id: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **requestId** | **String**| The symbol request identifier. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Request**](Request.md)| The symbol request. | 

### Return type

[**Request**](Request.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Requests Request Name**
> Request update Requests Request Name(organization, requestName, apiVersion, body)



Update a symbol request by request name.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RequestsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var requestName = requestName_example; // String | The symbol request name.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Request(); // Request | The symbol request.

try { 
    var result = api_instance.update Requests Request Name(organization, requestName, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RequestsApi->update Requests Request Name: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **requestName** | **String**| The symbol request name. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Request**](Request.md)| The symbol request. | 

### Return type

[**Request**](Request.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

