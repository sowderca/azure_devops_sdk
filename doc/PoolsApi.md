# azure_devops_sdk.api.PoolsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](PoolsApi.md#add) | **POST** /{organization}/_apis/distributedtask/pools | 
[**callGet**](PoolsApi.md#callGet) | **GET** /{organization}/_apis/distributedtask/pools/{poolId} | 
[**delete**](PoolsApi.md#delete) | **DELETE** /{organization}/_apis/distributedtask/pools/{poolId} | 
[**get Agent Pools By Ids**](PoolsApi.md#get Agent Pools By Ids) | **GET** /{organization}/_apis/distributedtask/pools | 
[**update**](PoolsApi.md#update) | **PATCH** /{organization}/_apis/distributedtask/pools/{poolId} | 


# **add**
> TaskAgentPool add(organization, apiVersion, body)



Create an agent pool.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PoolsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TaskAgentPool(); // TaskAgentPool | Details about the new agent pool

try { 
    var result = api_instance.add(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PoolsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TaskAgentPool**](TaskAgentPool.md)| Details about the new agent pool | 

### Return type

[**TaskAgentPool**](TaskAgentPool.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> TaskAgentPool callGet(organization, poolId, apiVersion, properties, actionFilter)



Get information about an agent pool.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PoolsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var poolId = 56; // int | An agent pool ID
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var properties = properties_example; // String | Agent pool properties (comma-separated)
var actionFilter = actionFilter_example; // String | Filter by whether the calling user has use or manage permissions

try { 
    var result = api_instance.callGet(organization, poolId, apiVersion, properties, actionFilter);
    print(result);
} catch (e) {
    print("Exception when calling PoolsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **poolId** | **int**| An agent pool ID | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **properties** | **String**| Agent pool properties (comma-separated) | [optional] [default to null]
 **actionFilter** | **String**| Filter by whether the calling user has use or manage permissions | [optional] [default to null]

### Return type

[**TaskAgentPool**](TaskAgentPool.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, poolId, apiVersion)



Delete an agent pool.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PoolsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var poolId = 56; // int | ID of the agent pool to delete
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, poolId, apiVersion);
} catch (e) {
    print("Exception when calling PoolsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **poolId** | **int**| ID of the agent pool to delete | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Agent Pools By Ids**
> List<TaskAgentPool> get Agent Pools By Ids(organization, poolIds, apiVersion, actionFilter)



Get a list of agent pools.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PoolsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var poolIds = poolIds_example; // String | pool Ids to fetch
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var actionFilter = actionFilter_example; // String | Filter by whether the calling user has use or manage permissions

try { 
    var result = api_instance.get Agent Pools By Ids(organization, poolIds, apiVersion, actionFilter);
    print(result);
} catch (e) {
    print("Exception when calling PoolsApi->get Agent Pools By Ids: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **poolIds** | **String**| pool Ids to fetch | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **actionFilter** | **String**| Filter by whether the calling user has use or manage permissions | [optional] [default to null]

### Return type

[**List<TaskAgentPool>**](TaskAgentPool.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> TaskAgentPool update(organization, poolId, apiVersion, body)



Update properties on an agent pool

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PoolsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var poolId = 56; // int | The agent pool to update
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TaskAgentPool(); // TaskAgentPool | Updated agent pool details

try { 
    var result = api_instance.update(organization, poolId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling PoolsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **poolId** | **int**| The agent pool to update | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TaskAgentPool**](TaskAgentPool.md)| Updated agent pool details | 

### Return type

[**TaskAgentPool**](TaskAgentPool.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

