---
title: com.atproto.temp.checkHandleAvailability
description: Reference for the com.atproto.temp.checkHandleAvailability lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Checks whether the provided handle is available. If the handle is not available, available suggestions will be returned. Optional inputs will be used to generate suggestions.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `handle` | `string` | ✅  | Tentative handle. Will be checked for availability or used to build handle suggestions. | Format: `handle` |
| `email` | `string` | ❌  | User-provided email. Might be used to build handle suggestions. |  |
| `birthDate` | `string` | ❌  | User-provided birth date. Might be used to build handle suggestions. | Format: `datetime` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `handle` | `string` | ✅  | Echo of the input handle. | Format: `handle` |
| `result` | Union of:<br/>&nbsp;&nbsp;[`#resultAvailable`](#resultavailable)<br/>&nbsp;&nbsp;[`#resultUnavailable`](#resultunavailable) | ✅  |  |  |
**Possible Errors:**

- `InvalidEmail`: An invalid email was provided.

---

<a name="resultavailable"></a>
### `resultAvailable`

**Type:** `object`

Indicates the provided handle is available.

**Properties:**

_(No properties defined)_

---

<a name="resultunavailable"></a>
### `resultUnavailable`

**Type:** `object`

Indicates the provided handle is unavailable and gives suggestions of available handles.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `suggestions` | Array of [`#suggestion`](#suggestion) | ✅  | List of suggested handles based on the provided inputs. |  |

---

<a name="suggestion"></a>
### `suggestion`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `handle` | `string` | ✅  |  | Format: `handle` |
| `method` | `string` | ✅  | Method used to build this suggestion. Should be considered opaque to clients. Can be used for metrics. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.temp.checkHandleAvailability",
  "defs": {
    "main": {
      "type": "query",
      "description": "Checks whether the provided handle is available. If the handle is not available, available suggestions will be returned. Optional inputs will be used to generate suggestions.",
      "parameters": {
        "type": "params",
        "required": [
          "handle"
        ],
        "properties": {
          "handle": {
            "type": "string",
            "format": "handle",
            "description": "Tentative handle. Will be checked for availability or used to build handle suggestions."
          },
          "email": {
            "type": "string",
            "description": "User-provided email. Might be used to build handle suggestions."
          },
          "birthDate": {
            "type": "string",
            "format": "datetime",
            "description": "User-provided birth date. Might be used to build handle suggestions."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "handle",
            "result"
          ],
          "properties": {
            "handle": {
              "type": "string",
              "format": "handle",
              "description": "Echo of the input handle."
            },
            "result": {
              "type": "union",
              "refs": [
                "#resultAvailable",
                "#resultUnavailable"
              ]
            }
          }
        }
      },
      "errors": [
        {
          "name": "InvalidEmail",
          "description": "An invalid email was provided."
        }
      ]
    },
    "resultAvailable": {
      "type": "object",
      "description": "Indicates the provided handle is available.",
      "properties": {}
    },
    "resultUnavailable": {
      "type": "object",
      "description": "Indicates the provided handle is unavailable and gives suggestions of available handles.",
      "required": [
        "suggestions"
      ],
      "properties": {
        "suggestions": {
          "type": "array",
          "description": "List of suggested handles based on the provided inputs.",
          "items": {
            "type": "ref",
            "ref": "#suggestion"
          }
        }
      }
    },
    "suggestion": {
      "type": "object",
      "required": [
        "handle",
        "method"
      ],
      "properties": {
        "handle": {
          "type": "string",
          "format": "handle"
        },
        "method": {
          "type": "string",
          "description": "Method used to build this suggestion. Should be considered opaque to clients. Can be used for metrics."
        }
      }
    }
  }
}
```
