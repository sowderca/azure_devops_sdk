# azure_devops_sdk.api.DiagnosticsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](DiagnosticsApi.md#callGet) | **GET** /{organization}/_apis/notification/subscriptions/{subscriptionId}/diagnostics | 
[**callGet_0**](DiagnosticsApi.md#callGet_0) | **GET** /{organization}/_apis/hooks/subscriptions/{subscriptionId}/diagnostics | 
[**update**](DiagnosticsApi.md#update) | **PUT** /{organization}/_apis/notification/subscriptions/{subscriptionId}/diagnostics | 
[**update_0**](DiagnosticsApi.md#update_0) | **PUT** /{organization}/_apis/hooks/subscriptions/{subscriptionId}/diagnostics | 


# **callGet**
> SubscriptionDiagnostics callGet(subscriptionId, organization, apiVersion)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DiagnosticsApi();
var subscriptionId = subscriptionId_example; // String | 
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(subscriptionId, organization, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling DiagnosticsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **String**|  | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**SubscriptionDiagnostics**](SubscriptionDiagnostics.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> SubscriptionDiagnostics callGet_0(organization, subscriptionId, apiVersion)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = DiagnosticsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subscriptionId = subscriptionId_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet_0(organization, subscriptionId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling DiagnosticsApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subscriptionId** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**SubscriptionDiagnostics**](SubscriptionDiagnostics.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> SubscriptionDiagnostics update(subscriptionId, organization, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DiagnosticsApi();
var subscriptionId = subscriptionId_example; // String | 
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = UpdateSubscripitonDiagnosticsParameters(); // UpdateSubscripitonDiagnosticsParameters | 

try { 
    var result = api_instance.update(subscriptionId, organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling DiagnosticsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **String**|  | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**UpdateSubscripitonDiagnosticsParameters**](UpdateSubscripitonDiagnosticsParameters.md)|  | 

### Return type

[**SubscriptionDiagnostics**](SubscriptionDiagnostics.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_0**
> SubscriptionDiagnostics update_0(organization, subscriptionId, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = DiagnosticsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subscriptionId = subscriptionId_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = UpdateSubscripitonDiagnosticsParameters(); // UpdateSubscripitonDiagnosticsParameters | 

try { 
    var result = api_instance.update_0(organization, subscriptionId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling DiagnosticsApi->update_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subscriptionId** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**UpdateSubscripitonDiagnosticsParameters**](UpdateSubscripitonDiagnosticsParameters.md)|  | 

### Return type

[**SubscriptionDiagnostics**](SubscriptionDiagnostics.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

