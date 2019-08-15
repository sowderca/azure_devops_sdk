# azure_devops_sdk.api.UsersApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](UsersApi.md#callGet) | **GET** /{organization}/_apis/graph/users/{userDescriptor} | 
[**create**](UsersApi.md#create) | **POST** /{organization}/_apis/graph/users | 
[**delete**](UsersApi.md#delete) | **DELETE** /{organization}/_apis/graph/users/{userDescriptor} | 
[**list**](UsersApi.md#list) | **GET** /{organization}/_apis/graph/users | 
[**update**](UsersApi.md#update) | **PATCH** /{organization}/_apis/graph/users/{userDescriptor} | 


# **callGet**
> GraphUser callGet(organization, userDescriptor, apiVersion)



Get a user by its descriptor.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UsersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var userDescriptor = userDescriptor_example; // String | The descriptor of the desired user.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, userDescriptor, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **userDescriptor** | **String**| The descriptor of the desired user. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**GraphUser**](GraphUser.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> GraphUser create(organization, apiVersion, body, groupDescriptors)



Materialize an existing AAD or MSA user into the VSTS account.  NOTE: Created users are not active in an account unless they have been explicitly assigned a parent group at creation time or have signed in   and been autolicensed through AAD group memberships.   Adding a user to an account is required before the user can be added to VSTS groups or assigned an asset.   The body of the request must be a derived type of GraphUserCreationContext:   * GraphUserMailAddressCreationContext - Create a new user using the mail address as a reference to an existing user from an external AD or AAD backed provider.   * GraphUserOriginIdCreationContext - Create a new user using the OriginID as a reference to an existing user from an external AD or AAD backed provider.   * GraphUserPrincipalNameCreationContext - Create a new user using the principal name as a reference to an existing user from an external AD or AAD backed provider.   If the user to be added corresponds to a user that was previously deleted, then that user will be restored.   Optionally, you can add the newly created user as a member of an existing VSTS group and/or specify a custom storage key for the user.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UsersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GraphUserCreationContext(); // GraphUserCreationContext | The subset of the full graph user used to uniquely find the graph subject in an external provider.
var groupDescriptors = groupDescriptors_example; // String | A comma separated list of descriptors of groups you want the graph user to join

try { 
    var result = api_instance.create(organization, apiVersion, body, groupDescriptors);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GraphUserCreationContext**](GraphUserCreationContext.md)| The subset of the full graph user used to uniquely find the graph subject in an external provider. | 
 **groupDescriptors** | **String**| A comma separated list of descriptors of groups you want the graph user to join | [optional] [default to null]

### Return type

[**GraphUser**](GraphUser.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, userDescriptor, apiVersion)



Disables a user.  The user will still be visible, but membership checks for the user will return false.â

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UsersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var userDescriptor = userDescriptor_example; // String | The descriptor of the user to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete(organization, userDescriptor, apiVersion);
} catch (e) {
    print("Exception when calling UsersApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **userDescriptor** | **String**| The descriptor of the user to delete. | [default to null]
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
> List<GraphUser> list(organization, apiVersion, subjectTypes, continuationToken)



Get a list of all users in a given scope.  Since the list of users may be large, results are returned in pages of users.  If there are more results  than can be returned in a single page, the result set will contain a continuation token for retrieval of the  next set of results.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UsersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var subjectTypes = subjectTypes_example; // String | A comma separated list of user subject subtypes to reduce the retrieved results, e.g. msaâ, âaadâ, âsvcâ (service identity), âimpâ (imported identity), etc.
var continuationToken = continuationToken_example; // String | An opaque data blob that allows the next page of data to resume immediately after where the previous page ended. The only reliable way to know if there is more data left is the presence of a continuation token.

try { 
    var result = api_instance.list(organization, apiVersion, subjectTypes, continuationToken);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **subjectTypes** | **String**| A comma separated list of user subject subtypes to reduce the retrieved results, e.g. msaâ, âaadâ, âsvcâ (service identity), âimpâ (imported identity), etc. | [optional] [default to null]
 **continuationToken** | **String**| An opaque data blob that allows the next page of data to resume immediately after where the previous page ended. The only reliable way to know if there is more data left is the presence of a continuation token. | [optional] [default to null]

### Return type

[**List<GraphUser>**](GraphUser.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> GraphUser update(organization, userDescriptor, apiVersion, body)



Map an existing user to a different identity

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = UsersApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var userDescriptor = userDescriptor_example; // String | the descriptor of the user to update
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = Object(); // Object | The subset of the full graph user used to uniquely find the graph subject in an external provider.

try { 
    var result = api_instance.update(organization, userDescriptor, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **userDescriptor** | **String**| the descriptor of the user to update | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | **Object**| The subset of the full graph user used to uniquely find the graph subject in an external provider. | 

### Return type

[**GraphUser**](GraphUser.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

