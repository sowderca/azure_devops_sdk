# azure_devops_sdk.api.NotificationsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](NotificationsApi.md#callGet) | **GET** /{organization}/_apis/hooks/subscriptions/{subscriptionId}/notifications/{notificationId} | 
[**create**](NotificationsApi.md#create) | **POST** /{organization}/_apis/hooks/testnotifications | 
[**list**](NotificationsApi.md#list) | **GET** /{organization}/_apis/hooks/subscriptions/{subscriptionId}/notifications | 
[**query**](NotificationsApi.md#query) | **POST** /{organization}/_apis/hooks/notificationsquery | 


# **callGet**
> Notification callGet(organization, subscriptionId, notificationId, apiVersion)



Get a specific notification for a subscription.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = NotificationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subscriptionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID for a subscription.
var notificationId = 56; // int | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, subscriptionId, notificationId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subscriptionId** | [**String**](.md)| ID for a subscription. | [default to null]
 **notificationId** | **int**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**Notification**](Notification.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> Notification create(organization, apiVersion, body, useRealData)



Sends a test notification. This is useful for verifying the configuration of an updated or new service hooks subscription.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = NotificationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = Notification(); // Notification | 
var useRealData = true; // bool | Only allow testing with real data in existing subscriptions.

try { 
    var result = api_instance.create(organization, apiVersion, body, useRealData);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**Notification**](Notification.md)|  | 
 **useRealData** | **bool**| Only allow testing with real data in existing subscriptions. | [optional] [default to null]

### Return type

[**Notification**](Notification.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<Notification> list(organization, subscriptionId, apiVersion, maxResults, status, result)



Get a list of notifications for a specific subscription. A notification includes details about the event, the request to and the response from the consumer service.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = NotificationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subscriptionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID for a subscription.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var maxResults = 56; // int | Maximum number of notifications to return. Default is **100**.
var status = status_example; // String | Get only notifications with this status.
var result = result_example; // String | Get only notifications with this result type.

try { 
    var result = api_instance.list(organization, subscriptionId, apiVersion, maxResults, status, result);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subscriptionId** | [**String**](.md)| ID for a subscription. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **maxResults** | **int**| Maximum number of notifications to return. Default is **100**. | [optional] [default to null]
 **status** | **String**| Get only notifications with this status. | [optional] [default to null]
 **result** | **String**| Get only notifications with this result type. | [optional] [default to null]

### Return type

[**List<Notification>**](Notification.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query**
> NotificationsQuery query(organization, apiVersion, body)



Query for notifications. A notification includes details about the event, the request to and the response from the consumer service.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = NotificationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = NotificationsQuery(); // NotificationsQuery | 

try { 
    var result = api_instance.query(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->query: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**NotificationsQuery**](NotificationsQuery.md)|  | 

### Return type

[**NotificationsQuery**](NotificationsQuery.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

