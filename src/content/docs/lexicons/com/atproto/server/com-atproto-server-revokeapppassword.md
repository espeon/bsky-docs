---
title: com.atproto.server.revokeAppPassword
description: Reference for the com.atproto.server.revokeAppPassword lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Revoke an App Password by name.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.revokeAppPassword",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Revoke an App Password by name.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "name"
          ],
          "properties": {
            "name": {
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```
