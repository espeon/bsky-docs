---
title: com.atproto.repo.getRecord
description: Reference for the com.atproto.repo.getRecord lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a single record from a repository. Does not require auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `repo` | `string` | ✅  | The handle or DID of the repo. | Format: `at-identifier` |
| `collection` | `string` | ✅  | The NSID of the record collection. | Format: `nsid` |
| `rkey` | `string` | ✅  | The Record Key. | Format: `record-key` |
| `cid` | `string` | ❌  | The CID of the version of the record. If not specified, then return the most recent version. | Format: `cid` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ❌  |  | Format: `cid` |
| `value` | `unknown` | ✅  |  |  |
**Possible Errors:**

- `RecordNotFound`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.getRecord",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a single record from a repository. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": [
          "repo",
          "collection",
          "rkey"
        ],
        "properties": {
          "repo": {
            "type": "string",
            "format": "at-identifier",
            "description": "The handle or DID of the repo."
          },
          "collection": {
            "type": "string",
            "format": "nsid",
            "description": "The NSID of the record collection."
          },
          "rkey": {
            "type": "string",
            "description": "The Record Key.",
            "format": "record-key"
          },
          "cid": {
            "type": "string",
            "format": "cid",
            "description": "The CID of the version of the record. If not specified, then return the most recent version."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "uri",
            "value"
          ],
          "properties": {
            "uri": {
              "type": "string",
              "format": "at-uri"
            },
            "cid": {
              "type": "string",
              "format": "cid"
            },
            "value": {
              "type": "unknown"
            }
          }
        }
      },
      "errors": [
        {
          "name": "RecordNotFound"
        }
      ]
    }
  }
}
```
