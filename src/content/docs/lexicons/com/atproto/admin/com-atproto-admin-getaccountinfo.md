---
title: com.atproto.admin.getAccountInfo
description: Reference for the com.atproto.admin.getAccountInfo lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get details about an account.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`com.atproto.admin.defs#accountView`](lexicons/com/atproto/admin/defs#accountView)



---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.getAccountInfo",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get details about an account.",
      "parameters": {
        "type": "params",
        "required": [
          "did"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "com.atproto.admin.defs#accountView"
        }
      }
    }
  }
}
```
