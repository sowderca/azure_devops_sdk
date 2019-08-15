# azure_devops_sdk.api.MembershipsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](MembershipsApi.md#add) | **PUT** /{organization}/_apis/graph/memberships/{subjectDescriptor}/{containerDescriptor} | 
[**callGet**](MembershipsApi.md#callGet) | **GET** /{organization}/_apis/graph/memberships/{subjectDescriptor}/{containerDescriptor} | 
[**check Membership Existence**](MembershipsApi.md#check Membership Existence) | **HEAD** /{organization}/_apis/graph/memberships/{subjectDescriptor}/{containerDescriptor} | 
[**list**](MembershipsApi.md#list) | **GET** /{organization}/_apis/graph/Memberships/{subjectDescriptor} | 
[**remove Membership**](MembershipsApi.md#remove Membership) | **DELETE** /{organization}/_apis/graph/memberships/{subjectDescriptor}/{containerDescriptor} | 


# **add**
> GraphMembership add(organization, subjectDescriptor, containerDescriptor, apiVersion)



Create a new membership between a container and subject.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MembershipsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subjectDescriptor = subjectDescriptor_example; // String | A descriptor to a group or user that can be the child subject in the relationship.
var containerDescriptor = containerDescriptor_example; // String | A descriptor to a group that can be the container in the relationship.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.add(organization, subjectDescriptor, containerDescriptor, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling MembershipsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subjectDescriptor** | **String**| A descriptor to a group or user that can be the child subject in the relationship. | [default to null]
 **containerDescriptor** | **String**| A descriptor to a group that can be the container in the relationship. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**GraphMembership**](GraphMembership.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> GraphMembership callGet(organization, subjectDescriptor, containerDescriptor, apiVersion)



Get a membership relationship between a container and subject.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MembershipsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subjectDescriptor = subjectDescriptor_example; // String | A descriptor to the child subject in the relationship.
var containerDescriptor = containerDescriptor_example; // String | A descriptor to the container in the relationship.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, subjectDescriptor, containerDescriptor, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling MembershipsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subjectDescriptor** | **String**| A descriptor to the child subject in the relationship. | [default to null]
 **containerDescriptor** | **String**| A descriptor to the container in the relationship. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**GraphMembership**](GraphMembership.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **check Membership Existence**
> check Membership Existence(organization, subjectDescriptor, containerDescriptor, apiVersion)



Check to see if a membership relationship between a container and subject exists.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MembershipsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subjectDescriptor = subjectDescriptor_example; // String | The group or user that is a child subject of the relationship.
var containerDescriptor = containerDescriptor_example; // String | The group that is the container in the relationship.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.check Membership Existence(organization, subjectDescriptor, containerDescriptor, apiVersion);
} catch (e) {
    print("Exception when calling MembershipsApi->check Membership Existence: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subjectDescriptor** | **String**| The group or user that is a child subject of the relationship. | [default to null]
 **containerDescriptor** | **String**| The group that is the container in the relationship. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<GraphMembership> list(organization, subjectDescriptor, apiVersion, direction, depth)



Get all the memberships where this descriptor is a member in the relationship.  The default value for direction is 'up' meaning return all memberships where the subject is a member (e.g. all groups the subject is a member of).  Alternatively, passing the direction as 'down' will return all memberships where the subject is a container (e.g. all members of the subject group).

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MembershipsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subjectDescriptor = subjectDescriptor_example; // String | Fetch all direct memberships of this descriptor.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var direction = direction_example; // String | Defaults to Up.
var depth = 56; // int | The maximum number of edges to traverse up or down the membership tree. Currently the only supported value is '1'.

try { 
    var result = api_instance.list(organization, subjectDescriptor, apiVersion, direction, depth);
    print(result);
} catch (e) {
    print("Exception when calling MembershipsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subjectDescriptor** | **String**| Fetch all direct memberships of this descriptor. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **direction** | **String**| Defaults to Up. | [optional] [default to null]
 **depth** | **int**| The maximum number of edges to traverse up or down the membership tree. Currently the only supported value is &#39;1&#39;. | [optional] [default to null]

### Return type

[**List<GraphMembership>**](GraphMembership.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove Membership**
> remove Membership(organization, subjectDescriptor, containerDescriptor, apiVersion)



Deletes a membership between a container and subject.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MembershipsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var subjectDescriptor = subjectDescriptor_example; // String | A descriptor to a group or user that is the child subject in the relationship.
var containerDescriptor = containerDescriptor_example; // String | A descriptor to a group that is the container in the relationship.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.remove Membership(organization, subjectDescriptor, containerDescriptor, apiVersion);
} catch (e) {
    print("Exception when calling MembershipsApi->remove Membership: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **subjectDescriptor** | **String**| A descriptor to a group or user that is the child subject in the relationship. | [default to null]
 **containerDescriptor** | **String**| A descriptor to a group that is the container in the relationship. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

