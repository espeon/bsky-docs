---
title: tools.ozone.verification.listVerifications
description: Reference for the tools.ozone.verification.listVerifications lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

List verifications

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  | Pagination cursor |  |
| `limit` | `integer` | ❌  | Maximum number of results to return | Min: 1<br/>Max: 100<br/>Default: `50` |
| `createdAfter` | `string` | ❌  | Filter to verifications created after this timestamp | Format: `datetime` |
| `createdBefore` | `string` | ❌  | Filter to verifications created before this timestamp | Format: `datetime` |
| `issuers` | Array of `string` | ❌  | Filter to verifications from specific issuers | Max Items: 100 |
| `subjects` | Array of `string` | ❌  | Filter to specific verified DIDs | Max Items: 100 |
| `sortDirection` | `string` | ❌  | Sort direction for creation date | Enum: `asc`, `desc`<br/>Default: `desc` |
| `isRevoked` | `boolean` | ❌  | Filter to verifications that are revoked or not. By default, includes both. |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `verifications` | Array of [`tools.ozone.verification.defs#verificationView`](/tools/ozone/verification/defs#verificationView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.verification.listVerifications",
  "defs": {
    "main": {
      "type": "query",
      "description": "List verifications",
      "parameters": {
        "type": "params",
        "properties": {
          "cursor": {
            "type": "string",
            "description": "Pagination cursor"
          },
          "limit": {
            "type": "integer",
            "description": "Maximum number of results to return",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          },
          "createdAfter": {
            "type": "string",
            "format": "datetime",
            "description": "Filter to verifications created after this timestamp"
          },
          "createdBefore": {
            "type": "string",
            "format": "datetime",
            "description": "Filter to verifications created before this timestamp"
          },
          "issuers": {
            "type": "array",
            "maxLength": 100,
            "description": "Filter to verifications from specific issuers",
            "items": {
              "type": "string",
              "format": "did"
            }
          },
          "subjects": {
            "type": "array",
            "description": "Filter to specific verified DIDs",
            "maxLength": 100,
            "items": {
              "type": "string",
              "format": "did"
            }
          },
          "sortDirection": {
            "type": "string",
            "description": "Sort direction for creation date",
            "enum": [
              "asc",
              "desc"
            ],
            "default": "desc"
          },
          "isRevoked": {
            "type": "boolean",
            "description": "Filter to verifications that are revoked or not. By default, includes both."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "verifications"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "verifications": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.verification.defs#verificationView"
              }
            }
          }
        }
      }
    }
  }
}
```
