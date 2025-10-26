---
title: com.atproto.server.requestPasswordReset
description: Reference for the com.atproto.server.requestPasswordReset lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Initiate a user account password reset via email.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `email` | `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.requestPasswordReset",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Initiate a user account password reset via email.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "email"
          ],
          "properties": {
            "email": {
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```
