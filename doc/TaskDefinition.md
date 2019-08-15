# azure_devops_sdk.model.TaskDefinition

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agentExecution** | [**TaskExecution**](TaskExecution.md) |  | [optional] [default to null]
**author** | **String** |  | [optional] [default to null]
**category** | **String** |  | [optional] [default to null]
**contentsUploaded** | **bool** |  | [optional] [default to null]
**contributionIdentifier** | **String** |  | [optional] [default to null]
**contributionVersion** | **String** |  | [optional] [default to null]
**dataSourceBindings** | [**List&lt;DataSourceBinding&gt;**](DataSourceBinding.md) |  | [optional] [default to []]
**definitionType** | **String** |  | [optional] [default to null]
**demands** | [**List&lt;Demand&gt;**](Demand.md) |  | [optional] [default to []]
**deprecated** | **bool** |  | [optional] [default to null]
**description** | **String** |  | [optional] [default to null]
**disabled** | **bool** |  | [optional] [default to null]
**execution** | [**Map&lt;String, JObject&gt;**](JObject.md) |  | [optional] [default to {}]
**friendlyName** | **String** |  | [optional] [default to null]
**groups** | [**List&lt;TaskGroupDefinition&gt;**](TaskGroupDefinition.md) |  | [optional] [default to []]
**helpMarkDown** | **String** |  | [optional] [default to null]
**helpUrl** | **String** |  | [optional] [default to null]
**hostType** | **String** |  | [optional] [default to null]
**iconUrl** | **String** |  | [optional] [default to null]
**id** | **String** |  | [optional] [default to null]
**inputs** | [**List&lt;TaskInputDefinition&gt;**](TaskInputDefinition.md) |  | [optional] [default to []]
**instanceNameFormat** | **String** |  | [optional] [default to null]
**minimumAgentVersion** | **String** |  | [optional] [default to null]
**name** | **String** |  | [optional] [default to null]
**outputVariables** | [**List&lt;TaskOutputVariable&gt;**](TaskOutputVariable.md) |  | [optional] [default to []]
**packageLocation** | **String** |  | [optional] [default to null]
**packageType** | **String** |  | [optional] [default to null]
**postJobExecution** | [**Map&lt;String, JObject&gt;**](JObject.md) |  | [optional] [default to {}]
**preJobExecution** | [**Map&lt;String, JObject&gt;**](JObject.md) |  | [optional] [default to {}]
**preview** | **bool** |  | [optional] [default to null]
**releaseNotes** | **String** |  | [optional] [default to null]
**runsOn** | **List&lt;String&gt;** |  | [optional] [default to []]
**satisfies** | **List&lt;String&gt;** |  | [optional] [default to []]
**serverOwned** | **bool** |  | [optional] [default to null]
**showEnvironmentVariables** | **bool** |  | [optional] [default to null]
**sourceDefinitions** | [**List&lt;TaskSourceDefinition&gt;**](TaskSourceDefinition.md) |  | [optional] [default to []]
**sourceLocation** | **String** |  | [optional] [default to null]
**version** | [**TaskVersion**](TaskVersion.md) |  | [optional] [default to null]
**visibility** | **List&lt;String&gt;** |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


