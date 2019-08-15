# azure_devops_sdk.api.WorkItemsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](WorkItemsApi.md#create) | **POST** /{organization}/{project}/_apis/wit/workitems/${type} | 
[**delete**](WorkItemsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/wit/workitems/{id} | 
[**get Work Item**](WorkItemsApi.md#get Work Item) | **GET** /{organization}/{project}/_apis/wit/workitems/{id} | 
[**get Work Item Template**](WorkItemsApi.md#get Work Item Template) | **GET** /{organization}/{project}/_apis/wit/workitems/${type} | 
[**get Work Items Batch**](WorkItemsApi.md#get Work Items Batch) | **POST** /{organization}/{project}/_apis/wit/workitemsbatch | 
[**list**](WorkItemsApi.md#list) | **GET** /{organization}/{project}/_apis/wit/workitems | 
[**update**](WorkItemsApi.md#update) | **PATCH** /{organization}/{project}/_apis/wit/workitems/{id} | 


# **create**
> WorkItem create(organization, project, type, apiVersion, body, validateOnly, bypassRules, suppressNotifications, $expand)



Creates a single work item.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var type = type_example; // String | The work item type of the work item to create
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = JsonPatchDocument(); // JsonPatchDocument | The JSON Patch document representing the work item
var validateOnly = true; // bool | Indicate if you only want to validate the changes without saving the work item
var bypassRules = true; // bool | Do not enforce the work item type rules on this update
var suppressNotifications = true; // bool | Do not fire any notifications for this change
var $expand = $expand_example; // String | The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All }.

try { 
    var result = api_instance.create(organization, project, type, apiVersion, body, validateOnly, bypassRules, suppressNotifications, $expand);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **type** | **String**| The work item type of the work item to create | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| The JSON Patch document representing the work item | 
 **validateOnly** | **bool**| Indicate if you only want to validate the changes without saving the work item | [optional] [default to null]
 **bypassRules** | **bool**| Do not enforce the work item type rules on this update | [optional] [default to null]
 **suppressNotifications** | **bool**| Do not fire any notifications for this change | [optional] [default to null]
 **$expand** | **String**| The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All }. | [optional] [default to null]

### Return type

[**WorkItem**](WorkItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> WorkItemDelete delete(organization, id, project, apiVersion, destroy)



Deletes the specified work item and sends it to the Recycle Bin, so that it can be restored back, if required. Optionally, if the destroy parameter has been set to true, it destroys the work item permanently. WARNING: If the destroy parameter is set to true, work items deleted by this command will NOT go to recycle-bin and there is no way to restore/recover them after deletion. It is recommended NOT to use this parameter. If you do, please use this parameter with extreme caution.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | ID of the work item to be deleted
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var destroy = true; // bool | Optional parameter, if set to true, the work item is deleted permanently. Please note: the destroy action is PERMANENT and cannot be undone.

try { 
    var result = api_instance.delete(organization, id, project, apiVersion, destroy);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**| ID of the work item to be deleted | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **destroy** | **bool**| Optional parameter, if set to true, the work item is deleted permanently. Please note: the destroy action is PERMANENT and cannot be undone. | [optional] [default to null]

### Return type

[**WorkItemDelete**](WorkItemDelete.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Work Item**
> WorkItem get Work Item(organization, id, project, apiVersion, fields, asOf, $expand)



Returns a single work item.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | The work item id
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var fields = fields_example; // String | Comma-separated list of requested fields
var asOf = 2013-10-20T19:20:30+01:00; // DateTime | AsOf UTC date time string
var $expand = $expand_example; // String | The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All }.

try { 
    var result = api_instance.get Work Item(organization, id, project, apiVersion, fields, asOf, $expand);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemsApi->get Work Item: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**| The work item id | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **fields** | **String**| Comma-separated list of requested fields | [optional] [default to null]
 **asOf** | **DateTime**| AsOf UTC date time string | [optional] [default to null]
 **$expand** | **String**| The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All }. | [optional] [default to null]

### Return type

[**WorkItem**](WorkItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Work Item Template**
> WorkItem get Work Item Template(organization, project, type, apiVersion, fields, asOf, $expand)



Returns a single work item from a template.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var type = type_example; // String | The work item type name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var fields = fields_example; // String | Comma-separated list of requested fields
var asOf = 2013-10-20T19:20:30+01:00; // DateTime | AsOf UTC date time string
var $expand = $expand_example; // String | The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All }.

try { 
    var result = api_instance.get Work Item Template(organization, project, type, apiVersion, fields, asOf, $expand);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemsApi->get Work Item Template: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **type** | **String**| The work item type name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **fields** | **String**| Comma-separated list of requested fields | [optional] [default to null]
 **asOf** | **DateTime**| AsOf UTC date time string | [optional] [default to null]
 **$expand** | **String**| The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All }. | [optional] [default to null]

### Return type

[**WorkItem**](WorkItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Work Items Batch**
> List<WorkItem> get Work Items Batch(organization, project, apiVersion, body)



Gets work items for a list of work item ids (Maximum 200)

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = WorkItemBatchGetRequest(); // WorkItemBatchGetRequest | 

try { 
    var result = api_instance.get Work Items Batch(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemsApi->get Work Items Batch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**WorkItemBatchGetRequest**](WorkItemBatchGetRequest.md)|  | 

### Return type

[**List<WorkItem>**](WorkItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<WorkItem> list(organization, ids, project, apiVersion, fields, asOf, $expand, errorPolicy)



Returns a list of work items (Maximum 200)

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var ids = ids_example; // String | The comma-separated list of requested work item ids. (Maximum 200 ids allowed).
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var fields = fields_example; // String | Comma-separated list of requested fields
var asOf = 2013-10-20T19:20:30+01:00; // DateTime | AsOf UTC date time string
var $expand = $expand_example; // String | The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All }.
var errorPolicy = errorPolicy_example; // String | The flag to control error policy in a bulk get work items request. Possible options are {Fail, Omit}.

try { 
    var result = api_instance.list(organization, ids, project, apiVersion, fields, asOf, $expand, errorPolicy);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **ids** | **String**| The comma-separated list of requested work item ids. (Maximum 200 ids allowed). | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **fields** | **String**| Comma-separated list of requested fields | [optional] [default to null]
 **asOf** | **DateTime**| AsOf UTC date time string | [optional] [default to null]
 **$expand** | **String**| The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All }. | [optional] [default to null]
 **errorPolicy** | **String**| The flag to control error policy in a bulk get work items request. Possible options are {Fail, Omit}. | [optional] [default to null]

### Return type

[**List<WorkItem>**](WorkItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> WorkItem update(organization, id, project, apiVersion, body, validateOnly, bypassRules, suppressNotifications, $expand)



Updates a single work item.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 56; // int | The id of the work item to update
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = JsonPatchDocument(); // JsonPatchDocument | The JSON Patch document representing the update
var validateOnly = true; // bool | Indicate if you only want to validate the changes without saving the work item
var bypassRules = true; // bool | Do not enforce the work item type rules on this update
var suppressNotifications = true; // bool | Do not fire any notifications for this change
var $expand = $expand_example; // String | The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All }.

try { 
    var result = api_instance.update(organization, id, project, apiVersion, body, validateOnly, bypassRules, suppressNotifications, $expand);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | **int**| The id of the work item to update | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| The JSON Patch document representing the update | 
 **validateOnly** | **bool**| Indicate if you only want to validate the changes without saving the work item | [optional] [default to null]
 **bypassRules** | **bool**| Do not enforce the work item type rules on this update | [optional] [default to null]
 **suppressNotifications** | **bool**| Do not fire any notifications for this change | [optional] [default to null]
 **$expand** | **String**| The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All }. | [optional] [default to null]

### Return type

[**WorkItem**](WorkItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

