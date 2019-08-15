# azure_devops_sdk.api.ConsumersApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ConsumersApi.md#callGet) | **GET** /{organization}/_apis/hooks/consumers/{consumerId} | 
[**get Consumer Action**](ConsumersApi.md#get Consumer Action) | **GET** /{organization}/_apis/hooks/consumers/{consumerId}/actions/{consumerActionId} | 
[**list**](ConsumersApi.md#list) | **GET** /{organization}/_apis/hooks/consumers | 
[**list Consumer Actions**](ConsumersApi.md#list Consumer Actions) | **GET** /{organization}/_apis/hooks/consumers/{consumerId}/actions | 


# **callGet**
> Consumer callGet(organization, consumerId, apiVersion, publisherId)



Get a specific consumer service. Optionally filter out consumer actions that do not support any event types for the specified publisher.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = ConsumersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var consumerId = consumerId_example; // String | ID for a consumer.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var publisherId = publisherId_example; // String | 

try { 
    var result = api_instance.callGet(organization, consumerId, apiVersion, publisherId);
    print(result);
} catch (e) {
    print("Exception when calling ConsumersApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **consumerId** | **String**| ID for a consumer. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **publisherId** | **String**|  | [optional] [default to null]

### Return type

[**Consumer**](Consumer.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Consumer Action**
> ConsumerAction get Consumer Action(organization, consumerId, consumerActionId, apiVersion, publisherId)



Get details about a specific consumer action.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = ConsumersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var consumerId = consumerId_example; // String | ID for a consumer.
var consumerActionId = consumerActionId_example; // String | ID for a consumerActionId.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var publisherId = publisherId_example; // String | 

try { 
    var result = api_instance.get Consumer Action(organization, consumerId, consumerActionId, apiVersion, publisherId);
    print(result);
} catch (e) {
    print("Exception when calling ConsumersApi->get Consumer Action: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **consumerId** | **String**| ID for a consumer. | [default to null]
 **consumerActionId** | **String**| ID for a consumerActionId. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **publisherId** | **String**|  | [optional] [default to null]

### Return type

[**ConsumerAction**](ConsumerAction.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<Consumer> list(organization, apiVersion, publisherId)



Get a list of available service hook consumer services. Optionally filter by consumers that support at least one event type from the specific publisher.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = ConsumersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var publisherId = publisherId_example; // String | 

try { 
    var result = api_instance.list(organization, apiVersion, publisherId);
    print(result);
} catch (e) {
    print("Exception when calling ConsumersApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **publisherId** | **String**|  | [optional] [default to null]

### Return type

[**List<Consumer>**](Consumer.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list Consumer Actions**
> List<ConsumerAction> list Consumer Actions(organization, consumerId, apiVersion, publisherId)



Get a list of consumer actions for a specific consumer.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = ConsumersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var consumerId = consumerId_example; // String | ID for a consumer.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var publisherId = publisherId_example; // String | 

try { 
    var result = api_instance.list Consumer Actions(organization, consumerId, apiVersion, publisherId);
    print(result);
} catch (e) {
    print("Exception when calling ConsumersApi->list Consumer Actions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **consumerId** | **String**| ID for a consumer. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **publisherId** | **String**|  | [optional] [default to null]

### Return type

[**List<ConsumerAction>**](ConsumerAction.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

