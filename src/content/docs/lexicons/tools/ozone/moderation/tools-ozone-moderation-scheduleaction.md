---
title: tools.ozone.moderation.scheduleAction
description: Reference for the tools.ozone.moderation.scheduleAction lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Schedule a moderation action to be executed at a future time

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `action` | Union of:<br/>&nbsp;&nbsp;[`#takedown`](#takedown) | ✅  |  |  |
| `subjects` | Array of `string` | ✅  | Array of DID subjects to schedule the action for | Max Items: 100 |
| `createdBy` | `string` | ✅  |  | Format: `did` |
| `scheduling` | [`#schedulingConfig`](#schedulingconfig) | ✅  |  |  |
| `modTool` | [`tools.ozone.moderation.defs#modTool`](/tools/ozone/moderation/defs#modTool) | ❌  | This will be propagated to the moderation event when it is applied |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`#scheduledActionResults`](#scheduledactionresults)



---

<a name="takedown"></a>
### `takedown`

**Type:** `object`

Schedule a takedown action

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `durationInHours` | `integer` | ❌  | Indicates how long the takedown should be in effect before automatically expiring. |  |
| `acknowledgeAccountSubjects` | `boolean` | ❌  | If true, all other reports on content authored by this account will be resolved (acknowledged). |  |
| `policies` | Array of `string` | ❌  | Names/Keywords of the policies that drove the decision. | Max Items: 5 |

---

<a name="schedulingconfig"></a>
### `schedulingConfig`

**Type:** `object`

Configuration for when the action should be executed

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `executeAt` | `string` | ❌  | Exact time to execute the action | Format: `datetime` |
| `executeAfter` | `string` | ❌  | Earliest time to execute the action (for randomized scheduling) | Format: `datetime` |
| `executeUntil` | `string` | ❌  | Latest time to execute the action (for randomized scheduling) | Format: `datetime` |

---

<a name="scheduledactionresults"></a>
### `scheduledActionResults`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `succeeded` | Array of `string` | ✅  |  |  |
| `failed` | Array of [`#failedScheduling`](#failedscheduling) | ✅  |  |  |

---

<a name="failedscheduling"></a>
### `failedScheduling`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | `string` | ✅  |  | Format: `did` |
| `error` | `string` | ✅  |  |  |
| `errorCode` | `string` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.scheduleAction",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Schedule a moderation action to be executed at a future time",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "action",
            "subjects",
            "createdBy",
            "scheduling"
          ],
          "properties": {
            "action": {
              "type": "union",
              "refs": [
                "#takedown"
              ]
            },
            "subjects": {
              "type": "array",
              "maxLength": 100,
              "items": {
                "type": "string",
                "format": "did"
              },
              "description": "Array of DID subjects to schedule the action for"
            },
            "createdBy": {
              "type": "string",
              "format": "did"
            },
            "scheduling": {
              "type": "ref",
              "ref": "#schedulingConfig"
            },
            "modTool": {
              "type": "ref",
              "ref": "tools.ozone.moderation.defs#modTool",
              "description": "This will be propagated to the moderation event when it is applied"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "#scheduledActionResults"
        }
      }
    },
    "takedown": {
      "type": "object",
      "description": "Schedule a takedown action",
      "properties": {
        "comment": {
          "type": "string"
        },
        "durationInHours": {
          "type": "integer",
          "description": "Indicates how long the takedown should be in effect before automatically expiring."
        },
        "acknowledgeAccountSubjects": {
          "type": "boolean",
          "description": "If true, all other reports on content authored by this account will be resolved (acknowledged)."
        },
        "policies": {
          "type": "array",
          "maxLength": 5,
          "items": {
            "type": "string"
          },
          "description": "Names/Keywords of the policies that drove the decision."
        }
      }
    },
    "schedulingConfig": {
      "type": "object",
      "description": "Configuration for when the action should be executed",
      "properties": {
        "executeAt": {
          "type": "string",
          "format": "datetime",
          "description": "Exact time to execute the action"
        },
        "executeAfter": {
          "type": "string",
          "format": "datetime",
          "description": "Earliest time to execute the action (for randomized scheduling)"
        },
        "executeUntil": {
          "type": "string",
          "format": "datetime",
          "description": "Latest time to execute the action (for randomized scheduling)"
        }
      }
    },
    "scheduledActionResults": {
      "type": "object",
      "required": [
        "succeeded",
        "failed"
      ],
      "properties": {
        "succeeded": {
          "type": "array",
          "items": {
            "type": "string",
            "format": "did"
          }
        },
        "failed": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#failedScheduling"
          }
        }
      }
    },
    "failedScheduling": {
      "type": "object",
      "required": [
        "subject",
        "error"
      ],
      "properties": {
        "subject": {
          "type": "string",
          "format": "did"
        },
        "error": {
          "type": "string"
        },
        "errorCode": {
          "type": "string"
        }
      }
    }
  }
}
```
