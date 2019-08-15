# azure_devops_sdk.api.ShelvesetsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ShelvesetsApi.md#callGet) | **GET** /{organization}/_apis/tfvc/shelvesets | 
[**get Shelveset Changes**](ShelvesetsApi.md#get Shelveset Changes) | **GET** /{organization}/_apis/tfvc/shelvesets/changes | 
[**get Shelveset Work Items**](ShelvesetsApi.md#get Shelveset Work Items) | **GET** /{organization}/_apis/tfvc/shelvesets/workitems | 


# **callGet**
> TfvcShelveset callGet(organization, shelvesetId, apiVersion, requestDataIncludeLinks, requestDataIncludeWorkItems, requestDataIncludeDetails, requestDataMaxChangeCount, requestDataMaxCommentLength, requestDataOwner, requestDataName)



Get a single deep shelveset.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ShelvesetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var shelvesetId = shelvesetId_example; // String | Shelveset's unique ID
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var requestDataIncludeLinks = true; // bool | Whether to include the _links field on the shallow references. Does not apply when requesting a single deep shelveset object. Links will always be included in the deep shelveset.
var requestDataIncludeWorkItems = true; // bool | Whether to include workItems
var requestDataIncludeDetails = true; // bool | Whether to include policyOverride and notes Only applies when requesting a single deep shelveset
var requestDataMaxChangeCount = 56; // int | Max number of changes to include
var requestDataMaxCommentLength = 56; // int | Max length of comment
var requestDataOwner = requestDataOwner_example; // String | Owner's ID. Could be a name or a guid.
var requestDataName = requestDataName_example; // String | Shelveset's name

try { 
    var result = api_instance.callGet(organization, shelvesetId, apiVersion, requestDataIncludeLinks, requestDataIncludeWorkItems, requestDataIncludeDetails, requestDataMaxChangeCount, requestDataMaxCommentLength, requestDataOwner, requestDataName);
    print(result);
} catch (e) {
    print("Exception when calling ShelvesetsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **shelvesetId** | **String**| Shelveset&#39;s unique ID | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **requestDataIncludeLinks** | **bool**| Whether to include the _links field on the shallow references. Does not apply when requesting a single deep shelveset object. Links will always be included in the deep shelveset. | [optional] [default to null]
 **requestDataIncludeWorkItems** | **bool**| Whether to include workItems | [optional] [default to null]
 **requestDataIncludeDetails** | **bool**| Whether to include policyOverride and notes Only applies when requesting a single deep shelveset | [optional] [default to null]
 **requestDataMaxChangeCount** | **int**| Max number of changes to include | [optional] [default to null]
 **requestDataMaxCommentLength** | **int**| Max length of comment | [optional] [default to null]
 **requestDataOwner** | **String**| Owner&#39;s ID. Could be a name or a guid. | [optional] [default to null]
 **requestDataName** | **String**| Shelveset&#39;s name | [optional] [default to null]

### Return type

[**TfvcShelveset**](TfvcShelveset.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Shelveset Changes**
> List<TfvcChange> get Shelveset Changes(organization, shelvesetId, apiVersion, $top, $skip)



Get changes included in a shelveset.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ShelvesetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var shelvesetId = shelvesetId_example; // String | Shelveset's unique ID
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $top = 56; // int | Max number of changes to return
var $skip = 56; // int | Number of changes to skip

try { 
    var result = api_instance.get Shelveset Changes(organization, shelvesetId, apiVersion, $top, $skip);
    print(result);
} catch (e) {
    print("Exception when calling ShelvesetsApi->get Shelveset Changes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **shelvesetId** | **String**| Shelveset&#39;s unique ID | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$top** | **int**| Max number of changes to return | [optional] [default to null]
 **$skip** | **int**| Number of changes to skip | [optional] [default to null]

### Return type

[**List<TfvcChange>**](TfvcChange.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Shelveset Work Items**
> List<AssociatedWorkItem> get Shelveset Work Items(organization, shelvesetId, apiVersion)



Get work items associated with a shelveset.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ShelvesetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var shelvesetId = shelvesetId_example; // String | Shelveset's unique ID
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.get Shelveset Work Items(organization, shelvesetId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ShelvesetsApi->get Shelveset Work Items: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **shelvesetId** | **String**| Shelveset&#39;s unique ID | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<AssociatedWorkItem>**](AssociatedWorkItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

