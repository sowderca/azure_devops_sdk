# azure_devops_sdk.api.AgentGroupsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](AgentGroupsApi.md#callGet) | **GET** /{organization}/_apis/clt/agentgroups/{agentGroupId} | 
[**create**](AgentGroupsApi.md#create) | **POST** /{organization}/_apis/clt/agentgroups | 


# **callGet**
> Object callGet(organization, agentGroupId, apiVersion, machineSetupInput, machineAccessData, outgoingRequestUrls, agentGroupName)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = AgentGroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var agentGroupId = agentGroupId_example; // String | The agent group identifier
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var machineSetupInput = true; // bool | 
var machineAccessData = true; // bool | 
var outgoingRequestUrls = true; // bool | 
var agentGroupName = agentGroupName_example; // String | Name of the agent group

try { 
    var result = api_instance.callGet(organization, agentGroupId, apiVersion, machineSetupInput, machineAccessData, outgoingRequestUrls, agentGroupName);
    print(result);
} catch (e) {
    print("Exception when calling AgentGroupsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **agentGroupId** | **String**| The agent group identifier | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **machineSetupInput** | **bool**|  | [optional] [default to null]
 **machineAccessData** | **bool**|  | [optional] [default to null]
 **outgoingRequestUrls** | **bool**|  | [optional] [default to null]
 **agentGroupName** | **String**| Name of the agent group | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> AgentGroup create(organization, apiVersion, body)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = AgentGroupsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = AgentGroup(); // AgentGroup | Agent group to be created

try { 
    var result = api_instance.create(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling AgentGroupsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**AgentGroup**](AgentGroup.md)| Agent group to be created | 

### Return type

[**AgentGroup**](AgentGroup.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

