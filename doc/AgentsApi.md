# azure_devops_sdk.api.AgentsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](AgentsApi.md#add) | **POST** /{organization}/_apis/distributedtask/pools/{poolId}/agents | 
[**callGet**](AgentsApi.md#callGet) | **GET** /{organization}/_apis/clt/agentGroups/{agentGroupId}/agents | 
[**callGet_0**](AgentsApi.md#callGet_0) | **GET** /{organization}/_apis/distributedtask/pools/{poolId}/agents/{agentId} | 
[**delete**](AgentsApi.md#delete) | **DELETE** /{organization}/_apis/clt/agentGroups/{agentGroupId}/agents | 
[**delete_0**](AgentsApi.md#delete_0) | **DELETE** /{organization}/_apis/distributedtask/pools/{poolId}/agents/{agentId} | 
[**list**](AgentsApi.md#list) | **GET** /{organization}/_apis/distributedtask/pools/{poolId}/agents | 
[**replace Agent**](AgentsApi.md#replace Agent) | **PUT** /{organization}/_apis/distributedtask/pools/{poolId}/agents/{agentId} | 
[**update**](AgentsApi.md#update) | **PATCH** /{organization}/_apis/distributedtask/pools/{poolId}/agents/{agentId} | 


# **add**
> TaskAgent add(organization, poolId, apiVersion, body)



Adds an agent to a pool.  You probably don't want to call this endpoint directly. Instead, [configure an agent](https://docs.microsoft.com/azure/devops/pipelines/agents/agents) using the agent download package.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AgentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var poolId = 56; // int | The agent pool in which to add the agent
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TaskAgent(); // TaskAgent | Details about the agent being added

try { 
    var result = api_instance.add(organization, poolId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling AgentsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **poolId** | **int**| The agent pool in which to add the agent | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TaskAgent**](TaskAgent.md)| Details about the agent being added | 

### Return type

[**TaskAgent**](TaskAgent.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> Object callGet(organization, agentGroupId, apiVersion, agentName)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = AgentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var agentGroupId = agentGroupId_example; // String | The agent group identifier
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var agentName = agentName_example; // String | Name of the static agent

try { 
    var result = api_instance.callGet(organization, agentGroupId, apiVersion, agentName);
    print(result);
} catch (e) {
    print("Exception when calling AgentsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **agentGroupId** | **String**| The agent group identifier | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **agentName** | **String**| Name of the static agent | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> TaskAgent callGet_0(organization, poolId, agentId, apiVersion, includeCapabilities, includeAssignedRequest, includeLastCompletedRequest, propertyFilters)



Get information about an agent.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AgentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var poolId = 56; // int | The agent pool containing the agent
var agentId = 56; // int | The agent ID to get information about
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var includeCapabilities = true; // bool | Whether to include the agent's capabilities in the response
var includeAssignedRequest = true; // bool | Whether to include details about the agent's current work
var includeLastCompletedRequest = true; // bool | Whether to include details about the agents' most recent completed work
var propertyFilters = propertyFilters_example; // String | Filter which custom properties will be returned

try { 
    var result = api_instance.callGet_0(organization, poolId, agentId, apiVersion, includeCapabilities, includeAssignedRequest, includeLastCompletedRequest, propertyFilters);
    print(result);
} catch (e) {
    print("Exception when calling AgentsApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **poolId** | **int**| The agent pool containing the agent | [default to null]
 **agentId** | **int**| The agent ID to get information about | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **includeCapabilities** | **bool**| Whether to include the agent&#39;s capabilities in the response | [optional] [default to null]
 **includeAssignedRequest** | **bool**| Whether to include details about the agent&#39;s current work | [optional] [default to null]
 **includeLastCompletedRequest** | **bool**| Whether to include details about the agents&#39; most recent completed work | [optional] [default to null]
 **propertyFilters** | **String**| Filter which custom properties will be returned | [optional] [default to null]

### Return type

[**TaskAgent**](TaskAgent.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> String delete(organization, agentGroupId, agentName, apiVersion)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = AgentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var agentGroupId = agentGroupId_example; // String | The agent group identifier
var agentName = agentName_example; // String | Name of the static agent
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.delete(organization, agentGroupId, agentName, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AgentsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **agentGroupId** | **String**| The agent group identifier | [default to null]
 **agentName** | **String**| Name of the static agent | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_0**
> delete_0(organization, poolId, agentId, apiVersion)



Delete an agent.  You probably don't want to call this endpoint directly. Instead, [use the agent configuration script](https://docs.microsoft.com/azure/devops/pipelines/agents/agents) to remove an agent from your organization.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AgentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var poolId = 56; // int | The pool ID to remove the agent from
var agentId = 56; // int | The agent ID to remove
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete_0(organization, poolId, agentId, apiVersion);
} catch (e) {
    print("Exception when calling AgentsApi->delete_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **poolId** | **int**| The pool ID to remove the agent from | [default to null]
 **agentId** | **int**| The agent ID to remove | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TaskAgent> list(organization, poolId, apiVersion, agentName, includeCapabilities, includeAssignedRequest, includeLastCompletedRequest, propertyFilters, demands)



Get a list of agents.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AgentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var poolId = 56; // int | The agent pool containing the agents
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var agentName = agentName_example; // String | Filter on agent name
var includeCapabilities = true; // bool | Whether to include the agents' capabilities in the response
var includeAssignedRequest = true; // bool | Whether to include details about the agents' current work
var includeLastCompletedRequest = true; // bool | Whether to include details about the agents' most recent completed work
var propertyFilters = propertyFilters_example; // String | Filter which custom properties will be returned
var demands = demands_example; // String | Filter by demands the agents can satisfy

try { 
    var result = api_instance.list(organization, poolId, apiVersion, agentName, includeCapabilities, includeAssignedRequest, includeLastCompletedRequest, propertyFilters, demands);
    print(result);
} catch (e) {
    print("Exception when calling AgentsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **poolId** | **int**| The agent pool containing the agents | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **agentName** | **String**| Filter on agent name | [optional] [default to null]
 **includeCapabilities** | **bool**| Whether to include the agents&#39; capabilities in the response | [optional] [default to null]
 **includeAssignedRequest** | **bool**| Whether to include details about the agents&#39; current work | [optional] [default to null]
 **includeLastCompletedRequest** | **bool**| Whether to include details about the agents&#39; most recent completed work | [optional] [default to null]
 **propertyFilters** | **String**| Filter which custom properties will be returned | [optional] [default to null]
 **demands** | **String**| Filter by demands the agents can satisfy | [optional] [default to null]

### Return type

[**List<TaskAgent>**](TaskAgent.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replace Agent**
> TaskAgent replace Agent(organization, poolId, agentId, apiVersion, body)



Replace an agent.  You probably don't want to call this endpoint directly. Instead, [use the agent configuration script](https://docs.microsoft.com/azure/devops/pipelines/agents/agents) to remove and reconfigure an agent from your organization.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AgentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var poolId = 56; // int | The agent pool to use
var agentId = 56; // int | The agent to replace
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TaskAgent(); // TaskAgent | Updated details about the replacing agent

try { 
    var result = api_instance.replace Agent(organization, poolId, agentId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling AgentsApi->replace Agent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **poolId** | **int**| The agent pool to use | [default to null]
 **agentId** | **int**| The agent to replace | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TaskAgent**](TaskAgent.md)| Updated details about the replacing agent | 

### Return type

[**TaskAgent**](TaskAgent.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> TaskAgent update(organization, poolId, agentId, apiVersion, body)



Update agent details.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AgentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var poolId = 56; // int | The agent pool to use
var agentId = 56; // int | The agent to update
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TaskAgent(); // TaskAgent | Updated details about the agent

try { 
    var result = api_instance.update(organization, poolId, agentId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling AgentsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **poolId** | **int**| The agent pool to use | [default to null]
 **agentId** | **int**| The agent to update | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TaskAgent**](TaskAgent.md)| Updated details about the agent | 

### Return type

[**TaskAgent**](TaskAgent.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

