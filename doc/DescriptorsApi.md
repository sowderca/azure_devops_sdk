# azure_devops_sdk.api.DescriptorsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](DescriptorsApi.md#callGet) | **GET** /{organization}/_apis/graph/descriptors/{storageKey} | 


# **callGet**
> GraphDescriptorResult callGet(storageKey, organization, apiVersion)



Resolve a storage key to a descriptor

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DescriptorsApi();
var storageKey = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Storage key of the subject (user, group, scope, etc.) to resolve
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(storageKey, organization, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling DescriptorsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageKey** | [**String**](.md)| Storage key of the subject (user, group, scope, etc.) to resolve | [default to null]
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**GraphDescriptorResult**](GraphDescriptorResult.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

