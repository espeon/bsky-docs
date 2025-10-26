---
title: tools.ozone.moderation.queryStatuses
description: Reference for the tools.ozone.moderation.queryStatuses lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

View moderation statuses of subjects (record or repo).

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `queueCount` | `integer` | ❌  | Number of queues being used by moderators. Subjects will be split among all queues. |  |
| `queueIndex` | `integer` | ❌  | Index of the queue to fetch subjects from. Works only when queueCount value is specified. |  |
| `queueSeed` | `string` | ❌  | A seeder to shuffle/balance the queue items. |  |
| `includeAllUserRecords` | `boolean` | ❌  | All subjects, or subjects from given 'collections' param, belonging to the account specified in the 'subject' param will be returned. |  |
| `subject` | `string` | ❌  | The subject to get the status for. | Format: `uri` |
| `comment` | `string` | ❌  | Search subjects by keyword from comments |  |
| `reportedAfter` | `string` | ❌  | Search subjects reported after a given timestamp | Format: `datetime` |
| `reportedBefore` | `string` | ❌  | Search subjects reported before a given timestamp | Format: `datetime` |
| `reviewedAfter` | `string` | ❌  | Search subjects reviewed after a given timestamp | Format: `datetime` |
| `hostingDeletedAfter` | `string` | ❌  | Search subjects where the associated record/account was deleted after a given timestamp | Format: `datetime` |
| `hostingDeletedBefore` | `string` | ❌  | Search subjects where the associated record/account was deleted before a given timestamp | Format: `datetime` |
| `hostingUpdatedAfter` | `string` | ❌  | Search subjects where the associated record/account was updated after a given timestamp | Format: `datetime` |
| `hostingUpdatedBefore` | `string` | ❌  | Search subjects where the associated record/account was updated before a given timestamp | Format: `datetime` |
| `hostingStatuses` | Array of `string` | ❌  | Search subjects by the status of the associated record/account |  |
| `reviewedBefore` | `string` | ❌  | Search subjects reviewed before a given timestamp | Format: `datetime` |
| `includeMuted` | `boolean` | ❌  | By default, we don't include muted subjects in the results. Set this to true to include them. |  |
| `onlyMuted` | `boolean` | ❌  | When set to true, only muted subjects and reporters will be returned. |  |
| `reviewState` | `string` | ❌  | Specify when fetching subjects in a certain state |  |
| `ignoreSubjects` | Array of `string` | ❌  |  |  |
| `lastReviewedBy` | `string` | ❌  | Get all subject statuses that were reviewed by a specific moderator | Format: `did` |
| `sortField` | `string` | ❌  |  | Enum: `lastReviewedAt`, `lastReportedAt`, `reportedRecordsCount`, `takendownRecordsCount`, `priorityScore`<br/>Default: `lastReportedAt` |
| `sortDirection` | `string` | ❌  |  | Enum: `asc`, `desc`<br/>Default: `desc` |
| `takendown` | `boolean` | ❌  | Get subjects that were taken down |  |
| `appealed` | `boolean` | ❌  | Get subjects in unresolved appealed status |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `tags` | Array of `string` | ❌  |  | Max Items: 25 |
| `excludeTags` | Array of `string` | ❌  |  |  |
| `cursor` | `string` | ❌  |  |  |
| `collections` | Array of `string` | ❌  | If specified, subjects belonging to the given collections will be returned. When subjectType is set to 'account', this will be ignored. | Max Items: 20 |
| `subjectType` | `string` | ❌  | If specified, subjects of the given type (account or record) will be returned. When this is set to 'account' the 'collections' parameter will be ignored. When includeAllUserRecords or subject is set, this will be ignored. | Known Values: `account`, `record` |
| `minAccountSuspendCount` | `integer` | ❌  | If specified, only subjects that belong to an account that has at least this many suspensions will be returned. |  |
| `minReportedRecordsCount` | `integer` | ❌  | If specified, only subjects that belong to an account that has at least this many reported records will be returned. |  |
| `minTakendownRecordsCount` | `integer` | ❌  | If specified, only subjects that belong to an account that has at least this many taken down records will be returned. |  |
| `minPriorityScore` | `integer` | ❌  | If specified, only subjects that have priority score value above the given value will be returned. | Min: 0<br/>Max: 100 |
| `ageAssuranceState` | `string` | ❌  | If specified, only subjects with the given age assurance state will be returned. | Known Values: `pending`, `assured`, `unknown`, `reset`, `blocked` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `subjectStatuses` | Array of [`tools.ozone.moderation.defs#subjectStatusView`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#subjectstatusview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.queryStatuses",
  "defs": {
    "main": {
      "type": "query",
      "description": "View moderation statuses of subjects (record or repo).",
      "parameters": {
        "type": "params",
        "properties": {
          "queueCount": {
            "type": "integer",
            "description": "Number of queues being used by moderators. Subjects will be split among all queues."
          },
          "queueIndex": {
            "type": "integer",
            "description": "Index of the queue to fetch subjects from. Works only when queueCount value is specified."
          },
          "queueSeed": {
            "type": "string",
            "description": "A seeder to shuffle/balance the queue items."
          },
          "includeAllUserRecords": {
            "type": "boolean",
            "description": "All subjects, or subjects from given 'collections' param, belonging to the account specified in the 'subject' param will be returned."
          },
          "subject": {
            "type": "string",
            "format": "uri",
            "description": "The subject to get the status for."
          },
          "comment": {
            "type": "string",
            "description": "Search subjects by keyword from comments"
          },
          "reportedAfter": {
            "type": "string",
            "format": "datetime",
            "description": "Search subjects reported after a given timestamp"
          },
          "reportedBefore": {
            "type": "string",
            "format": "datetime",
            "description": "Search subjects reported before a given timestamp"
          },
          "reviewedAfter": {
            "type": "string",
            "format": "datetime",
            "description": "Search subjects reviewed after a given timestamp"
          },
          "hostingDeletedAfter": {
            "type": "string",
            "format": "datetime",
            "description": "Search subjects where the associated record/account was deleted after a given timestamp"
          },
          "hostingDeletedBefore": {
            "type": "string",
            "format": "datetime",
            "description": "Search subjects where the associated record/account was deleted before a given timestamp"
          },
          "hostingUpdatedAfter": {
            "type": "string",
            "format": "datetime",
            "description": "Search subjects where the associated record/account was updated after a given timestamp"
          },
          "hostingUpdatedBefore": {
            "type": "string",
            "format": "datetime",
            "description": "Search subjects where the associated record/account was updated before a given timestamp"
          },
          "hostingStatuses": {
            "type": "array",
            "items": {
              "type": "string"
            },
            "description": "Search subjects by the status of the associated record/account"
          },
          "reviewedBefore": {
            "type": "string",
            "format": "datetime",
            "description": "Search subjects reviewed before a given timestamp"
          },
          "includeMuted": {
            "type": "boolean",
            "description": "By default, we don't include muted subjects in the results. Set this to true to include them."
          },
          "onlyMuted": {
            "type": "boolean",
            "description": "When set to true, only muted subjects and reporters will be returned."
          },
          "reviewState": {
            "type": "string",
            "description": "Specify when fetching subjects in a certain state"
          },
          "ignoreSubjects": {
            "type": "array",
            "items": {
              "type": "string",
              "format": "uri"
            }
          },
          "lastReviewedBy": {
            "type": "string",
            "format": "did",
            "description": "Get all subject statuses that were reviewed by a specific moderator"
          },
          "sortField": {
            "type": "string",
            "default": "lastReportedAt",
            "enum": [
              "lastReviewedAt",
              "lastReportedAt",
              "reportedRecordsCount",
              "takendownRecordsCount",
              "priorityScore"
            ]
          },
          "sortDirection": {
            "type": "string",
            "default": "desc",
            "enum": [
              "asc",
              "desc"
            ]
          },
          "takendown": {
            "type": "boolean",
            "description": "Get subjects that were taken down"
          },
          "appealed": {
            "type": "boolean",
            "description": "Get subjects in unresolved appealed status"
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          },
          "tags": {
            "type": "array",
            "maxLength": 25,
            "items": {
              "type": "string",
              "description": "Items in this array are applied with OR filters. To apply AND filter, put all tags in the same string and separate using && characters"
            }
          },
          "excludeTags": {
            "type": "array",
            "items": {
              "type": "string"
            }
          },
          "cursor": {
            "type": "string"
          },
          "collections": {
            "type": "array",
            "maxLength": 20,
            "description": "If specified, subjects belonging to the given collections will be returned. When subjectType is set to 'account', this will be ignored.",
            "items": {
              "type": "string",
              "format": "nsid"
            }
          },
          "subjectType": {
            "type": "string",
            "description": "If specified, subjects of the given type (account or record) will be returned. When this is set to 'account' the 'collections' parameter will be ignored. When includeAllUserRecords or subject is set, this will be ignored.",
            "knownValues": [
              "account",
              "record"
            ]
          },
          "minAccountSuspendCount": {
            "type": "integer",
            "description": "If specified, only subjects that belong to an account that has at least this many suspensions will be returned."
          },
          "minReportedRecordsCount": {
            "type": "integer",
            "description": "If specified, only subjects that belong to an account that has at least this many reported records will be returned."
          },
          "minTakendownRecordsCount": {
            "type": "integer",
            "description": "If specified, only subjects that belong to an account that has at least this many taken down records will be returned."
          },
          "minPriorityScore": {
            "minimum": 0,
            "maximum": 100,
            "type": "integer",
            "description": "If specified, only subjects that have priority score value above the given value will be returned."
          },
          "ageAssuranceState": {
            "type": "string",
            "description": "If specified, only subjects with the given age assurance state will be returned.",
            "knownValues": [
              "pending",
              "assured",
              "unknown",
              "reset",
              "blocked"
            ]
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "subjectStatuses"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "subjectStatuses": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.moderation.defs#subjectStatusView"
              }
            }
          }
        }
      }
    }
  }
}
```
