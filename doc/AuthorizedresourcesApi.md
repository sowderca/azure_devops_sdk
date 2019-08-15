# azure_devops_sdk.api.AuthorizedresourcesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize Project Resources**](AuthorizedresourcesApi.md#authorize Project Resources) | **PATCH** /{organization}/{project}/_apis/build/authorizedresources | 
[**list**](AuthorizedresourcesApi.md#list) | **GET** /{organization}/{project}/_apis/build/authorizedresources | 


# **authorize Project Resources**
> List<DefinitionResourceReference> authorize Project Resources(organization, project, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = AuthorizedresourcesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = [List&lt;DefinitionResourceReference&gt;()]; // List<DefinitionResourceReference> | 

try { 
    var result = api_instance.authorize Project Resources(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling AuthorizedresourcesApi->authorize Project Resources: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;DefinitionResourceReference&gt;**](DefinitionResourceReference.md)|  | 

### Return type

[**List<DefinitionResourceReference>**](DefinitionResourceReference.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<DefinitionResourceReference> list(organization, project, apiVersion, type, id)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = AuthorizedresourcesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var type = type_example; // String | 
var id = id_example; // String | 

try { 
    var result = api_instance.list(organization, project, apiVersion, type, id);
    print(result);
} catch (e) {
    print("Exception when calling AuthorizedresourcesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **type** | **String**|  | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List<DefinitionResourceReference>**](DefinitionResourceReference.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

