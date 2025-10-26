---
title: com.atproto.temp.revokeAccountCredentials
description: Reference for the com.atproto.temp.revokeAccountCredentials lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Revoke sessions, password, and app passwords associated with account. May be resolved by a password reset.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `account` | `string` | ✅  |  | Format: `at-identifier` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.temp.revokeAccountCredentials",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Revoke sessions, password, and app passwords associated with account. May be resolved by a password reset.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "account"
          ],
          "properties": {
            "account": {
              "type": "string",
              "format": "at-identifier"
            }
          }
        }
      }
    }
  }
}
```
