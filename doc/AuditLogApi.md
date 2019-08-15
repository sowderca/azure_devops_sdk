# azure_devops_sdk.api.AuditLogApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**query**](AuditLogApi.md#query) | **GET** /{organization}/_apis/audit/auditlog | 


# **query**
> AuditLogQueryResult query(organization, apiVersion, startTime, endTime, batchSize, continuationToken, skipAggregation)



Queries audit log entries

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = AuditLogApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var startTime = 2013-10-20T19:20:30+01:00; // DateTime | Start time of download window. Optional
var endTime = 2013-10-20T19:20:30+01:00; // DateTime | End time of download window. Optional
var batchSize = 56; // int | Max number of results to return. Optional
var continuationToken = continuationToken_example; // String | Token used for returning next set of results from previous query. Optional
var skipAggregation = true; // bool | Skips aggregating events and leaves them as individual entries instead. By default events are aggregated. Event types that are aggregated: AuditLog.AccessLog.

try { 
    var result = api_instance.query(organization, apiVersion, startTime, endTime, batchSize, continuationToken, skipAggregation);
    print(result);
} catch (e) {
    print("Exception when calling AuditLogApi->query: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **startTime** | **DateTime**| Start time of download window. Optional | [optional] [default to null]
 **endTime** | **DateTime**| End time of download window. Optional | [optional] [default to null]
 **batchSize** | **int**| Max number of results to return. Optional | [optional] [default to null]
 **continuationToken** | **String**| Token used for returning next set of results from previous query. Optional | [optional] [default to null]
 **skipAggregation** | **bool**| Skips aggregating events and leaves them as individual entries instead. By default events are aggregated. Event types that are aggregated: AuditLog.AccessLog. | [optional] [default to null]

### Return type

[**AuditLogQueryResult**](AuditLogQueryResult.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

