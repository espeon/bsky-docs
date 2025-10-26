---
title: com.atproto.server.requestEmailUpdate
description: Reference for the com.atproto.server.requestEmailUpdate lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Request a token in order to update email.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `tokenRequired` | `boolean` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.requestEmailUpdate",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Request a token in order to update email.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "tokenRequired"
          ],
          "properties": {
            "tokenRequired": {
              "type": "boolean"
            }
          }
        }
      }
    }
  }
}
```
