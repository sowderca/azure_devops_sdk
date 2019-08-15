# azure_devops_sdk.api.GroupsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](GroupsApi.md#add) | **POST** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/pages/{pageId}/sections/{sectionId}/groups | 
[**callGet**](GroupsApi.md#callGet) | **GET** /{organization}/_apis/graph/groups/{groupDescriptor} | 
[**create**](GroupsApi.md#create) | **POST** /{organization}/_apis/graph/groups | 
[**delete**](GroupsApi.md#delete) | **DELETE** /{organization}/_apis/graph/groups/{groupDescriptor} | 
[**list**](GroupsApi.md#list) | **GET** /{organization}/_apis/graph/groups | 
[**move Group To Section**](GroupsApi.md#move Group To Section) | **PUT** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/pages/{pageId}/sections/{sectionId}/groups/{groupId} | 
[**remove Group**](GroupsApi.md#remove Group) | **DELETE** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/pages/{pageId}/sections/{sectionId}/groups/{groupId} | 
[**update**](GroupsApi.md#update) | **PATCH** /{organization}/_apis/graph/groups/{groupDescriptor} | 
[**update_0**](GroupsApi.md#update_0) | **PATCH** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/layout/pages/{pageId}/sections/{sectionId}/groups/{groupId} | 


# **add**
> Group add(organization, processId, witRefName, pageId, sectionId, apiVersion, body)



Adds a group to the work item form.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var pageId = pageId_example; // String | The ID of the page to add the group to.
var sectionId = sectionId_example; // String | The ID of the section to add the group to.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Group(); // Group | The group.

try { 
    var result = api_instance.add(organization, processId, witRefName, pageId, sectionId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **pageId** | **String**| The ID of the page to add the group to. | [default to null]
 **sectionId** | **String**| The ID of the section to add the group to. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Group**](Group.md)| The group. | 

### Return type

[**Group**](Group.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> GraphGroup callGet(organization, groupDescriptor, apiVersion)



Get a group by its descriptor.  The group will be returned even if it has been deleted from the account or has had all its memberships deleted.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var groupDescriptor = groupDescriptor_example; // String | The descriptor of the desired graph group.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, groupDescriptor, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **groupDescriptor** | **String**| The descriptor of the desired graph group. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**GraphGroup**](GraphGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> GraphGroup create(organization, apiVersion, body, scopeDescriptor, groupDescriptors)



Create a new Azure DevOps group or materialize an existing AAD group.  The body of the request must be a derived type of GraphGroupCreationContext:   * GraphGroupVstsCreationContext - Create a new Azure DevOps group that is not backed by an external provider.   * GraphGroupMailAddressCreationContext - Create a new group using the mail address as a reference to an existing group from an external AD or AAD backed provider.   * GraphGroupOriginIdCreationContext - Create a new group using the OriginID as a reference to a group from an external AD or AAD backed provider.   Optionally, you can add the newly created group as a member of an existing Azure DevOps group and/or specify a custom storage key for the group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GraphGroupCreationContext(); // GraphGroupCreationContext | The subset of the full graph group used to uniquely find the graph subject in an external provider.
var scopeDescriptor = scopeDescriptor_example; // String | A descriptor referencing the scope (collection, project) in which the group should be created. If omitted, will be created in the scope of the enclosing account or organization. Valid only for VSTS groups.
var groupDescriptors = groupDescriptors_example; // String | A comma separated list of descriptors referencing groups you want the graph group to join

try { 
    var result = api_instance.create(organization, apiVersion, body, scopeDescriptor, groupDescriptors);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GraphGroupCreationContext**](GraphGroupCreationContext.md)| The subset of the full graph group used to uniquely find the graph subject in an external provider. | 
 **scopeDescriptor** | **String**| A descriptor referencing the scope (collection, project) in which the group should be created. If omitted, will be created in the scope of the enclosing account or organization. Valid only for VSTS groups. | [optional] [default to null]
 **groupDescriptors** | **String**| A comma separated list of descriptors referencing groups you want the graph group to join | [optional] [default to null]

### Return type

[**GraphGroup**](GraphGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, groupDescriptor, apiVersion)



Removes an Azure DevOps group from all of its parent groups.  The group will still be visible, but membership  checks for the group, and all descendants which derive membership through it, will return false.â

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var groupDescriptor = groupDescriptor_example; // String | The descriptor of the group to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete(organization, groupDescriptor, apiVersion);
} catch (e) {
    print("Exception when calling GroupsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **groupDescriptor** | **String**| The descriptor of the group to delete. | [default to null]
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
> List<GraphGroup> list(organization, apiVersion, scopeDescriptor, subjectTypes, continuationToken)



Gets a list of all groups in the current scope (usually organization or account).  The optional parameters are used to filter down the returned results. Returned results are in no guaranteed order.   Since the list of groups may be large, results are returned in pages of groups.  If there are more results  than can be returned in a single page, the result set will contain a continuation token for retrieval of the  next set of results.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var scopeDescriptor = scopeDescriptor_example; // String | Specify a non-default scope (collection, project) to search for groups.
var subjectTypes = subjectTypes_example; // String | A comma separated list of user subject subtypes to reduce the retrieved results, e.g. Microsoft.IdentityModel.Claims.ClaimsIdentity
var continuationToken = continuationToken_example; // String | An opaque data blob that allows the next page of data to resume immediately after where the previous page ended. The only reliable way to know if there is more data left is the presence of a continuation token.

try { 
    var result = api_instance.list(organization, apiVersion, scopeDescriptor, subjectTypes, continuationToken);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **scopeDescriptor** | **String**| Specify a non-default scope (collection, project) to search for groups. | [optional] [default to null]
 **subjectTypes** | **String**| A comma separated list of user subject subtypes to reduce the retrieved results, e.g. Microsoft.IdentityModel.Claims.ClaimsIdentity | [optional] [default to null]
 **continuationToken** | **String**| An opaque data blob that allows the next page of data to resume immediately after where the previous page ended. The only reliable way to know if there is more data left is the presence of a continuation token. | [optional] [default to null]

### Return type

[**List<GraphGroup>**](GraphGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **move Group To Section**
> Group move Group To Section(organization, processId, witRefName, pageId, sectionId, groupId, removeFromSectionId, apiVersion, body)



Moves a group to a different section.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var pageId = pageId_example; // String | The ID of the page the group is in.
var sectionId = sectionId_example; // String | The ID of the section the group is in.
var groupId = groupId_example; // String | The ID of the group.
var removeFromSectionId = removeFromSectionId_example; // String | ID of the section to remove the group from.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Group(); // Group | The updated group.

try { 
    var result = api_instance.move Group To Section(organization, processId, witRefName, pageId, sectionId, groupId, removeFromSectionId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->move Group To Section: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **pageId** | **String**| The ID of the page the group is in. | [default to null]
 **sectionId** | **String**| The ID of the section the group is in. | [default to null]
 **groupId** | **String**| The ID of the group. | [default to null]
 **removeFromSectionId** | **String**| ID of the section to remove the group from. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Group**](Group.md)| The updated group. | 

### Return type

[**Group**](Group.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove Group**
> remove Group(organization, processId, witRefName, pageId, sectionId, groupId, apiVersion)



Removes a group from the work item form.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var pageId = pageId_example; // String | The ID of the page the group is in
var sectionId = sectionId_example; // String | The ID of the section to the group is in
var groupId = groupId_example; // String | The ID of the group
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.remove Group(organization, processId, witRefName, pageId, sectionId, groupId, apiVersion);
} catch (e) {
    print("Exception when calling GroupsApi->remove Group: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **pageId** | **String**| The ID of the page the group is in | [default to null]
 **sectionId** | **String**| The ID of the section to the group is in | [default to null]
 **groupId** | **String**| The ID of the group | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> GraphGroup update(organization, groupDescriptor, apiVersion, body)



Update the properties of an Azure DevOps group.  Currently limited to only changing the description and account name.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var groupDescriptor = groupDescriptor_example; // String | The descriptor of the group to modify.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = JsonPatchDocument(); // JsonPatchDocument | The JSON+Patch document containing the fields to alter.

try { 
    var result = api_instance.update(organization, groupDescriptor, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **groupDescriptor** | **String**| The descriptor of the group to modify. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| The JSON+Patch document containing the fields to alter. | 

### Return type

[**GraphGroup**](GraphGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_0**
> Group update_0(organization, processId, witRefName, pageId, sectionId, groupId, apiVersion, body)



Updates a group in the work item form.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process.
var witRefName = witRefName_example; // String | The reference name of the work item type.
var pageId = pageId_example; // String | The ID of the page the group is in.
var sectionId = sectionId_example; // String | The ID of the section the group is in.
var groupId = groupId_example; // String | The ID of the group.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Group(); // Group | The updated group.

try { 
    var result = api_instance.update_0(organization, processId, witRefName, pageId, sectionId, groupId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->update_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process. | [default to null]
 **witRefName** | **String**| The reference name of the work item type. | [default to null]
 **pageId** | **String**| The ID of the page the group is in. | [default to null]
 **sectionId** | **String**| The ID of the section the group is in. | [default to null]
 **groupId** | **String**| The ID of the group. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**Group**](Group.md)| The updated group. | 

### Return type

[**Group**](Group.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

