# azure_devops_sdk.api.OperationsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](OperationsApi.md#callGet) | **GET** /{organization}/_apis/operations/{operationId} | 


# **callGet**
> Operation callGet(operationId, organization, apiVersion, pluginId)



Gets an operation from the the operationId using the given pluginId.  Some scenarios donât require a pluginId. If a pluginId is not included in the call then just the operationId will be used to find an operation.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = OperationsApi();
var operationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID for the operation.
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var pluginId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID for the plugin.

try { 
    var result = api_instance.callGet(operationId, organization, apiVersion, pluginId);
    print(result);
} catch (e) {
    print("Exception when calling OperationsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | [**String**](.md)| The ID for the operation. | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **pluginId** | [**String**](.md)| The ID for the plugin. | [optional] [default to null]

### Return type

[**Operation**](Operation.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

