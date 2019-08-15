# azure_devops_sdk.api.DeploymentgroupsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](DeploymentgroupsApi.md#add) | **POST** /{organization}/{project}/_apis/distributedtask/deploymentgroups | 
[**callGet**](DeploymentgroupsApi.md#callGet) | **GET** /{organization}/{project}/_apis/distributedtask/deploymentgroups/{deploymentGroupId} | 
[**delete**](DeploymentgroupsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/distributedtask/deploymentgroups/{deploymentGroupId} | 
[**list**](DeploymentgroupsApi.md#list) | **GET** /{organization}/{project}/_apis/distributedtask/deploymentgroups | 
[**update**](DeploymentgroupsApi.md#update) | **PATCH** /{organization}/{project}/_apis/distributedtask/deploymentgroups/{deploymentGroupId} | 


# **add**
> DeploymentGroup add(organization, project, apiVersion, body)



Create a deployment group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DeploymentgroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = DeploymentGroupCreateParameter(); // DeploymentGroupCreateParameter | Deployment group to create.

try { 
    var result = api_instance.add(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling DeploymentgroupsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**DeploymentGroupCreateParameter**](DeploymentGroupCreateParameter.md)| Deployment group to create. | 

### Return type

[**DeploymentGroup**](DeploymentGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> DeploymentGroup callGet(organization, project, deploymentGroupId, apiVersion, actionFilter, $expand)



Get a deployment group by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DeploymentgroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var deploymentGroupId = 56; // int | ID of the deployment group.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var actionFilter = actionFilter_example; // String | Get the deployment group only if this action can be performed on it.
var $expand = $expand_example; // String | Include these additional details in the returned object.

try { 
    var result = api_instance.callGet(organization, project, deploymentGroupId, apiVersion, actionFilter, $expand);
    print(result);
} catch (e) {
    print("Exception when calling DeploymentgroupsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **deploymentGroupId** | **int**| ID of the deployment group. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **actionFilter** | **String**| Get the deployment group only if this action can be performed on it. | [optional] [default to null]
 **$expand** | **String**| Include these additional details in the returned object. | [optional] [default to null]

### Return type

[**DeploymentGroup**](DeploymentGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, deploymentGroupId, apiVersion)



Delete a deployment group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DeploymentgroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var deploymentGroupId = 56; // int | ID of the deployment group to be deleted.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, deploymentGroupId, apiVersion);
} catch (e) {
    print("Exception when calling DeploymentgroupsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **deploymentGroupId** | **int**| ID of the deployment group to be deleted. | [default to null]
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
> List<DeploymentGroup> list(organization, project, apiVersion, name, actionFilter, $expand, continuationToken, $top, ids)



Get a list of deployment groups by name or IDs.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DeploymentgroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var name = name_example; // String | Name of the deployment group.
var actionFilter = actionFilter_example; // String | Get only deployment groups on which this action can be performed.
var $expand = $expand_example; // String | Include these additional details in the returned objects.
var continuationToken = continuationToken_example; // String | Get deployment groups with names greater than this continuationToken lexicographically.
var $top = 56; // int | Maximum number of deployment groups to return. Default is **1000**.
var ids = ids_example; // String | Comma separated list of IDs of the deployment groups.

try { 
    var result = api_instance.list(organization, project, apiVersion, name, actionFilter, $expand, continuationToken, $top, ids);
    print(result);
} catch (e) {
    print("Exception when calling DeploymentgroupsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **name** | **String**| Name of the deployment group. | [optional] [default to null]
 **actionFilter** | **String**| Get only deployment groups on which this action can be performed. | [optional] [default to null]
 **$expand** | **String**| Include these additional details in the returned objects. | [optional] [default to null]
 **continuationToken** | **String**| Get deployment groups with names greater than this continuationToken lexicographically. | [optional] [default to null]
 **$top** | **int**| Maximum number of deployment groups to return. Default is **1000**. | [optional] [default to null]
 **ids** | **String**| Comma separated list of IDs of the deployment groups. | [optional] [default to null]

### Return type

[**List<DeploymentGroup>**](DeploymentGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> DeploymentGroup update(organization, project, deploymentGroupId, apiVersion, body)



Update a deployment group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DeploymentgroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var deploymentGroupId = 56; // int | ID of the deployment group.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = DeploymentGroupUpdateParameter(); // DeploymentGroupUpdateParameter | Deployment group to update.

try { 
    var result = api_instance.update(organization, project, deploymentGroupId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling DeploymentgroupsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **deploymentGroupId** | **int**| ID of the deployment group. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**DeploymentGroupUpdateParameter**](DeploymentGroupUpdateParameter.md)| Deployment group to update. | 

### Return type

[**DeploymentGroup**](DeploymentGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

