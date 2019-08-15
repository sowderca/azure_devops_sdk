# azure_devops_sdk.model.TaskAgentJobRequest

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agentDelays** | [**List&lt;TaskAgentDelaySource&gt;**](TaskAgentDelaySource.md) |  | [optional] [default to []]
**agentSpecification** | [**JObject**](JObject.md) |  | [optional] [default to null]
**assignTime** | [**DateTime**](DateTime.md) | The date/time this request was assigned. | [optional] [default to null]
**data** | **Map&lt;String, String&gt;** | Additional data about the request. | [optional] [default to {}]
**definition** | [**TaskOrchestrationOwner**](TaskOrchestrationOwner.md) |  | [optional] [default to null]
**demands** | [**List&lt;Demand&gt;**](Demand.md) | A list of demands required to fulfill this request. | [optional] [default to []]
**expectedDuration** | **String** |  | [optional] [default to null]
**finishTime** | [**DateTime**](DateTime.md) | The date/time this request was finished. | [optional] [default to null]
**hostId** | **String** | The host which triggered this request. | [optional] [default to null]
**jobId** | **String** | ID of the job resulting from this request. | [optional] [default to null]
**jobName** | **String** | Name of the job resulting from this request. | [optional] [default to null]
**lockedUntil** | [**DateTime**](DateTime.md) | The deadline for the agent to renew the lock. | [optional] [default to null]
**matchedAgents** | [**List&lt;TaskAgentReference&gt;**](TaskAgentReference.md) |  | [optional] [default to []]
**matchesAllAgentsInPool** | **bool** |  | [optional] [default to null]
**orchestrationId** | **String** |  | [optional] [default to null]
**owner** | [**TaskOrchestrationOwner**](TaskOrchestrationOwner.md) |  | [optional] [default to null]
**planGroup** | **String** |  | [optional] [default to null]
**planId** | **String** | Internal ID for the orchestration plan connected with this request. | [optional] [default to null]
**planType** | **String** | Internal detail representing the type of orchestration plan. | [optional] [default to null]
**poolId** | **int** | The ID of the pool this request targets | [optional] [default to null]
**queueId** | **int** | The ID of the queue this request targets | [optional] [default to null]
**queueTime** | [**DateTime**](DateTime.md) | The date/time this request was queued. | [optional] [default to null]
**receiveTime** | [**DateTime**](DateTime.md) | The date/time this request was receieved by an agent. | [optional] [default to null]
**requestId** | **int** | ID of the request. | [optional] [default to null]
**reservedAgent** | [**TaskAgentReference**](TaskAgentReference.md) |  | [optional] [default to null]
**result** | **String** | The result of this request. | [optional] [default to null]
**scopeId** | **String** | Scope of the pipeline; matches the project ID. | [optional] [default to null]
**serviceOwner** | **String** | The service which owns this request. | [optional] [default to null]
**statusMessage** | **String** |  | [optional] [default to null]
**userDelayed** | **bool** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


