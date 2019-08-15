# azure_devops_sdk.api.AccessControlEntriesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**remove Access Control Entries**](AccessControlEntriesApi.md#remove Access Control Entries) | **DELETE** /{organization}/_apis/accesscontrolentries/{securityNamespaceId} | 
[**set Access Control Entries**](AccessControlEntriesApi.md#set Access Control Entries) | **POST** /{organization}/_apis/accesscontrolentries/{securityNamespaceId} | 


# **remove Access Control Entries**
> bool remove Access Control Entries(securityNamespaceId, organization, apiVersion, token, descriptors)



Remove the specified ACEs from the ACL belonging to the specified token.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AccessControlEntriesApi();
var securityNamespaceId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Security namespace identifier.
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var token = token_example; // String | The token whose ACL should be modified.
var descriptors = descriptors_example; // String | String containing a list of identity descriptors separated by ',' whose entries should be removed.

try { 
    var result = api_instance.remove Access Control Entries(securityNamespaceId, organization, apiVersion, token, descriptors);
    print(result);
} catch (e) {
    print("Exception when calling AccessControlEntriesApi->remove Access Control Entries: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **securityNamespaceId** | [**String**](.md)| Security namespace identifier. | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **token** | **String**| The token whose ACL should be modified. | [optional] [default to null]
 **descriptors** | **String**| String containing a list of identity descriptors separated by &#39;,&#39; whose entries should be removed. | [optional] [default to null]

### Return type

**bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set Access Control Entries**
> List<AccessControlEntry> set Access Control Entries(securityNamespaceId, organization, apiVersion, body)



Add or update ACEs in the ACL for the provided token. The request body contains the target token, a list of [ACEs](https://docs.microsoft.com/en-us/rest/api/azure/devops/security/access%20control%20entries/set%20access%20control%20entries?#accesscontrolentry) and a optional merge parameter. In the case of a collision (by identity descriptor) with an existing ACE in the ACL, the \"merge\" parameter determines the behavior. If set, the existing ACE has its allow and deny merged with the incoming ACE's allow and deny. If unset, the existing ACE is displaced.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AccessControlEntriesApi();
var securityNamespaceId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Security namespace identifier.
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = JObject(); // JObject | 

try { 
    var result = api_instance.set Access Control Entries(securityNamespaceId, organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling AccessControlEntriesApi->set Access Control Entries: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **securityNamespaceId** | [**String**](.md)| Security namespace identifier. | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**JObject**](JObject.md)|  | 

### Return type

[**List<AccessControlEntry>**](AccessControlEntry.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

