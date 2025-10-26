---
title: com.atproto.sync.getHead
description: Reference for the com.atproto.sync.getHead lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

DEPRECATED - please use com.atproto.sync.getLatestCommit instead

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  | The DID of the repo. | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `root` | `string` | ✅  |  | Format: `cid` |
**Possible Errors:**

- `HeadNotFound`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.getHead",
  "defs": {
    "main": {
      "type": "query",
      "description": "DEPRECATED - please use com.atproto.sync.getLatestCommit instead",
      "parameters": {
        "type": "params",
        "required": [
          "did"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "root"
          ],
          "properties": {
            "root": {
              "type": "string",
              "format": "cid"
            }
          }
        }
      },
      "errors": [
        {
          "name": "HeadNotFound"
        }
      ]
    }
  }
}
```
