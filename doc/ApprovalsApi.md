# azure_devops_sdk.api.ApprovalsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ApprovalsApi.md#list) | **GET** /{organization}/{project}/_apis/release/approvals | 
[**update**](ApprovalsApi.md#update) | **PATCH** /{organization}/{project}/_apis/release/approvals/{approvalId} | 


# **list**
> List<ReleaseApproval> list(organization, project, apiVersion, assignedToFilter, statusFilter, releaseIdsFilter, typeFilter, top, continuationToken, queryOrder, includeMyGroupApprovals)



Get a list of approvals

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ApprovalsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var assignedToFilter = assignedToFilter_example; // String | Approvals assigned to this user.
var statusFilter = statusFilter_example; // String | Approvals with this status. Default is 'pending'.
var releaseIdsFilter = releaseIdsFilter_example; // String | Approvals for release id(s) mentioned in the filter. Multiple releases can be mentioned by separating them with ',' e.g. releaseIdsFilter=1,2,3,4.
var typeFilter = typeFilter_example; // String | Approval with this type.
var top = 56; // int | Number of approvals to get. Default is 50.
var continuationToken = 56; // int | Gets the approvals after the continuation token provided.
var queryOrder = queryOrder_example; // String | Gets the results in the defined order of created approvals. Default is 'descending'.
var includeMyGroupApprovals = true; // bool | 'true' to include my group approvals. Default is 'false'.

try { 
    var result = api_instance.list(organization, project, apiVersion, assignedToFilter, statusFilter, releaseIdsFilter, typeFilter, top, continuationToken, queryOrder, includeMyGroupApprovals);
    print(result);
} catch (e) {
    print("Exception when calling ApprovalsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **assignedToFilter** | **String**| Approvals assigned to this user. | [optional] [default to null]
 **statusFilter** | **String**| Approvals with this status. Default is &#39;pending&#39;. | [optional] [default to null]
 **releaseIdsFilter** | **String**| Approvals for release id(s) mentioned in the filter. Multiple releases can be mentioned by separating them with &#39;,&#39; e.g. releaseIdsFilter&#x3D;1,2,3,4. | [optional] [default to null]
 **typeFilter** | **String**| Approval with this type. | [optional] [default to null]
 **top** | **int**| Number of approvals to get. Default is 50. | [optional] [default to null]
 **continuationToken** | **int**| Gets the approvals after the continuation token provided. | [optional] [default to null]
 **queryOrder** | **String**| Gets the results in the defined order of created approvals. Default is &#39;descending&#39;. | [optional] [default to null]
 **includeMyGroupApprovals** | **bool**| &#39;true&#39; to include my group approvals. Default is &#39;false&#39;. | [optional] [default to null]

### Return type

[**List<ReleaseApproval>**](ReleaseApproval.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> ReleaseApproval update(organization, project, approvalId, apiVersion, body)



Update status of an approval

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ApprovalsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var approvalId = 56; // int | Id of the approval.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = ReleaseApproval(); // ReleaseApproval | ReleaseApproval object having status, approver and comments.

try { 
    var result = api_instance.update(organization, project, approvalId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ApprovalsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **approvalId** | **int**| Id of the approval. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**ReleaseApproval**](ReleaseApproval.md)| ReleaseApproval object having status, approver and comments. | 

### Return type

[**ReleaseApproval**](ReleaseApproval.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

