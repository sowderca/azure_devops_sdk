# azure_devops_sdk.api.ClassificationNodesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ClassificationNodesApi.md#callGet) | **GET** /{organization}/{project}/_apis/wit/classificationnodes/{structureGroup}/{path} | 
[**create Or Update**](ClassificationNodesApi.md#create Or Update) | **POST** /{organization}/{project}/_apis/wit/classificationnodes/{structureGroup}/{path} | 
[**delete**](ClassificationNodesApi.md#delete) | **DELETE** /{organization}/{project}/_apis/wit/classificationnodes/{structureGroup}/{path} | 
[**get Root Nodes**](ClassificationNodesApi.md#get Root Nodes) | **GET** /{organization}/{project}/_apis/wit/classificationnodes | 
[**update**](ClassificationNodesApi.md#update) | **PATCH** /{organization}/{project}/_apis/wit/classificationnodes/{structureGroup}/{path} | 


# **callGet**
> WorkItemClassificationNode callGet(organization, project, structureGroup, path, apiVersion, $depth)



Gets the classification node for a given node path.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ClassificationNodesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var structureGroup = structureGroup_example; // String | Structure group of the classification node, area or iteration.
var path = path_example; // String | Path of the classification node.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $depth = 56; // int | Depth of children to fetch.

try { 
    var result = api_instance.callGet(organization, project, structureGroup, path, apiVersion, $depth);
    print(result);
} catch (e) {
    print("Exception when calling ClassificationNodesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **structureGroup** | **String**| Structure group of the classification node, area or iteration. | [default to null]
 **path** | **String**| Path of the classification node. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$depth** | **int**| Depth of children to fetch. | [optional] [default to null]

### Return type

[**WorkItemClassificationNode**](WorkItemClassificationNode.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create Or Update**
> WorkItemClassificationNode create Or Update(organization, project, structureGroup, path, apiVersion, body)



Create new or update an existing classification node.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ClassificationNodesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var structureGroup = structureGroup_example; // String | Structure group of the classification node, area or iteration.
var path = path_example; // String | Path of the classification node.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = WorkItemClassificationNode(); // WorkItemClassificationNode | Node to create or update.

try { 
    var result = api_instance.create Or Update(organization, project, structureGroup, path, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ClassificationNodesApi->create Or Update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **structureGroup** | **String**| Structure group of the classification node, area or iteration. | [default to null]
 **path** | **String**| Path of the classification node. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**WorkItemClassificationNode**](WorkItemClassificationNode.md)| Node to create or update. | 

### Return type

[**WorkItemClassificationNode**](WorkItemClassificationNode.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, structureGroup, path, apiVersion, $reclassifyId)



Delete an existing classification node.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ClassificationNodesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var structureGroup = structureGroup_example; // String | Structure group of the classification node, area or iteration.
var path = path_example; // String | Path of the classification node.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $reclassifyId = 56; // int | Id of the target classification node for reclassification.

try { 
    api_instance.delete(organization, project, structureGroup, path, apiVersion, $reclassifyId);
} catch (e) {
    print("Exception when calling ClassificationNodesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **structureGroup** | **String**| Structure group of the classification node, area or iteration. | [default to null]
 **path** | **String**| Path of the classification node. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$reclassifyId** | **int**| Id of the target classification node for reclassification. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Root Nodes**
> List<WorkItemClassificationNode> get Root Nodes(organization, project, apiVersion, $depth)



Gets root classification nodes under the project.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ClassificationNodesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $depth = 56; // int | Depth of children to fetch.

try { 
    var result = api_instance.get Root Nodes(organization, project, apiVersion, $depth);
    print(result);
} catch (e) {
    print("Exception when calling ClassificationNodesApi->get Root Nodes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$depth** | **int**| Depth of children to fetch. | [optional] [default to null]

### Return type

[**List<WorkItemClassificationNode>**](WorkItemClassificationNode.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> WorkItemClassificationNode update(organization, project, structureGroup, path, apiVersion, body)



Update an existing classification node.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ClassificationNodesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var structureGroup = structureGroup_example; // String | Structure group of the classification node, area or iteration.
var path = path_example; // String | Path of the classification node.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = WorkItemClassificationNode(); // WorkItemClassificationNode | Node to create or update.

try { 
    var result = api_instance.update(organization, project, structureGroup, path, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ClassificationNodesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **structureGroup** | **String**| Structure group of the classification node, area or iteration. | [default to null]
 **path** | **String**| Path of the classification node. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**WorkItemClassificationNode**](WorkItemClassificationNode.md)| Node to create or update. | 

### Return type

[**WorkItemClassificationNode**](WorkItemClassificationNode.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

