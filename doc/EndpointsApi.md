# azure_devops_sdk.api.EndpointsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](EndpointsApi.md#callGet) | **GET** /{organization}/{project}/_apis/serviceendpoint/endpoints/{endpointId} | 
[**create**](EndpointsApi.md#create) | **POST** /{organization}/{project}/_apis/serviceendpoint/endpoints | 
[**delete**](EndpointsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/serviceendpoint/endpoints/{endpointId} | 
[**get Service Endpoints By Names**](EndpointsApi.md#get Service Endpoints By Names) | **GET** /{organization}/{project}/_apis/serviceendpoint/endpoints | 
[**update Service Endpoint**](EndpointsApi.md#update Service Endpoint) | **PUT** /{organization}/{project}/_apis/serviceendpoint/endpoints/{endpointId} | 
[**update Service Endpoints**](EndpointsApi.md#update Service Endpoints) | **PUT** /{organization}/{project}/_apis/serviceendpoint/endpoints | 


# **callGet**
> ServiceEndpoint callGet(organization, project, endpointId, apiVersion)



Get the service endpoint details.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EndpointsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var endpointId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the service endpoint.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, endpointId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling EndpointsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **endpointId** | [**String**](.md)| Id of the service endpoint. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

[**ServiceEndpoint**](ServiceEndpoint.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> ServiceEndpoint create(organization, project, apiVersion, body)



Create a service endpoint.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EndpointsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = ServiceEndpoint(); // ServiceEndpoint | Service endpoint to create.

try { 
    var result = api_instance.create(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling EndpointsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**ServiceEndpoint**](ServiceEndpoint.md)| Service endpoint to create. | 

### Return type

[**ServiceEndpoint**](ServiceEndpoint.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, endpointId, apiVersion, deep)



Delete a service endpoint.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EndpointsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var endpointId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the service endpoint to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var deep = true; // bool | Specific to AzureRM endpoint created in Automatic flow. When set to true, this will also delete corresponding AAD application in Azure. Default value is true.

try { 
    api_instance.delete(organization, project, endpointId, apiVersion, deep);
} catch (e) {
    print("Exception when calling EndpointsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **endpointId** | [**String**](.md)| Id of the service endpoint to delete. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **deep** | **bool**| Specific to AzureRM endpoint created in Automatic flow. When set to true, this will also delete corresponding AAD application in Azure. Default value is true. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Service Endpoints By Names**
> List<ServiceEndpoint> get Service Endpoints By Names(organization, project, endpointNames, apiVersion, type, authSchemes, owner, includeFailed, includeDetails)



Get the service endpoints by name.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EndpointsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var endpointNames = endpointNames_example; // String | Names of the service endpoints.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var type = type_example; // String | Type of the service endpoints.
var authSchemes = authSchemes_example; // String | Authorization schemes used for service endpoints.
var owner = owner_example; // String | Owner for service endpoints.
var includeFailed = true; // bool | Failed flag for service endpoints.
var includeDetails = true; // bool | Flag to include more details for service endpoints. This is for internal use only and the flag will be treated as false for all other requests

try { 
    var result = api_instance.get Service Endpoints By Names(organization, project, endpointNames, apiVersion, type, authSchemes, owner, includeFailed, includeDetails);
    print(result);
} catch (e) {
    print("Exception when calling EndpointsApi->get Service Endpoints By Names: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **endpointNames** | **String**| Names of the service endpoints. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **type** | **String**| Type of the service endpoints. | [optional] [default to null]
 **authSchemes** | **String**| Authorization schemes used for service endpoints. | [optional] [default to null]
 **owner** | **String**| Owner for service endpoints. | [optional] [default to null]
 **includeFailed** | **bool**| Failed flag for service endpoints. | [optional] [default to null]
 **includeDetails** | **bool**| Flag to include more details for service endpoints. This is for internal use only and the flag will be treated as false for all other requests | [optional] [default to null]

### Return type

[**List<ServiceEndpoint>**](ServiceEndpoint.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Service Endpoint**
> ServiceEndpoint update Service Endpoint(organization, project, endpointId, apiVersion, body, operation)



Update a service endpoint.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EndpointsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var endpointId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the service endpoint to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = ServiceEndpoint(); // ServiceEndpoint | Service endpoint to update.
var operation = operation_example; // String | Operation for the service endpoint.

try { 
    var result = api_instance.update Service Endpoint(organization, project, endpointId, apiVersion, body, operation);
    print(result);
} catch (e) {
    print("Exception when calling EndpointsApi->update Service Endpoint: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **endpointId** | [**String**](.md)| Id of the service endpoint to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**ServiceEndpoint**](ServiceEndpoint.md)| Service endpoint to update. | 
 **operation** | **String**| Operation for the service endpoint. | [optional] [default to null]

### Return type

[**ServiceEndpoint**](ServiceEndpoint.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Service Endpoints**
> List<ServiceEndpoint> update Service Endpoints(organization, project, apiVersion, body)



Update the service endpoints.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EndpointsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = [List&lt;ServiceEndpoint&gt;()]; // List<ServiceEndpoint> | Names of the service endpoints to update.

try { 
    var result = api_instance.update Service Endpoints(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling EndpointsApi->update Service Endpoints: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;ServiceEndpoint&gt;**](ServiceEndpoint.md)| Names of the service endpoints to update. | 

### Return type

[**List<ServiceEndpoint>**](ServiceEndpoint.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

