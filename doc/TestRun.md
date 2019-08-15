# azure_devops_sdk.model.TestRun

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**createdDate** | [**DateTime**](DateTime.md) | Gets the creation time of the test run | [optional] [default to null]
**deletedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**deletedDate** | [**DateTime**](DateTime.md) | Gets the deleted time of the test run | [optional] [default to null]
**finishedDate** | [**DateTime**](DateTime.md) | Gets the finish time of the test run | [optional] [default to null]
**id** | **String** | Gets the unique identifier for the test run definition. | [optional] [default to null]
**loadGenerationGeoLocations** | [**List&lt;LoadGenerationGeoLocation&gt;**](LoadGenerationGeoLocation.md) |  | [optional] [default to []]
**loadTestFileName** | **String** | Gets the load test file of the test run definition. | [optional] [default to null]
**name** | **String** | Gets the name of the test run definition. | [optional] [default to null]
**runNumber** | **int** | Gets the number of the test run (unique within a tenant) | [optional] [default to null]
**runSource** | **String** | Test run source like Ibiza,VSO,BuildVNext, etc. | [optional] [default to null]
**runSpecificDetails** | [**LoadTestRunDetails**](LoadTestRunDetails.md) |  | [optional] [default to null]
**runType** | **String** | Run type like VisualStudioLoadTest or JMeterLoadTest | [optional] [default to null]
**state** | **String** | State of the test run. | [optional] [default to null]
**url** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


