# azure_devops_sdk.api.MembersApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](MembersApi.md#add) | **PUT** /{organization}/_apis/GroupEntitlements/{groupId}/members/{memberId} | 
[**callGet**](MembersApi.md#callGet) | **GET** /{organization}/_apis/GroupEntitlements/{groupId}/members | 
[**remove Member From Group**](MembersApi.md#remove Member From Group) | **DELETE** /{organization}/_apis/GroupEntitlements/{groupId}/members/{memberId} | 


# **add**
> add(organization, groupId, memberId, apiVersion)



Add a member to a Group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = MembersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the Group.
var memberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the member to add.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.add(organization, groupId, memberId, apiVersion);
} catch (e) {
    print("Exception when calling MembersApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **groupId** | [**String**](.md)| Id of the Group. | [default to null]
 **memberId** | [**String**](.md)| Id of the member to add. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> PagedGraphMemberList callGet(organization, groupId, apiVersion, maxResults, pagingToken)



Get direct members of a Group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MembersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the Group.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var maxResults = 56; // int | Maximum number of results to retrieve.
var pagingToken = pagingToken_example; // String | Paging Token from the previous page fetched. If the 'pagingToken' is null, the results would be fetched from the begining of the Members List.

try { 
    var result = api_instance.callGet(organization, groupId, apiVersion, maxResults, pagingToken);
    print(result);
} catch (e) {
    print("Exception when calling MembersApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **groupId** | [**String**](.md)| Id of the Group. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **maxResults** | **int**| Maximum number of results to retrieve. | [optional] [default to null]
 **pagingToken** | **String**| Paging Token from the previous page fetched. If the &#39;pagingToken&#39; is null, the results would be fetched from the begining of the Members List. | [optional] [default to null]

### Return type

[**PagedGraphMemberList**](PagedGraphMemberList.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove Member From Group**
> remove Member From Group(organization, groupId, memberId, apiVersion)



Remove a member from a Group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MembersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the group.
var memberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the member to remove.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.remove Member From Group(organization, groupId, memberId, apiVersion);
} catch (e) {
    print("Exception when calling MembersApi->remove Member From Group: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **groupId** | [**String**](.md)| Id of the group. | [default to null]
 **memberId** | [**String**](.md)| Id of the member to remove. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

