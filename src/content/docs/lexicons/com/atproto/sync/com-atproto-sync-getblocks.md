---
title: com.atproto.sync.getBlocks
description: Reference for the com.atproto.sync.getBlocks lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get data blocks from a given repo, by CID. For example, intermediate MST nodes, or records. Does not require auth; implemented by PDS.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  | The DID of the repo. | Format: `did` |
| `cids` | Array of `string` | ✅  |  |  |
**Output:**

- **Encoding:** `application/vnd.ipld.car`
- **Schema:**

_Schema not defined._
**Possible Errors:**

- `BlockNotFound`
- `RepoNotFound`
- `RepoTakendown`
- `RepoSuspended`
- `RepoDeactivated`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.getBlocks",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get data blocks from a given repo, by CID. For example, intermediate MST nodes, or records. Does not require auth; implemented by PDS.",
      "parameters": {
        "type": "params",
        "required": [
          "did",
          "cids"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo."
          },
          "cids": {
            "type": "array",
            "items": {
              "type": "string",
              "format": "cid"
            }
          }
        }
      },
      "output": {
        "encoding": "application/vnd.ipld.car"
      },
      "errors": [
        {
          "name": "BlockNotFound"
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
