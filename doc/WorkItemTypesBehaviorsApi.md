# azure_devops_sdk.api.WorkItemTypesBehaviorsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](WorkItemTypesBehaviorsApi.md#add) | **POST** /{organization}/_apis/work/processes/{processId}/workitemtypesbehaviors/{witRefNameForBehaviors}/behaviors | 
[**callGet**](WorkItemTypesBehaviorsApi.md#callGet) | **GET** /{organization}/_apis/work/processes/{processId}/workitemtypesbehaviors/{witRefNameForBehaviors}/behaviors/{behaviorRefName} | 
[**list**](WorkItemTypesBehaviorsApi.md#list) | **GET** /{organization}/_apis/work/processes/{processId}/workitemtypesbehaviors/{witRefNameForBehaviors}/behaviors | 
[**remove Behavior From Work Item Type**](WorkItemTypesBehaviorsApi.md#remove Behavior From Work Item Type) | **DELETE** /{organization}/_apis/work/processes/{processId}/workitemtypesbehaviors/{witRefNameForBehaviors}/behaviors/{behaviorRefName} | 
[**update**](WorkItemTypesBehaviorsApi.md#update) | **PATCH** /{organization}/_apis/work/processes/{processId}/workitemtypesbehaviors/{witRefNameForBehaviors}/behaviors | 


# **add**
> WorkItemTypeBehavior add(organization, processId, witRefNameForBehaviors, apiVersion, body)



Adds a behavior to the work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesBehaviorsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefNameForBehaviors = witRefNameForBehaviors_example; // String | Work item type reference name for the behavior
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = WorkItemTypeBehavior(); // WorkItemTypeBehavior | 

try { 
    var result = api_instance.add(organization, processId, witRefNameForBehaviors, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesBehaviorsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefNameForBehaviors** | **String**| Work item type reference name for the behavior | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**WorkItemTypeBehavior**](WorkItemTypeBehavior.md)|  | 

### Return type

[**WorkItemTypeBehavior**](WorkItemTypeBehavior.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> WorkItemTypeBehavior callGet(organization, processId, witRefNameForBehaviors, behaviorRefName, apiVersion)



Returns a behavior for the work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesBehaviorsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefNameForBehaviors = witRefNameForBehaviors_example; // String | Work item type reference name for the behavior
var behaviorRefName = behaviorRefName_example; // String | The reference name of the behavior
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, processId, witRefNameForBehaviors, behaviorRefName, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesBehaviorsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefNameForBehaviors** | **String**| Work item type reference name for the behavior | [default to null]
 **behaviorRefName** | **String**| The reference name of the behavior | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**WorkItemTypeBehavior**](WorkItemTypeBehavior.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<WorkItemTypeBehavior> list(organization, processId, witRefNameForBehaviors, apiVersion)



Returns a list of all behaviors for the work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesBehaviorsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefNameForBehaviors = witRefNameForBehaviors_example; // String | Work item type reference name for the behavior
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, processId, witRefNameForBehaviors, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesBehaviorsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefNameForBehaviors** | **String**| Work item type reference name for the behavior | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<WorkItemTypeBehavior>**](WorkItemTypeBehavior.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove Behavior From Work Item Type**
> remove Behavior From Work Item Type(organization, processId, witRefNameForBehaviors, behaviorRefName, apiVersion)



Removes a behavior for the work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesBehaviorsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefNameForBehaviors = witRefNameForBehaviors_example; // String | Work item type reference name for the behavior
var behaviorRefName = behaviorRefName_example; // String | The reference name of the behavior
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.remove Behavior From Work Item Type(organization, processId, witRefNameForBehaviors, behaviorRefName, apiVersion);
} catch (e) {
    print("Exception when calling WorkItemTypesBehaviorsApi->remove Behavior From Work Item Type: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefNameForBehaviors** | **String**| Work item type reference name for the behavior | [default to null]
 **behaviorRefName** | **String**| The reference name of the behavior | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> WorkItemTypeBehavior update(organization, processId, witRefNameForBehaviors, apiVersion, body)



Updates a behavior for the work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemTypesBehaviorsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefNameForBehaviors = witRefNameForBehaviors_example; // String | Work item type reference name for the behavior
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = WorkItemTypeBehavior(); // WorkItemTypeBehavior | 

try { 
    var result = api_instance.update(organization, processId, witRefNameForBehaviors, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemTypesBehaviorsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefNameForBehaviors** | **String**| Work item type reference name for the behavior | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**WorkItemTypeBehavior**](WorkItemTypeBehavior.md)|  | 

### Return type

[**WorkItemTypeBehavior**](WorkItemTypeBehavior.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

