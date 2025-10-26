---
title: com.atproto.admin.disableInviteCodes
description: Reference for the com.atproto.admin.disableInviteCodes lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Disable some set of codes and/or all codes associated with a set of users.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `codes` | Array of `string` | ❌  |  |  |
| `accounts` | Array of `string` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.disableInviteCodes",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Disable some set of codes and/or all codes associated with a set of users.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "codes": {
              "type": "array",
              "items": {
                "type": "string"
              }
            },
            "accounts": {
              "type": "array",
              "items": {
                "type": "string"
              }
            }
          }
        }
      }
    }
  }
}
```
