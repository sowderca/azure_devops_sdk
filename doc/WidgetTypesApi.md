# azure_devops_sdk.api.WidgetTypesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Widget Metadata**](WidgetTypesApi.md#get Widget Metadata) | **GET** /{organization}/{project}/_apis/dashboard/widgettypes/{contributionId} | 
[**get Widget Types**](WidgetTypesApi.md#get Widget Types) | **GET** /{organization}/{project}/_apis/dashboard/widgettypes | 


# **get Widget Metadata**
> WidgetMetadataResponse get Widget Metadata(organization, contributionId, project, apiVersion)



Get the widget metadata satisfying the specified contribution ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = WidgetTypesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var contributionId = contributionId_example; // String | The ID of Contribution for the Widget
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Widget Metadata(organization, contributionId, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling WidgetTypesApi->get Widget Metadata: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **contributionId** | **String**| The ID of Contribution for the Widget | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**WidgetMetadataResponse**](WidgetMetadataResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Widget Types**
> WidgetTypesResponse get Widget Types(organization, $scope, project, apiVersion)



Get all available widget metadata in alphabetical order.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = WidgetTypesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var $scope = $scope_example; // String | 
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Widget Types(organization, $scope, project, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling WidgetTypesApi->get Widget Types: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **$scope** | **String**|  | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**WidgetTypesResponse**](WidgetTypesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

