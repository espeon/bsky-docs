---
title: tools.ozone.signature.findRelatedAccounts
description: Reference for the tools.ozone.signature.findRelatedAccounts lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get accounts that share some matching threat signatures with the root account.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `cursor` | `string` | ❌  |  |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `accounts` | Array of [`#relatedAccount`](#relatedaccount) | ✅  |  |  |

---

<a name="relatedaccount"></a>
### `relatedAccount`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `account` | [`com.atproto.admin.defs#accountView`](/com/atproto/admin/defs#accountView) | ✅  |  |  |
| `similarities` | Array of [`tools.ozone.signature.defs#sigDetail`](/tools/ozone/signature/defs#sigDetail) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.signature.findRelatedAccounts",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get accounts that share some matching threat signatures with the root account.",
      "parameters": {
        "type": "params",
        "required": [
          "did"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did"
          },
          "cursor": {
            "type": "string"
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "accounts"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "accounts": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#relatedAccount"
              }
            }
          }
        }
      }
    },
    "relatedAccount": {
      "type": "object",
      "required": [
        "account"
      ],
      "properties": {
        "account": {
          "type": "ref",
          "ref": "com.atproto.admin.defs#accountView"
        },
        "similarities": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "tools.ozone.signature.defs#sigDetail"
          }
        }
      }
    }
  }
}
```
