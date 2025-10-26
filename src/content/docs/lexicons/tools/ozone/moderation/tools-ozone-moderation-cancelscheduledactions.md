---
title: tools.ozone.moderation.cancelScheduledActions
description: Reference for the tools.ozone.moderation.cancelScheduledActions lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Cancel all pending scheduled moderation actions for specified subjects

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subjects` | Array of `string` | ✅  | Array of DID subjects to cancel scheduled actions for | Max Items: 100 |
| `comment` | `string` | ❌  | Optional comment describing the reason for cancellation |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`#cancellationResults`](#cancellationresults)



---

<a name="cancellationresults"></a>
### `cancellationResults`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `succeeded` | Array of `string` | ✅  | DIDs for which all pending scheduled actions were successfully cancelled |  |
| `failed` | Array of [`#failedCancellation`](#failedcancellation) | ✅  | DIDs for which cancellation failed with error details |  |

---

<a name="failedcancellation"></a>
### `failedCancellation`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `error` | `string` | ✅  |  |  |
| `errorCode` | `string` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.cancelScheduledActions",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Cancel all pending scheduled moderation actions for specified subjects",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "subjects"
          ],
          "properties": {
            "subjects": {
              "type": "array",
              "maxLength": 100,
              "items": {
                "type": "string",
                "format": "did"
              },
              "description": "Array of DID subjects to cancel scheduled actions for"
            },
            "comment": {
              "type": "string",
              "description": "Optional comment describing the reason for cancellation"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "#cancellationResults"
        }
      }
    },
    "cancellationResults": {
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
          },
          "description": "DIDs for which all pending scheduled actions were successfully cancelled"
        },
        "failed": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#failedCancellation"
          },
          "description": "DIDs for which cancellation failed with error details"
        }
      }
    },
    "failedCancellation": {
      "type": "object",
      "required": [
        "did",
        "error"
      ],
      "properties": {
        "did": {
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
