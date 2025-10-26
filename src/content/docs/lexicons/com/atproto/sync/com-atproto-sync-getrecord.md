---
title: com.atproto.sync.getRecord
description: Reference for the com.atproto.sync.getRecord lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get data blocks needed to prove the existence or non-existence of record in the current version of repo. Does not require auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  | The DID of the repo. | Format: `did` |
| `collection` | `string` | ✅  |  | Format: `nsid` |
| `rkey` | `string` | ✅  | Record Key | Format: `record-key` |
**Output:**

- **Encoding:** `application/vnd.ipld.car`
- **Schema:**

_Schema not defined._
**Possible Errors:**

- `RecordNotFound`
- `RepoNotFound`
- `RepoTakendown`
- `RepoSuspended`
- `RepoDeactivated`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.getRecord",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get data blocks needed to prove the existence or non-existence of record in the current version of repo. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": [
          "did",
          "collection",
          "rkey"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo."
          },
          "collection": {
            "type": "string",
            "format": "nsid"
          },
          "rkey": {
            "type": "string",
            "description": "Record Key",
            "format": "record-key"
          }
        }
      },
      "output": {
        "encoding": "application/vnd.ipld.car"
      },
      "errors": [
        {
          "name": "RecordNotFound"
        },
        {
          "name": "RepoNotFound"
        },
        {
          "name": "RepoTakendown"
        },
        {
          "name": "RepoSuspended"
        },
        {
          "name": "RepoDeactivated"
        }
      ]
    }
  }
}
```
