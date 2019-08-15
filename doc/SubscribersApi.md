# azure_devops_sdk.api.SubscribersApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](SubscribersApi.md#callGet) | **GET** /{organization}/_apis/notification/subscribers/{subscriberId} | 
[**update**](SubscribersApi.md#update) | **PATCH** /{organization}/_apis/notification/subscribers/{subscriberId} | 


# **callGet**
> NotificationSubscriber callGet(subscriberId, organization, apiVersion)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SubscribersApi();
var subscriberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(subscriberId, organization, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling SubscribersApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriberId** | [**String**](.md)|  | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**NotificationSubscriber**](NotificationSubscriber.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> NotificationSubscriber update(subscriberId, organization, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SubscribersApi();
var subscriberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = NotificationSubscriberUpdateParameters(); // NotificationSubscriberUpdateParameters | 

try { 
    var result = api_instance.update(subscriberId, organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SubscribersApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriberId** | [**String**](.md)|  | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**NotificationSubscriberUpdateParameters**](NotificationSubscriberUpdateParameters.md)|  | 

### Return type

[**NotificationSubscriber**](NotificationSubscriber.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

