# azure_devops_sdk.api.DeliverytimelineApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](DeliverytimelineApi.md#callGet) | **GET** /{organization}/{project}/_apis/work/plans/{id}/deliverytimeline | 


# **callGet**
> DeliveryViewData callGet(organization, project, id, apiVersion, revision, startDate, endDate)



Get Delivery View Data

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = DeliverytimelineApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var id = id_example; // String | Identifier for delivery view
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var revision = 56; // int | Revision of the plan for which you want data. If the current plan is a different revision you will get an ViewRevisionMismatchException exception. If you do not supply a revision you will get data for the latest revision.
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeline
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeline

try { 
    var result = api_instance.callGet(organization, project, id, apiVersion, revision, startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling DeliverytimelineApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **id** | **String**| Identifier for delivery view | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **revision** | **int**| Revision of the plan for which you want data. If the current plan is a different revision you will get an ViewRevisionMismatchException exception. If you do not supply a revision you will get data for the latest revision. | [optional] [default to null]
 **startDate** | **DateTime**| The start date of timeline | [optional] [default to null]
 **endDate** | **DateTime**| The end date of timeline | [optional] [default to null]

### Return type

[**DeliveryViewData**](DeliveryViewData.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

