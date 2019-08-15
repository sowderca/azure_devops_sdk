# azure_devops_sdk.api.PublishersApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](PublishersApi.md#callGet) | **GET** /{organization}/_apis/hooks/publishers/{publisherId} | 
[**get Event Type**](PublishersApi.md#get Event Type) | **GET** /{organization}/_apis/hooks/publishers/{publisherId}/eventtypes/{eventTypeId} | 
[**list**](PublishersApi.md#list) | **GET** /{organization}/_apis/hooks/publishers | 
[**list Event Types**](PublishersApi.md#list Event Types) | **GET** /{organization}/_apis/hooks/publishers/{publisherId}/eventtypes | 
[**query Input Values**](PublishersApi.md#query Input Values) | **POST** /{organization}/_apis/hooks/publishers/{publisherId}/inputValuesQuery | 
[**query Publishers**](PublishersApi.md#query Publishers) | **POST** /{organization}/_apis/hooks/publishersquery | 


# **callGet**
> Publisher callGet(organization, publisherId, apiVersion)



Get a specific service hooks publisher.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = PublishersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var publisherId = publisherId_example; // String | ID for a publisher.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, publisherId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PublishersApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **publisherId** | **String**| ID for a publisher. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**Publisher**](Publisher.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Event Type**
> EventTypeDescriptor get Event Type(organization, publisherId, eventTypeId, apiVersion)



Get a specific event type.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = PublishersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var publisherId = publisherId_example; // String | ID for a publisher.
var eventTypeId = eventTypeId_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Event Type(organization, publisherId, eventTypeId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PublishersApi->get Event Type: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **publisherId** | **String**| ID for a publisher. | [default to null]
 **eventTypeId** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**EventTypeDescriptor**](EventTypeDescriptor.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<Publisher> list(organization, apiVersion)



Get a list of publishers.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = PublishersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PublishersApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<Publisher>**](Publisher.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list Event Types**
> List<EventTypeDescriptor> list Event Types(organization, publisherId, apiVersion)



Get the event types for a specific publisher.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = PublishersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var publisherId = publisherId_example; // String | ID for a publisher.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list Event Types(organization, publisherId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling PublishersApi->list Event Types: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **publisherId** | **String**| ID for a publisher. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<EventTypeDescriptor>**](EventTypeDescriptor.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query Input Values**
> InputValuesQuery query Input Values(organization, publisherId, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = PublishersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var publisherId = publisherId_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = InputValuesQuery(); // InputValuesQuery | 

try { 
    var result = api_instance.query Input Values(organization, publisherId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PublishersApi->query Input Values: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **publisherId** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**InputValuesQuery**](InputValuesQuery.md)|  | 

### Return type

[**InputValuesQuery**](InputValuesQuery.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query Publishers**
> PublishersQuery query Publishers(organization, apiVersion, body)



Query for service hook publishers.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = PublishersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = PublishersQuery(); // PublishersQuery | 

try { 
    var result = api_instance.query Publishers(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PublishersApi->query Publishers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**PublishersQuery**](PublishersQuery.md)|  | 

### Return type

[**PublishersQuery**](PublishersQuery.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

