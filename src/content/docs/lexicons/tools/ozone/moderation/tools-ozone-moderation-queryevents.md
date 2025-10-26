---
title: tools.ozone.moderation.queryEvents
description: Reference for the tools.ozone.moderation.queryEvents lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

List moderation events related to a subject.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `types` | Array of `string` | ❌  | The types of events (fully qualified string in the format of tools.ozone.moderation.defs#modEvent<name>) to filter by. If not specified, all events are returned. |  |
| `createdBy` | `string` | ❌  |  | Format: `did` |
| `sortDirection` | `string` | ❌  | Sort direction for the events. Defaults to descending order of created at timestamp. | Enum: `asc`, `desc`<br/>Default: `desc` |
| `createdAfter` | `string` | ❌  | Retrieve events created after a given timestamp | Format: `datetime` |
| `createdBefore` | `string` | ❌  | Retrieve events created before a given timestamp | Format: `datetime` |
| `subject` | `string` | ❌  |  | Format: `uri` |
| `collections` | Array of `string` | ❌  | If specified, only events where the subject belongs to the given collections will be returned. When subjectType is set to 'account', this will be ignored. | Max Items: 20 |
| `subjectType` | `string` | ❌  | If specified, only events where the subject is of the given type (account or record) will be returned. When this is set to 'account' the 'collections' parameter will be ignored. When includeAllUserRecords or subject is set, this will be ignored. | Known Values: `account`, `record` |
| `includeAllUserRecords` | `boolean` | ❌  | If true, events on all record types (posts, lists, profile etc.) or records from given 'collections' param, owned by the did are returned. | Default: `false` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `hasComment` | `boolean` | ❌  | If true, only events with comments are returned |  |
| `comment` | `string` | ❌  | If specified, only events with comments containing the keyword are returned. Apply || separator to use multiple keywords and match using OR condition. |  |
| `addedLabels` | Array of `string` | ❌  | If specified, only events where all of these labels were added are returned |  |
| `removedLabels` | Array of `string` | ❌  | If specified, only events where all of these labels were removed are returned |  |
| `addedTags` | Array of `string` | ❌  | If specified, only events where all of these tags were added are returned |  |
| `removedTags` | Array of `string` | ❌  | If specified, only events where all of these tags were removed are returned |  |
| `reportTypes` | Array of `string` | ❌  |  |  |
| `policies` | Array of `string` | ❌  |  |  |
| `modTool` | Array of `string` | ❌  | If specified, only events where the modTool name matches any of the given values are returned |  |
| `batchId` | `string` | ❌  | If specified, only events where the batchId matches the given value are returned |  |
| `ageAssuranceState` | `string` | ❌  | If specified, only events where the age assurance state matches the given value are returned | Known Values: `pending`, `assured`, `unknown`, `reset`, `blocked` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `events` | Array of [`tools.ozone.moderation.defs#modEventView`](/tools/ozone/moderation/defs#modEventView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.queryEvents",
  "defs": {
    "main": {
      "type": "query",
      "description": "List moderation events related to a subject.",
      "parameters": {
        "type": "params",
        "properties": {
          "types": {
            "type": "array",
            "items": {
              "type": "string"
            },
            "description": "The types of events (fully qualified string in the format of tools.ozone.moderation.defs#modEvent<name>) to filter by. If not specified, all events are returned."
          },
          "createdBy": {
            "type": "string",
            "format": "did"
          },
          "sortDirection": {
            "type": "string",
            "default": "desc",
            "enum": [
              "asc",
              "desc"
            ],
            "description": "Sort direction for the events. Defaults to descending order of created at timestamp."
          },
          "createdAfter": {
            "type": "string",
            "format": "datetime",
            "description": "Retrieve events created after a given timestamp"
          },
          "createdBefore": {
            "type": "string",
            "format": "datetime",
            "description": "Retrieve events created before a given timestamp"
          },
          "subject": {
            "type": "string",
            "format": "uri"
          },
          "collections": {
            "type": "array",
            "maxLength": 20,
            "description": "If specified, only events where the subject belongs to the given collections will be returned. When subjectType is set to 'account', this will be ignored.",
            "items": {
              "type": "string",
              "format": "nsid"
            }
          },
          "subjectType": {
            "type": "string",
            "description": "If specified, only events where the subject is of the given type (account or record) will be returned. When this is set to 'account' the 'collections' parameter will be ignored. When includeAllUserRecords or subject is set, this will be ignored.",
            "knownValues": [
              "account",
              "record"
            ]
          },
          "includeAllUserRecords": {
            "type": "boolean",
            "default": false,
            "description": "If true, events on all record types (posts, lists, profile etc.) or records from given 'collections' param, owned by the did are returned."
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          },
          "hasComment": {
            "type": "boolean",
            "description": "If true, only events with comments are returned"
          },
          "comment": {
            "type": "string",
            "description": "If specified, only events with comments containing the keyword are returned. Apply || separator to use multiple keywords and match using OR condition."
          },
          "addedLabels": {
            "type": "array",
            "items": {
              "type": "string"
            },
            "description": "If specified, only events where all of these labels were added are returned"
          },
          "removedLabels": {
            "type": "array",
            "items": {
              "type": "string"
            },
            "description": "If specified, only events where all of these labels were removed are returned"
          },
          "addedTags": {
            "type": "array",
            "items": {
              "type": "string"
            },
            "description": "If specified, only events where all of these tags were added are returned"
          },
          "removedTags": {
            "type": "array",
            "items": {
              "type": "string"
            },
            "description": "If specified, only events where all of these tags were removed are returned"
          },
          "reportTypes": {
            "type": "array",
            "items": {
              "type": "string"
            }
          },
          "policies": {
            "type": "array",
            "items": {
              "type": "string",
              "description": "If specified, only events where the action policies match any of the given policies are returned"
            }
          },
          "modTool": {
            "type": "array",
            "items": {
              "type": "string"
            },
            "description": "If specified, only events where the modTool name matches any of the given values are returned"
          },
          "batchId": {
            "type": "string",
            "description": "If specified, only events where the batchId matches the given value are returned"
          },
          "ageAssuranceState": {
            "type": "string",
            "description": "If specified, only events where the age assurance state matches the given value are returned",
            "knownValues": [
              "pending",
              "assured",
              "unknown",
              "reset",
              "blocked"
            ]
          },
          "cursor": {
            "type": "string"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "events"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "events": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.moderation.defs#modEventView"
              }
            }
          }
        }
      }
    }
  }
}
```
