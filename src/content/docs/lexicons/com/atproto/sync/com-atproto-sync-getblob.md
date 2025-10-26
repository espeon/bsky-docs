---
title: com.atproto.sync.getBlob
description: Reference for the com.atproto.sync.getBlob lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a blob associated with a given account. Returns the full blob as originally uploaded. Does not require auth; implemented by PDS.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  | The DID of the account. | Format: `did` |
| `cid` | `string` | ✅  | The CID of the blob to fetch | Format: `cid` |
**Output:**

- **Encoding:** `*/*`
- **Schema:**

_Schema not defined._
**Possible Errors:**

- `BlobNotFound`
- `RepoNotFound`
- `RepoTakendown`
- `RepoSuspended`
- `RepoDeactivated`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.getBlob",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a blob associated with a given account. Returns the full blob as originally uploaded. Does not require auth; implemented by PDS.",
      "parameters": {
        "type": "params",
        "required": [
          "did",
          "cid"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the account."
          },
          "cid": {
            "type": "string",
            "format": "cid",
            "description": "The CID of the blob to fetch"
          }
        }
      },
      "output": {
        "encoding": "*/*"
      },
      "errors": [
        {
          "name": "BlobNotFound"
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
