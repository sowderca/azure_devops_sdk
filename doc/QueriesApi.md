# azure_devops_sdk.api.QueriesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](QueriesApi.md#callGet) | **GET** /{organization}/{project}/_apis/wit/queries/{query} | 
[**create**](QueriesApi.md#create) | **POST** /{organization}/{project}/_apis/wit/queries/{query} | 
[**delete**](QueriesApi.md#delete) | **DELETE** /{organization}/{project}/_apis/wit/queries/{query} | 
[**get Queries Batch**](QueriesApi.md#get Queries Batch) | **POST** /{organization}/{project}/_apis/wit/queriesbatch | 
[**list**](QueriesApi.md#list) | **GET** /{organization}/{project}/_apis/wit/queries | 
[**update**](QueriesApi.md#update) | **PATCH** /{organization}/{project}/_apis/wit/queries/{query} | 


# **callGet**
> QueryHierarchyItem callGet(organization, project, query, apiVersion, $expand, $depth, $includeDeleted)



Retrieves an individual query and its children

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = QueriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var query = query_example; // String | ID or path of the query.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $expand = $expand_example; // String | Include the query string (wiql), clauses, query result columns, and sort options in the results.
var $depth = 56; // int | In the folder of queries, return child queries and folders to this depth.
var $includeDeleted = true; // bool | Include deleted queries and folders

try { 
    var result = api_instance.callGet(organization, project, query, apiVersion, $expand, $depth, $includeDeleted);
    print(result);
} catch (e) {
    print("Exception when calling QueriesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **query** | **String**| ID or path of the query. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$expand** | **String**| Include the query string (wiql), clauses, query result columns, and sort options in the results. | [optional] [default to null]
 **$depth** | **int**| In the folder of queries, return child queries and folders to this depth. | [optional] [default to null]
 **$includeDeleted** | **bool**| Include deleted queries and folders | [optional] [default to null]

### Return type

[**QueryHierarchyItem**](QueryHierarchyItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> QueryHierarchyItem create(organization, project, query, apiVersion, body, validateWiqlOnly)



Creates a query, or moves a query.  Learn more about Work Item Query Language (WIQL) syntax [here](https://docs.microsoft.com/en-us/vsts/collaborate/wiql-syntax?toc=/vsts/work/track/toc.json&bc=/vsts/work/track/breadcrumb/toc.json&view=vsts).

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = QueriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var query = query_example; // String | The parent id or path under which the query is to be created.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = QueryHierarchyItem(); // QueryHierarchyItem | The query to create.
var validateWiqlOnly = true; // bool | If you only want to validate your WIQL query without actually creating one, set it to true. Default is false.

try { 
    var result = api_instance.create(organization, project, query, apiVersion, body, validateWiqlOnly);
    print(result);
} catch (e) {
    print("Exception when calling QueriesApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **query** | **String**| The parent id or path under which the query is to be created. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**QueryHierarchyItem**](QueryHierarchyItem.md)| The query to create. | 
 **validateWiqlOnly** | **bool**| If you only want to validate your WIQL query without actually creating one, set it to true. Default is false. | [optional] [default to null]

### Return type

[**QueryHierarchyItem**](QueryHierarchyItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, query, apiVersion)



Delete a query or a folder. This deletes any permission change on the deleted query or folder and any of its descendants if it is a folder. It is important to note that the deleted permission changes cannot be recovered upon undeleting the query or folder.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = QueriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var query = query_example; // String | ID or path of the query or folder to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, query, apiVersion);
} catch (e) {
    print("Exception when calling QueriesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **query** | **String**| ID or path of the query or folder to delete. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Queries Batch**
> List<QueryHierarchyItem> get Queries Batch(organization, project, apiVersion, body)



Gets a list of queries by ids (Maximum 1000)

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = QueriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = QueryBatchGetRequest(); // QueryBatchGetRequest | 

try { 
    var result = api_instance.get Queries Batch(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling QueriesApi->get Queries Batch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**QueryBatchGetRequest**](QueryBatchGetRequest.md)|  | 

### Return type

[**List<QueryHierarchyItem>**](QueryHierarchyItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<QueryHierarchyItem> list(organization, project, apiVersion, $expand, $depth, $includeDeleted)



Gets the root queries and their children

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = QueriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $expand = $expand_example; // String | Include the query string (wiql), clauses, query result columns, and sort options in the results.
var $depth = 56; // int | In the folder of queries, return child queries and folders to this depth.
var $includeDeleted = true; // bool | Include deleted queries and folders

try { 
    var result = api_instance.list(organization, project, apiVersion, $expand, $depth, $includeDeleted);
    print(result);
} catch (e) {
    print("Exception when calling QueriesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$expand** | **String**| Include the query string (wiql), clauses, query result columns, and sort options in the results. | [optional] [default to null]
 **$depth** | **int**| In the folder of queries, return child queries and folders to this depth. | [optional] [default to null]
 **$includeDeleted** | **bool**| Include deleted queries and folders | [optional] [default to null]

### Return type

[**List<QueryHierarchyItem>**](QueryHierarchyItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> QueryHierarchyItem update(organization, project, query, apiVersion, body, $undeleteDescendants)



Update a query or a folder. This allows you to update, rename and move queries and folders.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = QueriesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var query = query_example; // String | The ID or path for the query to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = QueryHierarchyItem(); // QueryHierarchyItem | The query to update.
var $undeleteDescendants = true; // bool | Undelete the children of this folder. It is important to note that this will not bring back the permission changes that were previously applied to the descendants.

try { 
    var result = api_instance.update(organization, project, query, apiVersion, body, $undeleteDescendants);
    print(result);
} catch (e) {
    print("Exception when calling QueriesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **query** | **String**| The ID or path for the query to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**QueryHierarchyItem**](QueryHierarchyItem.md)| The query to update. | 
 **$undeleteDescendants** | **bool**| Undelete the children of this folder. It is important to note that this will not bring back the permission changes that were previously applied to the descendants. | [optional] [default to null]

### Return type

[**QueryHierarchyItem**](QueryHierarchyItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

