---
title: com.atproto.admin.getAccountInfos
description: Reference for the com.atproto.admin.getAccountInfos lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get details about some accounts.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `dids` | Array of `string` | ✅  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `infos` | Array of [`com.atproto.admin.defs#accountView`](/com/atproto/admin/defs#accountView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.getAccountInfos",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get details about some accounts.",
      "parameters": {
        "type": "params",
        "required": [
          "dids"
        ],
        "properties": {
          "dids": {
            "type": "array",
            "items": {
              "type": "string",
              "format": "did"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "infos"
          ],
          "properties": {
            "infos": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "com.atproto.admin.defs#accountView"
              }
            }
          }
        }
      }
    }
  }
}
```
