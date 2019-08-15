# azure_devops_sdk.api.UserEntitlementsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](UserEntitlementsApi.md#add) | **POST** /{organization}/_apis/userentitlements | 
[**delete**](UserEntitlementsApi.md#delete) | **DELETE** /{organization}/_apis/userentitlements/{userId} | 
[**get User Entitlement**](UserEntitlementsApi.md#get User Entitlement) | **GET** /{organization}/_apis/userentitlements/{userId} | 
[**get User Entitlements**](UserEntitlementsApi.md#get User Entitlements) | **GET** /{organization}/_apis/userentitlements | 
[**update User Entitlement**](UserEntitlementsApi.md#update User Entitlement) | **PATCH** /{organization}/_apis/userentitlements/{userId} | 
[**update User Entitlements**](UserEntitlementsApi.md#update User Entitlements) | **PATCH** /{organization}/_apis/userentitlements | 


# **add**
> UserEntitlementsPostResponse add(organization, apiVersion, body)



Add a user, assign license and extensions and make them a member of a project group in an account.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UserEntitlementsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = UserEntitlement(); // UserEntitlement | UserEntitlement object specifying License, Extensions and Project/Team groups the user should be added to.

try { 
    var result = api_instance.add(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling UserEntitlementsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**UserEntitlement**](UserEntitlement.md)| UserEntitlement object specifying License, Extensions and Project/Team groups the user should be added to. | 

### Return type

[**UserEntitlementsPostResponse**](UserEntitlementsPostResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, userId, apiVersion)



Delete a user from the account.  The delete operation includes unassigning Extensions and Licenses and removing the user from all project memberships. The user would continue to have access to the account if she is member of an AAD group, that is added directly to the account.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UserEntitlementsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the user.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    api_instance.delete(organization, userId, apiVersion);
} catch (e) {
    print("Exception when calling UserEntitlementsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **userId** | [**String**](.md)| ID of the user. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get User Entitlement**
> UserEntitlement get User Entitlement(organization, userId, apiVersion)



Get User Entitlement for a user.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UserEntitlementsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the user.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.get User Entitlement(organization, userId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling UserEntitlementsApi->get User Entitlement: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **userId** | [**String**](.md)| ID of the user. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

[**UserEntitlement**](UserEntitlement.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get User Entitlements**
> PagedGraphMemberList get User Entitlements(organization, apiVersion, top, skip, filter, sortOption)



Get a paged set of user entitlements matching the filter criteria. If no filter is is passed, a page from all the account users is returned.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UserEntitlementsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var top = 56; // int | Maximum number of the user entitlements to return. Max value is 10000. Default value is 100
var skip = 56; // int | Offset: Number of records to skip. Default value is 0
var filter = filter_example; // String | Comma (\",\") separated list of properties and their values to filter on. Currently, the API only supports filtering by ExtensionId. An example parameter would be filter=extensionId eq search.
var sortOption = sortOption_example; // String | PropertyName and Order (separated by a space ( )) to sort on (e.g. LastAccessDate Desc)

try { 
    var result = api_instance.get User Entitlements(organization, apiVersion, top, skip, filter, sortOption);
    print(result);
} catch (e) {
    print("Exception when calling UserEntitlementsApi->get User Entitlements: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **top** | **int**| Maximum number of the user entitlements to return. Max value is 10000. Default value is 100 | [optional] [default to null]
 **skip** | **int**| Offset: Number of records to skip. Default value is 0 | [optional] [default to null]
 **filter** | **String**| Comma (\&quot;,\&quot;) separated list of properties and their values to filter on. Currently, the API only supports filtering by ExtensionId. An example parameter would be filter&#x3D;extensionId eq search. | [optional] [default to null]
 **sortOption** | **String**| PropertyName and Order (separated by a space ( )) to sort on (e.g. LastAccessDate Desc) | [optional] [default to null]

### Return type

[**PagedGraphMemberList**](PagedGraphMemberList.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update User Entitlement**
> UserEntitlementsPatchResponse update User Entitlement(organization, userId, apiVersion, body)



Edit the entitlements (License, Extensions, Projects, Teams etc) for a user.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UserEntitlementsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the user.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = JsonPatchDocument(); // JsonPatchDocument | JsonPatchDocument containing the operations to perform on the user.

try { 
    var result = api_instance.update User Entitlement(organization, userId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling UserEntitlementsApi->update User Entitlement: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **userId** | [**String**](.md)| ID of the user. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| JsonPatchDocument containing the operations to perform on the user. | 

### Return type

[**UserEntitlementsPatchResponse**](UserEntitlementsPatchResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update User Entitlements**
> UserEntitlementOperationReference update User Entitlements(organization, apiVersion, body, doNotSendInviteForNewUsers)



Edit the entitlements (License, Extensions, Projects, Teams etc) for one or more users.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UserEntitlementsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = JsonPatchDocument(); // JsonPatchDocument | JsonPatchDocument containing the operations to perform.
var doNotSendInviteForNewUsers = true; // bool | Whether to send email invites to new users or not

try { 
    var result = api_instance.update User Entitlements(organization, apiVersion, body, doNotSendInviteForNewUsers);
    print(result);
} catch (e) {
    print("Exception when calling UserEntitlementsApi->update User Entitlements: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| JsonPatchDocument containing the operations to perform. | 
 **doNotSendInviteForNewUsers** | **bool**| Whether to send email invites to new users or not | [optional] [default to null]

### Return type

[**UserEntitlementOperationReference**](UserEntitlementOperationReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

