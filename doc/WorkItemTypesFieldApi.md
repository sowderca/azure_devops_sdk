# azure_devops_sdk.api.WorkItemTypesFieldApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](WorkItemTypesFieldApi.md#callGet) | **GET** /{organization}/{project}/_apis/wit/workitemtypes/{type}/fields/{field} | 
[**list**](WorkItemTypesFieldApi.md#list) | **GET** /{organization}/{project}/_apis/wit/workitemtypes/{type}/fields | 


# **callGet**
> WorkItemTypeFieldWithReferences callGet(organization, project, type, field, apiVersion, $expand)



Get a field for a work item type with detailed references.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesFieldApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var type = type_example; // String | Work item type.
var field = field_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $expand = $expand_example; // String | Expand level for the API response. Properties: to include allowedvalues, default value, isRequired etc. as a part of response; None: to skip these properties.

try { 
    var result = api_instance.callGet(organization, project, type, field, apiVersion, $expand);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesFieldApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **type** | **String**| Work item type. | [default to null]
 **field** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$expand** | **String**| Expand level for the API response. Properties: to include allowedvalues, default value, isRequired etc. as a part of response; None: to skip these properties. | [optional] [default to null]

### Return type

[**WorkItemTypeFieldWithReferences**](WorkItemTypeFieldWithReferences.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<WorkItemTypeFieldWithReferences> list(organization, project, type, apiVersion, $expand)



Get a list of fields for a work item type with detailed references.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesFieldApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var type = type_example; // String | Work item type.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $expand = $expand_example; // String | Expand level for the API response. Properties: to include allowedvalues, default value, isRequired etc. as a part of response; None: to skip these properties.

try { 
    var result = api_instance.list(organization, project, type, apiVersion, $expand);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesFieldApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **type** | **String**| Work item type. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$expand** | **String**| Expand level for the API response. Properties: to include allowedvalues, default value, isRequired etc. as a part of response; None: to skip these properties. | [optional] [default to null]

### Return type

[**List<WorkItemTypeFieldWithReferences>**](WorkItemTypeFieldWithReferences.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

