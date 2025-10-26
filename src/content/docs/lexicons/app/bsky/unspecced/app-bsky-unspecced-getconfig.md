---
title: app.bsky.unspecced.getConfig
description: Reference for the app.bsky.unspecced.getConfig lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get miscellaneous runtime configuration.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `checkEmailConfirmed` | `boolean` | ❌  |  |  |
| `liveNow` | Array of [`#liveNowConfig`](#livenowconfig) | ❌  |  |  |

---

<a name="livenowconfig"></a>
### `liveNowConfig`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `domains` | Array of `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getConfig",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get miscellaneous runtime configuration.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [],
          "properties": {
            "checkEmailConfirmed": {
              "type": "boolean"
            },
            "liveNow": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#liveNowConfig"
              }
            }
          }
        }
      }
    },
    "liveNowConfig": {
      "type": "object",
      "required": [
        "did",
        "domains"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "domains": {
          "type": "array",
          "items": {
            "type": "string"
          }
        }
      }
    }
  }
}
```
