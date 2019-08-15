# azure_devops_sdk.api.LabelsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](LabelsApi.md#callGet) | **GET** /{organization}/{project}/_apis/tfvc/labels/{labelId} | 
[**get Label Items**](LabelsApi.md#get Label Items) | **GET** /{organization}/_apis/tfvc/labels/{labelId}/items | 
[**list**](LabelsApi.md#list) | **GET** /{organization}/{project}/_apis/tfvc/labels | 


# **callGet**
> TfvcLabel callGet(organization, labelId, project, apiVersion, requestDataIncludeLinks, requestDataMaxItemCount, requestDataItemLabelFilter, requestDataOwner, requestDataName, requestDataLabelScope)



Get a single deep label.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = LabelsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var labelId = labelId_example; // String | Unique identifier of label
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var requestDataIncludeLinks = true; // bool | Whether to include the _links field on the shallow references
var requestDataMaxItemCount = 56; // int | maxItemCount
var requestDataItemLabelFilter = requestDataItemLabelFilter_example; // String | maxItemCount
var requestDataOwner = requestDataOwner_example; // String | maxItemCount
var requestDataName = requestDataName_example; // String | maxItemCount
var requestDataLabelScope = requestDataLabelScope_example; // String | maxItemCount

try { 
    var result = api_instance.callGet(organization, labelId, project, apiVersion, requestDataIncludeLinks, requestDataMaxItemCount, requestDataItemLabelFilter, requestDataOwner, requestDataName, requestDataLabelScope);
    print(result);
} catch (e) {
    print("Exception when calling LabelsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **labelId** | **String**| Unique identifier of label | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **requestDataIncludeLinks** | **bool**| Whether to include the _links field on the shallow references | [optional] [default to null]
 **requestDataMaxItemCount** | **int**| maxItemCount | [optional] [default to null]
 **requestDataItemLabelFilter** | **String**| maxItemCount | [optional] [default to null]
 **requestDataOwner** | **String**| maxItemCount | [optional] [default to null]
 **requestDataName** | **String**| maxItemCount | [optional] [default to null]
 **requestDataLabelScope** | **String**| maxItemCount | [optional] [default to null]

### Return type

[**TfvcLabel**](TfvcLabel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Label Items**
> List<TfvcItem> get Label Items(organization, labelId, apiVersion, $top, $skip)



Get items under a label.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = LabelsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var labelId = labelId_example; // String | Unique identifier of label
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $top = 56; // int | Max number of items to return
var $skip = 56; // int | Number of items to skip

try { 
    var result = api_instance.get Label Items(organization, labelId, apiVersion, $top, $skip);
    print(result);
} catch (e) {
    print("Exception when calling LabelsApi->get Label Items: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **labelId** | **String**| Unique identifier of label | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$top** | **int**| Max number of items to return | [optional] [default to null]
 **$skip** | **int**| Number of items to skip | [optional] [default to null]

### Return type

[**List<TfvcItem>**](TfvcItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TfvcLabelRef> list(organization, project, apiVersion, requestDataIncludeLinks, requestDataMaxItemCount, requestDataItemLabelFilter, requestDataOwner, requestDataName, requestDataLabelScope, $top, $skip)



Get a collection of shallow label references.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = LabelsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var requestDataIncludeLinks = true; // bool | Whether to include the _links field on the shallow references
var requestDataMaxItemCount = 56; // int | labelScope, name, owner, and itemLabelFilter
var requestDataItemLabelFilter = requestDataItemLabelFilter_example; // String | labelScope, name, owner, and itemLabelFilter
var requestDataOwner = requestDataOwner_example; // String | labelScope, name, owner, and itemLabelFilter
var requestDataName = requestDataName_example; // String | labelScope, name, owner, and itemLabelFilter
var requestDataLabelScope = requestDataLabelScope_example; // String | labelScope, name, owner, and itemLabelFilter
var $top = 56; // int | Max number of labels to return
var $skip = 56; // int | Number of labels to skip

try { 
    var result = api_instance.list(organization, project, apiVersion, requestDataIncludeLinks, requestDataMaxItemCount, requestDataItemLabelFilter, requestDataOwner, requestDataName, requestDataLabelScope, $top, $skip);
    print(result);
} catch (e) {
    print("Exception when calling LabelsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **requestDataIncludeLinks** | **bool**| Whether to include the _links field on the shallow references | [optional] [default to null]
 **requestDataMaxItemCount** | **int**| labelScope, name, owner, and itemLabelFilter | [optional] [default to null]
 **requestDataItemLabelFilter** | **String**| labelScope, name, owner, and itemLabelFilter | [optional] [default to null]
 **requestDataOwner** | **String**| labelScope, name, owner, and itemLabelFilter | [optional] [default to null]
 **requestDataName** | **String**| labelScope, name, owner, and itemLabelFilter | [optional] [default to null]
 **requestDataLabelScope** | **String**| labelScope, name, owner, and itemLabelFilter | [optional] [default to null]
 **$top** | **int**| Max number of labels to return | [optional] [default to null]
 **$skip** | **int**| Number of labels to skip | [optional] [default to null]

### Return type

[**List<TfvcLabelRef>**](TfvcLabelRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

