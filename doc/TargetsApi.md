# azure_devops_sdk.api.TargetsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](TargetsApi.md#callGet) | **GET** /{organization}/{project}/_apis/distributedtask/deploymentgroups/{deploymentGroupId}/targets/{targetId} | 
[**delete**](TargetsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/distributedtask/deploymentgroups/{deploymentGroupId}/targets/{targetId} | 
[**list**](TargetsApi.md#list) | **GET** /{organization}/{project}/_apis/distributedtask/deploymentgroups/{deploymentGroupId}/targets | 
[**update**](TargetsApi.md#update) | **PATCH** /{organization}/{project}/_apis/distributedtask/deploymentgroups/{deploymentGroupId}/targets | 


# **callGet**
> DeploymentMachine callGet(organization, project, deploymentGroupId, targetId, apiVersion, $expand)



Get a deployment target by its ID in a deployment group

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TargetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var deploymentGroupId = 56; // int | ID of the deployment group to which deployment target belongs.
var targetId = 56; // int | ID of the deployment target to return.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var $expand = $expand_example; // String | Include these additional details in the returned objects.

try { 
    var result = api_instance.callGet(organization, project, deploymentGroupId, targetId, apiVersion, $expand);
    print(result);
} catch (e) {
    print("Exception when calling TargetsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **deploymentGroupId** | **int**| ID of the deployment group to which deployment target belongs. | [default to null]
 **targetId** | **int**| ID of the deployment target to return. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **$expand** | **String**| Include these additional details in the returned objects. | [optional] [default to null]

### Return type

[**DeploymentMachine**](DeploymentMachine.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, deploymentGroupId, targetId, apiVersion)



Delete a deployment target in a deployment group. This deletes the agent from associated deployment pool too.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TargetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var deploymentGroupId = 56; // int | ID of the deployment group in which deployment target is deleted.
var targetId = 56; // int | ID of the deployment target to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, deploymentGroupId, targetId, apiVersion);
} catch (e) {
    print("Exception when calling TargetsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **deploymentGroupId** | **int**| ID of the deployment group in which deployment target is deleted. | [default to null]
 **targetId** | **int**| ID of the deployment target to delete. | [default to null]
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
> List<DeploymentMachine> list(organization, project, deploymentGroupId, apiVersion, tags, name, partialNameMatch, $expand, agentStatus, agentJobResult, continuationToken, $top, enabled, propertyFilters)



Get a list of deployment targets in a deployment group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TargetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var deploymentGroupId = 56; // int | ID of the deployment group.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var tags = tags_example; // String | Get only the deployment targets that contain all these comma separted list of tags.
var name = name_example; // String | Name pattern of the deployment targets to return.
var partialNameMatch = true; // bool | When set to true, treats **name** as pattern. Else treats it as absolute match. Default is **false**.
var $expand = $expand_example; // String | Include these additional details in the returned objects.
var agentStatus = agentStatus_example; // String | Get only deployment targets that have this status.
var agentJobResult = agentJobResult_example; // String | Get only deployment targets that have this last job result.
var continuationToken = continuationToken_example; // String | Get deployment targets with names greater than this continuationToken lexicographically.
var $top = 56; // int | Maximum number of deployment targets to return. Default is **1000**.
var enabled = true; // bool | Get only deployment targets that are enabled or disabled. Default is 'null' which returns all the targets.
var propertyFilters = propertyFilters_example; // String | 

try { 
    var result = api_instance.list(organization, project, deploymentGroupId, apiVersion, tags, name, partialNameMatch, $expand, agentStatus, agentJobResult, continuationToken, $top, enabled, propertyFilters);
    print(result);
} catch (e) {
    print("Exception when calling TargetsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **deploymentGroupId** | **int**| ID of the deployment group. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **tags** | **String**| Get only the deployment targets that contain all these comma separted list of tags. | [optional] [default to null]
 **name** | **String**| Name pattern of the deployment targets to return. | [optional] [default to null]
 **partialNameMatch** | **bool**| When set to true, treats **name** as pattern. Else treats it as absolute match. Default is **false**. | [optional] [default to null]
 **$expand** | **String**| Include these additional details in the returned objects. | [optional] [default to null]
 **agentStatus** | **String**| Get only deployment targets that have this status. | [optional] [default to null]
 **agentJobResult** | **String**| Get only deployment targets that have this last job result. | [optional] [default to null]
 **continuationToken** | **String**| Get deployment targets with names greater than this continuationToken lexicographically. | [optional] [default to null]
 **$top** | **int**| Maximum number of deployment targets to return. Default is **1000**. | [optional] [default to null]
 **enabled** | **bool**| Get only deployment targets that are enabled or disabled. Default is &#39;null&#39; which returns all the targets. | [optional] [default to null]
 **propertyFilters** | **String**|  | [optional] [default to null]

### Return type

[**List<DeploymentMachine>**](DeploymentMachine.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> List<DeploymentMachine> update(organization, project, deploymentGroupId, apiVersion, body)



Update tags of a list of deployment targets in a deployment group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TargetsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var deploymentGroupId = 56; // int | ID of the deployment group in which deployment targets are updated.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = [List&lt;DeploymentTargetUpdateParameter&gt;()]; // List<DeploymentTargetUpdateParameter> | Deployment targets with tags to udpdate.

try { 
    var result = api_instance.update(organization, project, deploymentGroupId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TargetsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **deploymentGroupId** | **int**| ID of the deployment group in which deployment targets are updated. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;DeploymentTargetUpdateParameter&gt;**](DeploymentTargetUpdateParameter.md)| Deployment targets with tags to udpdate. | 

### Return type

[**List<DeploymentMachine>**](DeploymentMachine.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

