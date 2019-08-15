# azure_devops_sdk.api.SubscriptionsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](SubscriptionsApi.md#callGet) | **GET** /{organization}/_apis/notification/subscriptions/{subscriptionId} | 
[**callGet_0**](SubscriptionsApi.md#callGet_0) | **GET** /{organization}/_apis/hooks/subscriptions/{subscriptionId} | 
[**create**](SubscriptionsApi.md#create) | **POST** /{organization}/_apis/notification/subscriptions | 
[**create Subscriptions Query**](SubscriptionsApi.md#create Subscriptions Query) | **POST** /{organization}/_apis/hooks/subscriptionsquery | 
[**create_0**](SubscriptionsApi.md#create_0) | **POST** /{organization}/_apis/hooks/subscriptions | 
[**delete**](SubscriptionsApi.md#delete) | **DELETE** /{organization}/_apis/notification/subscriptions/{subscriptionId} | 
[**delete_0**](SubscriptionsApi.md#delete_0) | **DELETE** /{organization}/_apis/hooks/subscriptions/{subscriptionId} | 
[**get Subscription Templates**](SubscriptionsApi.md#get Subscription Templates) | **GET** /{organization}/_apis/notification/subscriptiontemplates | 
[**list**](SubscriptionsApi.md#list) | **GET** /{organization}/_apis/notification/subscriptions | 
[**list_0**](SubscriptionsApi.md#list_0) | **GET** /{organization}/_apis/hooks/subscriptions | 
[**query**](SubscriptionsApi.md#query) | **POST** /{organization}/_apis/notification/subscriptionquery | 
[**replace Subscription**](SubscriptionsApi.md#replace Subscription) | **PUT** /{organization}/_apis/hooks/subscriptions/{subscriptionId} | 
[**update**](SubscriptionsApi.md#update) | **PATCH** /{organization}/_apis/notification/subscriptions/{subscriptionId} | 
[**update Subscription User Settings**](SubscriptionsApi.md#update Subscription User Settings) | **PUT** /{organization}/_apis/notification/Subscriptions/{subscriptionId}/usersettings/{userId} | 


# **callGet**
> NotificationSubscription callGet(subscriptionId, organization, apiVersion, queryFlags)



Get a notification subscription by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SubscriptionsApi();
var subscriptionId = subscriptionId_example; // String | 
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var queryFlags = queryFlags_example; // String | 

try { 
    var result = api_instance.callGet(subscriptionId, organization, apiVersion, queryFlags);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **String**|  | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **queryFlags** | **String**|  | [optional] [default to null]

### Return type

[**NotificationSubscription**](NotificationSubscription.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> Subscription callGet_0(organization, subscriptionId, apiVersion)



Get a specific service hooks subscription.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SubscriptionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subscriptionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID for a subscription.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet_0(organization, subscriptionId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subscriptionId** | [**String**](.md)| ID for a subscription. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**Subscription**](Subscription.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> NotificationSubscription create(organization, apiVersion, body)



Create a new subscription.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SubscriptionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = NotificationSubscriptionCreateParameters(); // NotificationSubscriptionCreateParameters | 

try { 
    var result = api_instance.create(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**NotificationSubscriptionCreateParameters**](NotificationSubscriptionCreateParameters.md)|  | 

### Return type

[**NotificationSubscription**](NotificationSubscription.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create Subscriptions Query**
> SubscriptionsQuery create Subscriptions Query(organization, apiVersion, body)



Query for service hook subscriptions.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SubscriptionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = SubscriptionsQuery(); // SubscriptionsQuery | 

try { 
    var result = api_instance.create Subscriptions Query(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->create Subscriptions Query: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**SubscriptionsQuery**](SubscriptionsQuery.md)|  | 

### Return type

[**SubscriptionsQuery**](SubscriptionsQuery.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_0**
> Subscription create_0(organization, apiVersion, body)



Create a subscription.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SubscriptionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = Subscription(); // Subscription | Subscription to be created.

try { 
    var result = api_instance.create_0(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->create_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**Subscription**](Subscription.md)| Subscription to be created. | 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(subscriptionId, organization, apiVersion)



Delete a subscription.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SubscriptionsApi();
var subscriptionId = subscriptionId_example; // String | 
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(subscriptionId, organization, apiVersion);
} catch (e) {
    print("Exception when calling SubscriptionsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **String**|  | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_0**
> delete_0(organization, subscriptionId, apiVersion)



Delete a specific service hooks subscription.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SubscriptionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subscriptionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID for a subscription.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete_0(organization, subscriptionId, apiVersion);
} catch (e) {
    print("Exception when calling SubscriptionsApi->delete_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subscriptionId** | [**String**](.md)| ID for a subscription. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Subscription Templates**
> List<NotificationSubscriptionTemplate> get Subscription Templates(organization, apiVersion)



Get available subscription templates.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SubscriptionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Subscription Templates(organization, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->get Subscription Templates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<NotificationSubscriptionTemplate>**](NotificationSubscriptionTemplate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<NotificationSubscription> list(organization, apiVersion, targetId, ids, queryFlags)



Get a list of notification subscriptions, either by subscription IDs or by all subscriptions for a given user or group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SubscriptionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var targetId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | User or Group ID
var ids = ids_example; // String | List of subscription IDs
var queryFlags = queryFlags_example; // String | 

try { 
    var result = api_instance.list(organization, apiVersion, targetId, ids, queryFlags);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **targetId** | [**String**](.md)| User or Group ID | [optional] [default to null]
 **ids** | **String**| List of subscription IDs | [optional] [default to null]
 **queryFlags** | **String**|  | [optional] [default to null]

### Return type

[**List<NotificationSubscription>**](NotificationSubscription.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_0**
> List<Subscription> list_0(organization, apiVersion, publisherId, eventType, consumerId, consumerActionId)



Get a list of subscriptions.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SubscriptionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var publisherId = publisherId_example; // String | ID for a subscription.
var eventType = eventType_example; // String | The event type to filter on (if any).
var consumerId = consumerId_example; // String | ID for a consumer.
var consumerActionId = consumerActionId_example; // String | ID for a consumerActionId.

try { 
    var result = api_instance.list_0(organization, apiVersion, publisherId, eventType, consumerId, consumerActionId);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->list_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **publisherId** | **String**| ID for a subscription. | [optional] [default to null]
 **eventType** | **String**| The event type to filter on (if any). | [optional] [default to null]
 **consumerId** | **String**| ID for a consumer. | [optional] [default to null]
 **consumerActionId** | **String**| ID for a consumerActionId. | [optional] [default to null]

### Return type

[**List<Subscription>**](Subscription.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query**
> List<NotificationSubscription> query(organization, apiVersion, body)



Query for subscriptions. A subscription is returned if it matches one or more of the specified conditions.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SubscriptionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = SubscriptionQuery(); // SubscriptionQuery | 

try { 
    var result = api_instance.query(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->query: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**SubscriptionQuery**](SubscriptionQuery.md)|  | 

### Return type

[**List<NotificationSubscription>**](NotificationSubscription.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replace Subscription**
> Subscription replace Subscription(organization, subscriptionId, apiVersion, body)



Update a subscription. <param name=\"subscriptionId\">ID for a subscription that you wish to update.</param>

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = SubscriptionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subscriptionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = Subscription(); // Subscription | 

try { 
    var result = api_instance.replace Subscription(organization, subscriptionId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->replace Subscription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subscriptionId** | [**String**](.md)|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**Subscription**](Subscription.md)|  | 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> NotificationSubscription update(subscriptionId, organization, apiVersion, body)



Update an existing subscription. Depending on the type of subscription and permissions, the caller can update the description, filter settings, channel (delivery) settings and more.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SubscriptionsApi();
var subscriptionId = subscriptionId_example; // String | 
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = NotificationSubscriptionUpdateParameters(); // NotificationSubscriptionUpdateParameters | 

try { 
    var result = api_instance.update(subscriptionId, organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **String**|  | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**NotificationSubscriptionUpdateParameters**](NotificationSubscriptionUpdateParameters.md)|  | 

### Return type

[**NotificationSubscription**](NotificationSubscription.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Subscription User Settings**
> SubscriptionUserSettings update Subscription User Settings(subscriptionId, userId, organization, apiVersion, body)



Update the specified user's settings for the specified subscription. This API is typically used to opt in or out of a shared subscription. User settings can only be applied to shared subscriptions, like team subscriptions or default subscriptions.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SubscriptionsApi();
var subscriptionId = subscriptionId_example; // String | 
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the user
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = SubscriptionUserSettings(); // SubscriptionUserSettings | 

try { 
    var result = api_instance.update Subscription User Settings(subscriptionId, userId, organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SubscriptionsApi->update Subscription User Settings: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **String**|  | [default to null]
 **userId** | [**String**](.md)| ID of the user | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**SubscriptionUserSettings**](SubscriptionUserSettings.md)|  | 

### Return type

[**SubscriptionUserSettings**](SubscriptionUserSettings.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

