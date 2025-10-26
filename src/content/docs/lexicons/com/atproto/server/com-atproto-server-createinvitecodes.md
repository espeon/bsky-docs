---
title: com.atproto.server.createInviteCodes
description: Reference for the com.atproto.server.createInviteCodes lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Create invite codes.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `codeCount` | `integer` | ✅  |  | Default: `1` |
| `useCount` | `integer` | ✅  |  |  |
| `forAccounts` | Array of `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `codes` | Array of [`#accountCodes`](#accountcodes) | ✅  |  |  |

---

<a name="accountcodes"></a>
### `accountCodes`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `account` | `string` | ✅  |  |  |
| `codes` | Array of `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.createInviteCodes",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create invite codes.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "codeCount",
            "useCount"
          ],
          "properties": {
            "codeCount": {
              "type": "integer",
              "default": 1
            },
            "useCount": {
              "type": "integer"
            },
            "forAccounts": {
              "type": "array",
              "items": {
                "type": "string",
                "format": "did"
              }
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "codes"
          ],
          "properties": {
            "codes": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#accountCodes"
              }
            }
          }
        }
      }
    },
    "accountCodes": {
      "type": "object",
      "required": [
        "account",
        "codes"
      ],
      "properties": {
        "account": {
          "type": "string"
        },
        "codes": {
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
