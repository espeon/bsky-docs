---
title: tools.ozone.moderation.listScheduledActions
description: Reference for the tools.ozone.moderation.listScheduledActions lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

List scheduled moderation actions with optional filtering

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `startsAfter` | `string` | ❌  | Filter actions scheduled to execute after this time | Format: `datetime` |
| `endsBefore` | `string` | ❌  | Filter actions scheduled to execute before this time | Format: `datetime` |
| `subjects` | Array of `string` | ❌  | Filter actions for specific DID subjects | Max Items: 100 |
| `statuses` | Array of `string` | ✅  | Filter actions by status | Min Items: 1 |
| `limit` | `integer` | ❌  | Maximum number of results to return | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  | Cursor for pagination |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actions` | Array of [`tools.ozone.moderation.defs#scheduledActionView`](/lexicons/tools/ozone/moderation/defs#scheduledActionView) | ✅  |  |  |
| `cursor` | `string` | ❌  | Cursor for next page of results |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.listScheduledActions",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "List scheduled moderation actions with optional filtering",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "statuses"
          ],
          "properties": {
            "startsAfter": {
              "type": "string",
              "format": "datetime",
              "description": "Filter actions scheduled to execute after this time"
            },
            "endsBefore": {
              "type": "string",
              "format": "datetime",
              "description": "Filter actions scheduled to execute before this time"
            },
            "subjects": {
              "type": "array",
              "maxLength": 100,
              "items": {
                "type": "string",
                "format": "did"
              },
              "description": "Filter actions for specific DID subjects"
            },
            "statuses": {
              "type": "array",
              "minLength": 1,
              "items": {
                "type": "string",
                "knownValues": [
                  "pending",
                  "executed",
                  "cancelled",
                  "failed"
                ]
              },
              "description": "Filter actions by status"
            },
            "limit": {
              "type": "integer",
              "minimum": 1,
              "maximum": 100,
              "default": 50,
              "description": "Maximum number of results to return"
            },
            "cursor": {
              "type": "string",
              "description": "Cursor for pagination"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "actions"
          ],
          "properties": {
            "actions": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.moderation.defs#scheduledActionView"
              }
            },
            "cursor": {
              "type": "string",
              "description": "Cursor for next page of results"
            }
          }
        }
      }
    }
  }
}
```
